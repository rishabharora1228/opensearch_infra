pipeline {

   agent any
 parameters {
  choice choices: ['apply', 'destroy'], description: 'Select any one option', name: 'terraform_Infra'
}


  stages {

    stage(‘Checkout’) {

steps {
git branch: 'main', url: 'https://github.com/rishabharora1228/opensearch_infra.git'

}
    }   
stage("Terraform Init") {
      steps {
        script {
            sh 'terraform init'
          }
    }

  }
  stage("Terraform Plan") {
      steps {
        script {
            sh 'terraform plan'
          }
    }

  }
  stage("Terraform Apply") {
      steps {
        script {
            sh 'terraform ${terraform_Infra} --auto-approve'
          }
    }

  }
}
}


