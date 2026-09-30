pipeline {
    agent any

    environment {
        IMAGE_NAME = 'hello-world-app'
        CONTAINER_NAME = 'hello-world-container'
        APP_PORT = '8081'
    }

    stages {

        stage('Checkout') {
            steps {
                echo 'Checking out source code...'
                checkout scm
            }
        }

        stage('Build with Maven') {
            steps {
                echo 'Building Java web application...'
                dir('DevOps-Project-05/hello-world') {
                    bat 'mvn clean package'
                }
            }
        }

        stage('Prepare WAR') {
            steps {
                echo 'Preparing WAR file...'
                dir('DevOps-Project-05/hello-world') {
                    bat 'copy /Y webapp\\target\\webapp.war .'
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                dir('DevOps-Project-05/hello-world') {
                    bat 'docker build --no-cache -t %IMAGE_NAME%:%BUILD_NUMBER% .'
                    bat 'docker tag %IMAGE_NAME%:%BUILD_NUMBER% %IMAGE_NAME%:latest'
                }
            }
        }

        stage('Deploy Container') {
            steps {
                echo 'Deploying application...'

                bat '''
                docker stop %CONTAINER_NAME% 2>NUL || exit /B 0
                docker rm %CONTAINER_NAME% 2>NUL || exit /B 0
                docker run -d -p %APP_PORT%:8080 --name %CONTAINER_NAME% %IMAGE_NAME%:%BUILD_NUMBER%
                '''
            }
        }

        stage('Verify Deployment') {
            steps {
                echo 'Checking running container...'
                bat 'docker ps --filter "name=%CONTAINER_NAME%"'
            }
        }
    }

    post {
        success {
            echo 'CI/CD pipeline completed successfully!'
            echo 'Application: http://localhost:8081/webapp/'
        }

        failure {
            echo 'CI/CD pipeline failed. Check the Jenkins console output.'
        }
    }
}