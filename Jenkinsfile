pipeline {
    agent {
        node(label: 'thebrain')
    }
    stages {
        stage('build image') {
            steps {
                sh """
                docker build -t hello-world-image .
                """
            }
        }
        stage('run image') {
            steps {
                sh """
                docker run --rm hello-world-image
                """
            }
        }
    }
}