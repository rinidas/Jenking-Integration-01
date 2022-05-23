pipeline {
    agent any
    stages {
        stage('TFSEC_SCAN') {
            steps {
                sh '/home/bitnami/.linuxbrew/bin/tfsec --no-color'
            }
        }
    }
}