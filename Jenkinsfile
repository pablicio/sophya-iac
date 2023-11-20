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
      script {
        dir('src'){
          sh: 'terraform init'
          sh: 'terraform apply'
        }
      }
    }
  }
}
