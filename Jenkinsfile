pipeline {
    agent any
    stages {
        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }
        stage('Build with Maven') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t my-maven-app:latest .'
            }
        }
        stage('Push Docker Image') {
            steps {
                sh 'docker tag my-maven-app:latest your-dockerhub-username/my-maven-app:latest'
                sh 'docker push your-dockerhub-username/my-maven-app:latest'
            }
        }
        stage('Deploy Application') {
            steps {
                echo 'Deploying application...'
            }
        }
    }
}
