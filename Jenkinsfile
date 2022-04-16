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
          sh '''podman build -t $GIT_BRANCH:$GIT_COMMIT .
podman image ls$GIT_BRANCH:$GIT_COMMIT'''
        }

      }
    }

  }
}