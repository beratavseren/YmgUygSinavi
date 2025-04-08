pipeline {
    agent any
    
    triggers {
        githubPush()
    }
    
    environment{
        PATH = "C:\\Program Files\\Docker\\Docker\\resources\\bin;${env.PATH}"
        IMAGE_NAME = "deneme-v3"
        CONTAINER_NAME ="test-ngnix3"
    }
    
    
    
    stages{
        stage('Repo Klonla'){
            steps{
                git url:'https://github.com/beratavseren/YmgUygSinavi.git' , branch:'main'
            }
        }
        
        stage('Docker Image Olustur'){
            steps{
                echo "docker imaj oluştur"
                bat "docker build -t ${IMAGE_NAME} ."
            }
        }
        stage('Conteyner durdur'){
            steps{
                echo "conteyner durdur"
                bat "docker rm -f ${CONTAINER_NAME} || true"
            }
        }
        stage('Konteynır oluştur'){
            steps{
                echo "yeni conteyner oluştur"
                bat "docker run -d --name ${CONTAINER_NAME} -p 4444:80 ${IMAGE_NAME}"
            }
        }
    }
    
    post {
        success{
            echo "başarılı"
        }
        failure{
            echo "başarısız"
            
        }
        
    }
}
