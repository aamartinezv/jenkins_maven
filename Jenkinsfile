pipeline {
    agent any

    tools {
        maven 'Maven'
    }

    stages {

        stage('Clone') {
            steps {
               git branch: 'feature/ci-setup',git 'https://github.com/Liau21/simple-java-maven-app.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Building using Maven...'
                sh './mvnw clean compile'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                sh './mvnw test'
            }
        }

        stage('Package') {
            steps {
                echo 'Packaging app...'
                sh './mvnw package'
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