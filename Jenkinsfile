pipeline{ 
   
    tools {
       maven 'Maven'

    }
    agent any
    stages{
         stage('git checkout'){
             steps{
                 git credentialsId: 'github', url: 'https://github.com/Trakox/TP4.git'
             }
         }
         
         stage('Build the application'){
             steps{
                 sh 'mvn clean package'
             }
         }
         stage('Unit Test Execution'){
             steps{
                 sh 'mvn test'
             }
         }
         stage('Build the docker image'){
             steps{
                 sh 'docker build -t mathys1/jenkins:latest .'
             }
         }
         stage('Depot docker image'){
             steps{
                 withCredentials([string(credentialsId:'docker', variable:'dockerHubPass')]){
                     sh 'docker login -u mathys1 -p \${dockerHubPass}'
                 }
                 sh 'docker push mathys1/jenkins:latest'
             }
         }
   }
post{
   failure{
      emailext body: 'Ce Build $BUILD_NUMBER a échoué',
      recipientProviders:[requestor()], subject: 'build', to:
         'mathysbriand2001@gmail.com'
   }
 }
} 

