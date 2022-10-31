pipeline {

   agent any
   tools {
  terraform 'Terraform'
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
            sh 'terraform apply'
          }
    }

  }
}
}


