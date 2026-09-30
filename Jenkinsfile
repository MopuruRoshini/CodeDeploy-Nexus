pipeline {
    agent any

    environment {
        IMAGE_NAME = 'hello-world-app'
        CONTAINER_NAME = 'hello-world-container'
        APP_PORT = '8081'

        MAVEN_HOME = 'C:\\Program Files\\Apache\\apache-maven-3.9.16'
        DOCKER_HOME = 'C:\\Program Files\\Docker\\Docker\\resources\\bin'

        PATH = "${MAVEN_HOME}\\bin;${DOCKER_HOME};${env.PATH}"
    }

    stages {

        stage('Checkout') {
            steps {
                echo 'Checking out source code...'
                checkout scm
            }
        }

        stage('Verify Tools') {
            steps {
                echo 'Checking Java, Maven and Docker...'
                bat '''
                java -version
                mvn -version
                docker --version
                '''
            }
        }

        stage('Build with Maven') {
            steps {
                echo 'Building Java web application...'

                dir('.') {
                    bat 'mvn clean package'bat '"C:\\Program Files\\Apache\\apache-maven-3.9.16\\bin\\mvn.cmd" clean package'
                }
            }
        }

        stage('Prepare WAR') {
            steps {
                echo 'Preparing WAR file...'

                dir('.') {
                    bat 'copy /Y webapp\\target\\webapp.war .'
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'

                dir('.') {
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

                bat '''
                docker ps --filter "name=%CONTAINER_NAME%"
                echo.
                echo Application URL:
                echo http://localhost:8081/webapp/
                '''
            }
        }
    }

    post {
        success {
            echo '========================================'
            echo 'CI/CD PIPELINE COMPLETED SUCCESSFULLY'
            echo '========================================'
            echo 'Application: http://localhost:8081/webapp/'
        }

        failure {
            echo '========================================'
            echo 'CI/CD PIPELINE FAILED'
            echo 'Check the Jenkins Console Output.'
            echo '========================================'
        }
    }
}