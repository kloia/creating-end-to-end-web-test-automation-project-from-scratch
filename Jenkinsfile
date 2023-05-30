pipeline {
  agent any
  options {
    buildDiscarder(logRotator(numToKeepStr: '5'))
  }
  environment {
    DOCKERHUB_CREDENTIALS = credentials('dockerhub')
  }
  stages {
    stage('Build') {
      steps {
        env.PATH = "/usr/local/bin/docker"
        sh 'docker build -t muhammettopcu/dockerize-ruby-web:1.1.5 .'
      }
    }
    stage('Login') {
      steps {
        sh "echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin"
      }
    }
    stage('Push') {
      steps {
        sh 'docker push muhammettopcu/dockerize-ruby-web:1.1.5'
      }
    }
  }
  post {
    always {
      sh 'docker logout'
    }
  }
}