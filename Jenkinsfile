pipeline {
    agent any

    stages {
        stage('Infracost') {
            steps {
                sh 'export INFRACOST_API_KEY=6ntq4fAdhFyNcHrVr101HzlZFXVJnsJd'
                sh 'infracost breakdown --path .'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}