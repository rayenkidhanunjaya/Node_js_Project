pipeline {
    agent any 
    environment {
        DOCKERHUB_CREDENTIALS = credentials ('dockerhub_id')
    }
    stages {
        stage('Git Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/Vlaxmi0312/Node_js_Project.git'
            }
        }
        stage('Dependencies') {
            steps {
                sh 'npm install'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t node-app .'
            }
        }
         stage('login to dockerhub') {
            steps{
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
        stage('Run the Container') {
            steps {
                sh 'docker run -d --name viju-con -p 3000:3000 --env-file .env node-app'
            }
        }
    }
}
