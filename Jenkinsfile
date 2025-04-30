pipeline {
    agent any
    
    triggers {
        githubPush() // Dispara o build quando houver push no GitHub
    }
    
    environment {
        // Define a variável DOCKER_IMAGE_NAME com o nome da imagem Docker
        DOCKER_IMAGE_NAME = 'hubtoolkit-image'
    }

    stages {
        stage('Clone Repository') {
            steps {
                // Clona o repositório
                git 'https://github.com/SamSepi0l13/HUBToolkit.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Construa a imagem Docker a partir do Dockerfile
                    docker.build(DOCKER_IMAGE_NAME)
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    // Roda o container a partir da imagem construída e executa o script necessário
                    docker.image(DOCKER_IMAGE_NAME).inside {
                        // Aqui você pode executar os scripts dentro do container
                        sh '''
                            chmod +x HUBToolkit/*.sh
                            ./HUBToolkit/some_script.sh  # Substitua pelo nome do script principal
                        '''
                    }
                }
            }
        }
    }

    post {
        always {
            // Aqui você pode adicionar ações pós-execução, como limpar imagens
            echo 'Build Finalizado!'
        }
    }
}
