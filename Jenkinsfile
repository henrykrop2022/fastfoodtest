pipeline {
    agent any
    tools{
        maven 'M2_HOME'
    }
     environment {
        backRegistry = '076892551558.dkr.ecr.us-east-1.amazonaws.com/food-backend'
        frontRegistry = '076892551558.dkr.ecr.us-east-1.amazonaws.com/food-frontend'
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
                echo 'Starting to build docker image'
                dir('./fastfood_FrontEnd/'){
                script {
                    def customImageFront = []
                    customImageFront = docker.build frontRegistry
                }
               }
           }
        }
        stage('Build image BackEnd') {
            steps {
                echo 'Starting to build docker image'
                dir('./fastfood_BackEnd/'){
                script {
                    def customImageBack = []
                    customImageBack = docker.build backRegistry
                    }
                }
            }
        } 

        // Uploading Docker images for the Backend into AWS ECR
        stage('Pushing Backend to ECR') {
            steps{
                script {
                    sh 'aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 076892551558.dkr.ecr.us-east-1.amazonaws.com'
                    sh 'docker push 076892551558.dkr.ecr.us-east-1.amazonaws.com/food-backend:latest'
                }
            }
        } 

           // Uploading Docker images for the frontend into AWS ECR
        stage('Pushing frontend to ECR') {
            steps{
                script {
                    sh 'aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 076892551558.dkr.ecr.us-east-1.amazonaws.com'
                    sh 'docker push 076892551558.dkr.ecr.us-east-1.amazonaws.com/food-frontend:latest'
                }
            }
        }

          stage('Deploy Database') {
              steps {
                    dir('./deploy/'){
                     withKubeConfig(caCertificate: '', clusterName: '', contextName: '', credentialsId: 'eks_credential', namespace: '', serverUrl: '') {
                        sh "kubectl apply -f postgres-credentials.yaml"
                        sh "kubectl apply -f postgres-configmap.yaml"
                        sh "kubectl apply -f postgres-deployment.yaml"
                    }
                }
            } 
        } 

        stage('Build image BackEnd') {
              steps {
                    echo 'Starting to build docker image'
                    dir('./deploy/'){
                     withKubeConfig(caCertificate: '', clusterName: '', contextName: '', credentialsId: 'eks_credential', namespace: '', serverUrl: '') {
                        sh "kubectl apply -f deployment.yaml"
                    }
                }
            } 
        }   
    }
}