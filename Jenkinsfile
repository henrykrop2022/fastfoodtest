
pipeline {
    triggers {
  pollSCM('* * * * *')
    }
   agent any
    tools {
  maven 'M2_HOME'
}
    stages {

        stage("build & SonarQube analysis") {          
            steps {
                dir('./fastfood_BackEnd/'){
                    withSonarQubeEnv('SonarServer') {
                        sh 'mvn verify org.sonarsource.scanner.maven:sonar-maven-plugin:sonar -Dsonar.projectKey=Hermann90_fastfoodtest'
                    }
                }
            }
        }

        stage('Check Quality Gate') {
            steps {
                echo 'Checking quality gate...'
                dir('./fastfood_BackEnd/'){ 
                    script {
                    timeout(time: 20, unit: 'MINUTES') {
                        def qg = waitForQualityGate()
                        if (qg.status != 'OK') {
                            error "Pipeline stopped because of quality gate status: ${qg.status}"
                            } 
                        }
                    }
                }
            }
        }
    }
}