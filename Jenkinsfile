pipeline {
    agent any
    stages {
        stage('Terraform Validate') {
            steps {
                sh 'terraform validate -no-color'
            }
        }
         stage('Infracost') {
            environment {
                INFRACOST_API_KEY='6ntq4fAdhFyNcHrVr101HzlZFXVJnsJd'
            }
            steps {
                sh 'infracost breakdown --path .'
            }
        }
        stage('TFSEC_SCAN') {
            steps {
                sh '/home/bitnami/.linuxbrew/bin/tfsec --no-color'
            }
        }
    }
}