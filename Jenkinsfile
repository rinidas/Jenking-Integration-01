pipeline {
    agent any

    stages {
        stage('TFSEC_SCAN') {
            steps {
                sh '/home/bitnami/.linuxbrew/bin/tfsec --no-color'
            }
        }
        stage('INFRACOST') {
            steps {
                sh 'export INFRACOST_API_KEY=6ntq4fAdhFyNcHrVr101HzlZFXVJnsJd'
                sh 'sudo /usr/local/bin/infracost breakdown --path .'
            }
        }
    }
}