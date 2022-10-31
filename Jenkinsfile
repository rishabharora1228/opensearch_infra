pipeline {

   agent any

  stages {
stage ('change directory') {

// steps {

// sh (‘cd /var/lib/jenkins/workspace/opensearch_infra’)

// }

// }
    stage(‘Checkout’) {

steps {
git branch: 'main', url: 'https://github.com/rishabharora1228/opensearch_infra.git'

}
    }
stage ('check1') {

steps {

sh (‘whoami’)
}
}
stage ('check2') {

steps {

sh (‘ls -la’)
}
}
// stage ('terraform init') {

// steps {

// sh (‘terraform init’)
// }
// }
  }
}




