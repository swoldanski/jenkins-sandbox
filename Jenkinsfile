pipeline {
  agent none
  stages {
    stage('build') {
      agent {
        dockerfile {
          filename 'Dockerfile'
        }

      }
      steps {
        sh '''echo "Hello World"
whoami || true
uname -a || true
docker images || true'''
      }
    }

  }
}