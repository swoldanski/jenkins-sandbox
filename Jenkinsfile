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

//     stage('Build') {
//       steps {
//         echo 'Building container image'
//         container(name: 'podman', shell: 'bash') {
//           sh '''IMAGE=$GIT_BRANCH:$GIT_COMMIT
// podman build -t $IMAGE .
// podman image ls $IMAGE'''
//         }

//       }
//     }

    stage('Git info') {
      steps {
        container(name: 'jnlp', shell: 'bash') {
          echo 'Running in jlnp'
          sh '''#git remote set-url --push origin ${GIT_URL}
#git show origin

#git log --oneline
#git branch
#git tag
#git tag -a -m "SUCCESS" "${NODE_NAME}"
#git log --oneline
#git push --tags
'''
        }

      }
    }

  }
}