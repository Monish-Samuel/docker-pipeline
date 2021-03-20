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
        stage('Build Docker'){
            steps{
                bat 'docker build -t src .'
            }
        }
        stage('Docker run'){
        steps{
            bat 'docker run -it -p 5000:5000 src'
            }
        }
    }
}
