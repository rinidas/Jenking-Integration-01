pipeline {
    agent any

    stages {
        stage('Infracost') {
            steps {
                echo 'Running Infracost'
                sh 'export INFRACOST_API_KEY=6ntq4fAdhFyNcHrVr101HzlZFXVJnsJd'
                sh 'infracost breakdown --path .'
            }
        }
        stage('TFSEC') {
            steps {
                echo 'Security Scan'
                sh '/home/bitnami/.linuxbrew/bin/tfsec --no-color'
            }
        }

    }
}
