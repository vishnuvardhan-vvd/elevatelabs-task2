pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/vishnuvardhan-vvd/elevatelabs-task2.git'
            }
        }

        stage('Test') {
            steps {
                script {
                    echo 'No tests defined, skipping...'
                }
            }
        }

        stage('Build') {
            steps {
                sh 'docker build -t flask-app .'
            }
        }

        stage('Deploy') {
            steps {
                script {
                    sh 'docker run -d -p 80:80 flask-app'
                }
            }
        }
    }

    post {
        success {
            echo 'Pipeline finished successfully!'
        }

        failure {
            echo 'Pipeline failed!'
        }
    }
}
