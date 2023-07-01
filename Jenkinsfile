pipeline {

  environment {
    dockerimagename = "heissenberg/covid"
    dockerImage = ""
  }

  agent any

  stages {

    stage('Checkout Source') {
      steps {
        git 'https://github.com/heissenberg303/covid-app.git'
      }
    }

    stage('Build image') {
      steps{
        script {
          dockerImage = docker.build dockerimagename
        }
      }
    }

    stage('Pushing Image') {
      environment {
               registryCredential = 'dockerhub-credentials'
           }
      steps{
        script {
          docker.withRegistry( 'https://registry.hub.docker.com', registryCredential ) {
            dockerImage.push("latest")
          }
        }
      }
    }

    stage('Deploying Covid-app container to Kubernetes') {
      steps {
        script {
          kubernetesDeploy(configs: "deployments/v1.yaml")
        }
      }
    }

  }

}