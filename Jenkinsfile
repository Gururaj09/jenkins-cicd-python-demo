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
                    sh 'pytest'
               }
           }
       }
    }

}
