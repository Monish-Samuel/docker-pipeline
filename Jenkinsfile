pipeline{

    agent any

    environment{
        registry= "975072647018.dkr.ecr.us-east-2.amazonaws.com/docker-repo"
        registryCredential='aws-credentials'
        dockerImage=""
    }

    stages{
        stage('Compiling Stage'){
            steps{
                bat 'python Alphabet.py'
            }
        }

        stage('Testing Stage'){
            steps{
                bat 'python test_Alphabet.py'
            }
        }

        stage('Docker Build'){
            steps{
                script{
                    dockerImage=docker.build registry
                    docker.build('docker-repo')
                }
            }
        }

        stage('Upload Image to ECR') {
            steps{
                script{
                    docker.withRegistry( 'https://975072647018.dkr.ecr.us-east-2.amazonaws.com', "ecr:us-east-2:$registryCredential" ){
                        docker.image("docker-repo").push('latest')
                    }
                }
            }
        }

        stage('stop previous containers') {
            steps{
                bat 'docker ps -f name=mypythonContainer -q | xargs --no-run-if-empty docker container stop'
                bat 'docker container ls -a -fname=mypythonContainer -q | xargs -r docker container rm'
            }
        }

        stage('Docker Run') {
            steps{
                script {
                    dockerImage.run("-p 8096:5000 --rm --name mypythonContainer")
                }
            }
        }
    }
}