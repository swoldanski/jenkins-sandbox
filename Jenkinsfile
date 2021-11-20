pipeline {
  agent none
  stages {
    stage('build') {
      agent {
        docker {
          image 'python:3.9'
        }

      }
      steps {
        sh '''echo "Hello from step"
              env
              pwd
              ls -laR'''
      }
    }

  }
}