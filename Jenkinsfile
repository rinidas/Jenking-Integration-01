pipeline {
    agent any
    stages {
        stage('Terraform Validate') {
            steps {
                sh 'terraform validate'
            }
        }
        stage('TFSEC_SCAN') {
            steps {
                sh '/home/bitnami/.linuxbrew/bin/tfsec --no-color'
            }
        }
    }
}