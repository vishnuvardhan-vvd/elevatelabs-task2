pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from the repository
                git branch: 'main', url'https://github.com/vishnuvardhan-vvd/elevatelabs-task2.git' // Replace with your Git repository URL
            }
        }

        stage('Test') {
            steps {
                script {
                    sh 'echo "No tests defined, skipping..."'
                }
            }
        }

        stage('Build') {
            steps {
                sh "docker build -t flask-app ."
            }
        }

        stage('Deploy') {
            steps {
                script {
                    sh "docker run -d -p 80 flask-app"
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
