pipeline {
    agent any

    environment {
        sonar_url = 'http://172.31.34.79:9000'
        sonar_username = 'admin'
        sonar_password = 'Jaswika@123'
    }

    tools {
        jdk 'Java'
        maven 'Maven'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/kosurumuniraja/Migration-helloworld.git', credentialsId: 'git-cred'
            }
        }

        stage('Maven build') {
            steps {
                sh 'mvn clean install -U -Dmaven.test.skip=true'
            }
        }

        stage('Sonarqube Analysis') {
            steps {
                withSonarQubeEnv('Sonarqube') {
                    sh '''
                    mvn -e -B sonar:sonar -Dsonar.java.source=1.8 -Dsonar.host.url="${sonar_url}" -Dsonar.login="${sonar_username}" -Dsonar.password="${sonar_password}" -Dsonar.sourceEncoding=UTF-8
                    '''
                }
            }
        }
    }
}
