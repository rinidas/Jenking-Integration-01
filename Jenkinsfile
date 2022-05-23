pipeline {
    agent any

    stages {
        stage('Infracost') {
            steps {
                sh 'export INFRACOST_API_KEY=6ntq4fAdhFyNcHrVr101HzlZFXVJnsJd'
            }
        }
        stage('Breakdown') {
            steps {
                sh '/home/bitnami/.linuxbrew/bin/tfsec --no-color'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}