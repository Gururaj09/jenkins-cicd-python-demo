pipeline {
    agent {
        label 'python-agent'
    }
    stages {
        stage('checkout code') {
            steps{
                checkout scm      
            }
           
        }
        stage('Run Unit Test') {
            steps {
                container('python') {
                    sh 'apt-get update && apt-get install -y procps'
                    sh 'pip install -r requirements.txt'
                    sh 'pytest'
               }
           }
       }
    }

}
