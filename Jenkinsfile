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
                INFRACOST_API_KEY=credentials('jenkins-infracost-api-key')
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