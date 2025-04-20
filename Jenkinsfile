pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/Anshgulati090/MNIST-handwritten-digit.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t anshhgulati/mnist-jenkins-project .'
            }
        }

        stage('Push to DockerHub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub-credentials', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                    sh 'echo $PASSWORD | docker login -u $USERNAME --password-stdin'
                    sh 'docker push anshhgulati/mnist-jenkins-project'
                }
            }
        }
    }
}
