// Janit and Badri
pipeline {
  agent {
    node {
      label 'swe645-jenkins'
    }
  }
  environment {
    DOCKER_REGISTRY = 'docker.io'
    DOCKER_CREDENTIALS = credentials("dockerhub")
    KUBERNETES_NAMESPACE = 'swe-a2'
    KUBERNETES_DEPLOYMENT_NAME = 'deploy-a2'
    KUBERNETES_CONTAINER_NAME = 'container-0'
    KUBERNETES_CONTAINER_PORT = 8080
  }
  stages {
    stage('Prerequisites') {
      steps {
        withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
          echo "Username: ${USERNAME}"
          echo "Password: ${PASSWORD}"
        }
      }
    }
    stage('Checkout') {
      steps {
        checkout scm
      }
    }
     stage('Build') {
         steps {
           sh 'mvn clean install -DskipTests'
         }
         post {
           success {
             archiveArtifacts artifacts: '*.jar', fingerprint: true
           }
         }
       }
    stage('Docker Build and Push') {
      steps {
        script {
          withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
            sh 'echo ${PASSWORD} | sudo docker login -u ${USERNAME} --password-stdin'
            sh 'sudo docker build -t "bidhanjanit/survey_backend_645" .'
            sh 'sudo docker push bidhanjanit/survey_backend_645'
          }
        }
      }
    }
    stage('Deploy to Kubernetes') {
      steps {
        script {
             sh "kubectl rollout restart deploy ${KUBERNETES_DEPLOYMENT_NAME} -n ${KUBERNETES_NAMESPACE} --v=9"
        }
      }
    }
  }
}
