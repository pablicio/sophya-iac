pipeline {
  agent any
  stages {
    stage("Checkout source") {
      steps {
        git url: 'https://github.com/pablicio/sophya-iac.git', 'main'
        sh 'ls'
      }
    }
  }
}
