pipeline{
    agent any
    environment {
        AWS_DEFAULT_REGION = 'us-east-1'
    }
    stages{
        stage('checkout from GIT'){
            steps{
               git branch: 'main', url: 'https://github.com/ahmedlhrpk/terraform-jenkins.git'
            }
        }
        stage('Terraform Init'){
            steps{
                sh 'terraform init'
            }
        }
        stage('Terraform Plan'){
           steps{
                sh 'terraform plan'
           }
        }
        stage('Terraform Apply'){
           steps{
                sh 'terraform apply --auto-approve'
           }
        }
    }   
}
