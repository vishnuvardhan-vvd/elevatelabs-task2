pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from the repository
                git branch: 'main', url: 'https://github.com/vishnuvardhan-vvd/elevatelabs-task2.git'
            }
        }

        stage('Test') {
            steps {
                script {
                    // Placeholder for test commands
                    echo 'No tests defined, skipping...'
                }
            }
        }

        stage('Build') {
            steps {
                // Build the Docker image
                sh 'docker build -t flask-app .'
            }
        }

        stage('Deploy') {
            steps {
                script {
                    // Run the Docker container, mapping host port 80 to container port 80
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
