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

    stage('Build') {
      steps {
        echo 'Building container image'
        container(name: 'podman', shell: 'bash') {
          sh 'podman build .'
        }

      }
    }

  }
  environment {
    Z_VAR = 'whatever'
  }
}