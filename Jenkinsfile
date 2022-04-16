pipeline {
  agent {
    kubernetes {
      defaultContainer 'worker'
      yamlFile 'JenkinsPodTemplate.yaml'
    }

  }
  stages {
    stage('Info') {
      parallel {
        stage('Info') {
          steps {
            sh 'printenv'
          }
        }

        stage('Validate Jenkinsfile') {
          steps {
            validateDeclarativePipeline 'Jenkinsfile'
          }
        }

      }
    }

    stage('Build') {
      steps {
        echo 'Building container image'
        container(name: 'podman', shell: 'bash') {
          sh '''IMAGE=$GIT_BRANCH:$GIT_COMMIT
podman build -t $IMAGE .
podman image ls $IMAGE'''
        }

      }
    }

    stage('Git info') {
      steps {
        git(branch: 'env.GIT_BRANCH', url: 'env.GIT_URL', changelog: true, credentialsId: 'github')
        sh 'git log --oneline'
      }
    }

  }
}