pipeline {
  agent any

  environment {
    Dockerimage = "my-docker:20"
  }
  stages {
    stage('Build Docker Image with Dockerfile') {
      steps {
        // Build the Docker image using the environment variable
        sh "docker build -t ${Dockerimage} ."
        // Print a confirmation message
        sh "echo The image is built"
      }
    }
  }
}
