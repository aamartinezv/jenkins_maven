pipeline {
    agent any

    stages {

        stage('Clone') {
            steps {
               git branch: 'feature/ci-setup', url: 'https://github.com/Liau21/simple-java-maven-app.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Building using Maven...'
                bat './mvnw clean compile'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                bat './mvnw test'
            }
        }

        stage('Package') {
            steps {
                echo 'Packaging app...'
                bat './mvnw package'
            }
        }
    }

    post {
        success {
            echo 'Build Successful!'
        }
        failure {
            echo 'Build Failed!'
        }
    }
}