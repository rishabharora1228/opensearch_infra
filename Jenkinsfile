pipeline {

agent any

stages {

stage(‘Checkout’) {

steps {

checkout([$class: ‘GitSCM’, branches: [[name: ‘*/main’]], extensions: [], userRemoteConfigs: [[url: ‘https://github.com/rishabharora1228/opensearch_infra.git‘]]])

}

}

stage ('terraform init') {

steps {

sh (‘terraform init’)

}

}
stage ('terraform plan') {

steps {

sh (‘terraform plan’)

}

}

stage ('terraform Action') {

steps {

echo “Terraform action is –> ${action}”

sh (‘terraform ${action} –auto-approve’)

}

}

}

}
