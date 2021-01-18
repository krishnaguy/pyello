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
                    dockerImage = docker.build registry + ":$BUILD_NUMBER"
                    docker.withRegistry('', registryCredential ) {
                    dockerImage.push("$BUILD_NUMBER")
                    dockerImage.push('latest')
                }
                
            }
            
        }
    }
}