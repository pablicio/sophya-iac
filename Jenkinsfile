pipeline {
  agent any
  stages {
    stage("Checkout source") {
      steps {
        git branch: 'main', url: 'https://github.com/pablicio/sophya-iac.git'
        sh 'ls'
      }
    }

    stage("Execução do projeto terraform") {
      steps {
        script {
          dir('env/Dev'){
            sh 'terraform init'
            sh 'terraform apply --auto-approve'
            sh 'ls'
          }
        }
      }
    }
  }
}
