pipeline{
    environment {
        registry = "krishnaguy/pyello"
        registryCredential = 'dockerhub'
    }
    agent any
    stages {
        stage('First') {
            steps {
                sh 'ls'
                docker build registry + ":BUILD_NUMBER"
            }
            
        }
    }
}