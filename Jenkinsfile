pipeline {
    agent any    
    environment {
        GOOGLE_APPLICATION_CREDENTIALS = credentials('gcp-key')
        GIT_TOKEN = credentials('git_token')
    }

    stages {
        stage('Git Checkout'){
            steps {
                cleanWs()
                git "https://${GIT_TOKEN}@github.com/aldo2510/gt-gcp-tf-jenkins.git"
            }
        }
        stage('Terraform Init'){
            steps {
                script {
                    sh 'terraform init'
                }
            }
        }
        stage('Terraform Plan'){
            steps {
                script {
                    sh 'terraform plan -out=tfplan'
                }
            }
        }
        stage('Manual Approval'){
            steps {
                script {
                    input "Approve?"
                }
            }
        }
        stage('Terraform Apply'){
            steps {
                script {
                    sh 'terraform apply tfplan'
                    cleanWs()
                }
            }
        }
    }
}
