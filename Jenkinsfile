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
stage ('terraform init') {

steps {

sh label: '', script: ‘terraform init’
}
}
  }
}




