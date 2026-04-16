pipeline {
    agent any

    stages {

        stage('Clone') {
            steps {
                git 'https://github.com/Liau21/simple-java-maven-app.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Building using Maven Wrapper...'
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
}