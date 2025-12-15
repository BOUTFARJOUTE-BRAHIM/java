pipeline {
    agent any
    tools {
        jdk 'JDK17'
        }
    environment {
        SONAR_SCANNER = tool 'SonarScanner'   // Nom du scanner configuré dans Jenkins
    }

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/BOUTFARJOUTE-BRAHIM/java.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn compile'
            }
        }

        stage('SonarQube Analysis YEEEEEEEEEEEEEEEEES') {
            steps {
                withCredentials([string(credentialsId: 'projet987', variable: 'TOKEN')]) {

                    sh """
                    ${SONAR_SCANNER}/bin/sonar-scanner \
                        -Dsonar.projectKey=projet987 \
                        -Dsonar.projectName=projet987 \
                        -Dsonar.projectVersion=1.0 \
                        -Dsonar.sources=src/main/java \
                        -Dsonar.language=java \
                        -Dsonar.java.binaries=target/classes \
                        -Dsonar.host.url=http://127.0.0.1:9000 \
                        -Dsonar.login=${TOKEN}
                    """
                }
            }
        }
    }
}
