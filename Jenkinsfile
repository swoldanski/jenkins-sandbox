pipeline {
  agent none
  stages {
    stage('Dockerfile') {
      agent {
        dockerfile {
          filename 'Dockerfile'
        }

      }
      steps {
        sh '''echo "Hello from step"
cat /etc/*release
              '''
      }
    }

    stage('Docker Python 3.9') {
      agent {
        docker {
          image 'python:3.9'
        }

      }
      steps {
        sh '''echo "Hello from step"
cat /etc/*release
              
'''
      }
    }

  }
}