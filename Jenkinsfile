pipeline {
    agent any

    stages {
        stage('Infracost') {
            steps {
                export INFRACOST_API_KEY=6ntq4fAdhFyNcHrVr101HzlZFXVJnsJd
                infracost breakdown --path .
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