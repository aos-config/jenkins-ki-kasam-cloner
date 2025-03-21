pipeline {
  agent any

  environment {
    Dockerimage = "my-docker:20"
  }
  stages {
    stage('Build Docker Image with Dockerfile') {
      steps {
        // Build the Docker image using the environment variable
        bat "docker build -t %Dockerimage% ."
        // Print a confirmation message
        bat "echo The image is built"
      }
    }
  }
}
