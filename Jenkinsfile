pipeline{
    agent any

    tools {
         maven 'maven'
         jdk 'java'
    }

    stages{
        stage('checkout'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'git-cred', url: 'https://github.com/kosurumuniraja/Migration-helloworld.git']]])
            }
        }
        stage('build'){
            steps{
               bat 'mvn package'
            }
        }
    }
}
