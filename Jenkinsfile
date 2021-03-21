pipeline {
    agent any

    stages {        
        stage('Compiling Stage'){
            steps{
                bat 'python src/Alphabet.py'
            }
        }
        stage('Testing Stage'){
            steps{
                bat 'python src/test_Alphabet.py'
            }
        }
        stage('Docker Image Build'){
            steps{
                bat 'docker build -t src .'
            }
        }
        stage('Docker image Push'){
            steps{
                bat 'docker tag src:latest monish7/src'
                bat 'docker push monish7/src'
            }
        }
    }
}
