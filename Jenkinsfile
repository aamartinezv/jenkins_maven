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
                bat 'mvnw.cmd clean compile'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                bat 'mvnw.cmd test'
            }
        }

        stage('Package') {
            steps {
                echo 'Packaging app...'
                bat 'mvnw.cmd package'
            }
        }
    }
}