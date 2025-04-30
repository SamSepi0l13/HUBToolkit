pipeline {
    agent {
        docker {
            image 'debian:12'
            args '-u root' // Permite instalar pacotes como root
        }
    }
    triggers {
        githubPush() // Dispara o build quando houver push no GitHub
    }
    stages {
        stage('Clone Repository') {
            steps {
                // Clona o repositório
                git 'https://github.com/SamSepi0l13/HUBToolkit.git'
            }
        }
        stage('Install Dependencies') {
            steps {
                sh '''
                    apt-get update && apt-get install -y git curl
                '''
            }
        }
    }
}
