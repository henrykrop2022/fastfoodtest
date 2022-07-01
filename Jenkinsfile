pipeline {
    agent{
        any
        docker { image 'node:latest' }
    } 
    tools{
        maven 'M2_HOME'
    }
    // environment {
    //     registry = '076892551558.dkr.ecr.us-east-1.amazonaws.com/geolocation_ecr_rep'
    //     dockerimage = '' 
    // }
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
        stage('Install') {
            steps { sh 'npm install' }   
        }
        stage('Build') {
            steps { sh 'npm run-script build' }
            
        }

        // stage('Code Build Frontend') {
        //     steps {
        //         sh 'mvn clean package'
        //     }
        // }
        // stage('Test') {
        //     steps {
        //         sh 'mvn test'
        //     }
        // }
        // Building Docker images
        // stage('Building image') {
        //     steps{
        //         script {
        //             dockerImage = docker.build registry
        //         }
        //     }
        // }
        // Uploading Docker images into AWS ECR
        // stage('Pushing to ECR') {
        //     steps{
        //         script {
        //             sh 'aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 076892551558.dkr.ecr.us-east-1.amazonaws.com'
        //             sh 'docker push 076892551558.dkr.ecr.us-east-1.amazonaws.com/geolocation_ecr_rep:latest'
        //         }
        //     }
        // }
        //deploy the image that is in ECR to our EKS cluster
        // stage ("Kube Deploy") {
        //     steps {
        //         withKubeConfig(caCertificate: '', clusterName: '', contextName: '', credentialsId: 'eks_credential', namespace: '', serverUrl: '') {
        //          sh "kubectl apply -f eks-deploy-from-ecr.yaml"
        //         }
        //     }
        // }
    }
}