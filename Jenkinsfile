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
                sh 'infracost breakdown --path .'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}