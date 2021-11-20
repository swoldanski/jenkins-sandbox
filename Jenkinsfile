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
whoami || True
uname -a || True
docker images || True'''
      }
    }

  }
}