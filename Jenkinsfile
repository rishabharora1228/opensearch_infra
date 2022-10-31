pipeline {

   agent any

  stages {

    stage(‘Checkout’) {

steps {
git branch: 'main', url: 'https://github.com/rishabharora1228/opensearch_infra.git'

}
    }   
stage ('terraform init') {

steps {

sh ‘terraform init’
}
}
  }
}




