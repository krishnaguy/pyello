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
                script {
                    docker build registry + ":$BUILD_NUMBER"
                }
                
            }
            
        }
    }
}