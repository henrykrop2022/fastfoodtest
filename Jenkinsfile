pipeline {
    agent any
    tools{
        maven 'M2_HOME'
    }
    stages {
        stage('Checkout'){
            steps{
                git branch: 'main', url: 'https://github.com/Hermann90/fastfoodtest.git'
            }
        }
         stage('Code Build Backend') {
            steps {
                sh 'mvn -f ./fastfood_BackEnd/ clean package -DskipTests'
            }
        }
         stage('Build image FrontEnd') {
            steps {
                //echo 'Starting to build docker image'
                dir('./fastfood_FrontEnd/'){
                script {
                    def customImageFront = []
                    customImageFront = docker.build("frontend:${env.BUILD_ID}")
                    // customImage.push()
                }
               }
           }
        }
        // stage('Build image BackEnd') {
        //     steps {
        //         //echo 'Starting to build docker image'
        //         dir('./fastfood_BackEnd/'){
        //         script {
        //             def customImageBack = []
        //             customImageBack = docker.build("backend:${env.BUILD_ID}")
        //             // customImage.push()
        //             }
        //         }
        //     }
        // }     
    }
}