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
        stage('Docker Run container'){
            steps{
                bat 'docker run -p 5000:5000 -d github_api'
            }
        }
    }
}
