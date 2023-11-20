pipeline {
  agent any
  stages {
    stage("Checkout source") {
      steps {
        git branch: 'main', url: 'https://github.com/pablicio/sophya-iac.git'
        sh 'ls'
      }
    }
  }
}
