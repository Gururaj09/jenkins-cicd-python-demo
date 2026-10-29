pipeline {
    agent {
        label 'python-agent'
    }
    Stages {
        stage('checkout code') {
            steps{
                checkout scm      
            }
           
        }
        stage('Run Unit Test') {
            steps {
                container('python') {
                    sh 'python3 -m venv venv'
                    sh './venv/bin/pip install -r Requirements.txt'
                    sh './venv/bin/pytest'
               }
           }
       }
    }

}
