pipeline {
    agent any

    stages {
        stage('Infracost') {
            steps {
                echo 'Running Infracost'
                export INFRACOST_API_KEY=6ntq4fAdhFyNcHrVr101HzlZFXVJnsJd
                infracost breakdown --path .
            }
        }
        stage('TFSEC') {
            steps {
                echo 'Security Scan'
                /home/bitnami/.linuxbrew/bin/tfsec --no-color
            }
        }

    }
}
