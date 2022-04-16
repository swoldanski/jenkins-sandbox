pipeline {
  agent {
    kubernetes {
      defaultContainer 'worker'
      yamlFile 'JenkinsPodTemplate.yaml'
    }

  }
  stages {
    stage('Info') {
      steps {
        sh 'printenv'
      }
    }

  }
}