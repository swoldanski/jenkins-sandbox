pipeline {
  agent {
    kubernetes {
        defaultContainer 'worker'
        yamlFile 'JenkinsPodTemplate.yaml'
    }
  }
  stages {
    stage('Build') {
      steps {
        echo 'Build started'
        sh """#!/bin/bash -ex
          hostname
          printenv
        """
      }
    }

  }
}