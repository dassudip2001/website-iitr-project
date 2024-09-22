pipeline {
    agent any
    environment {
        APP_NAME = "sudipdas2001/website"
        RELEASE = "1.0.0"
        DOCKER_USER = 'sudipdas2001'
        DOCKER_PASS = 'dockerhub'
        IMAGE_NAME = "${DOCKER_USER}/${APP_NAME}"
        IMAGE_TAG = "${RELEASE}-${BUILD_NUMBER}"
    }

    stages {
        // Checkout the code from the repository
        stage('Checkout') {
            steps {
                git branch: 'main', credentialsId: 'github', url: 'https://github.com/dassudip2001/website-iitr-project.git'
            }
        }

        // Docker build and push
        stage('Docker') {
            steps {
                script {
                    // Using Docker credentials to login and push images
                    docker.withRegistry('', 'dockerhub_credentials') {
                        def docker_image = docker.build("${IMAGE_NAME}")

                        // Pushing both versioned and 'latest' tagged images
                        docker_image.push("${IMAGE_TAG}")
                        docker_image.push('latest')
                    }
                }
            }
        }
    }
}
