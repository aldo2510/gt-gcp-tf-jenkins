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
                    sh 'Terraform init'
                }
            }
        }
        stage('Terraform Plan'){
            steps {
                script {
                    sh 'Terraform plan -out=tfplan'
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
                    sh 'Terraform apply tfplan'
                    cleanWs()
                }
            }
        }
    }
}
