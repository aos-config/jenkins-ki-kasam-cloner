pipeline {
  agent any

  environment {
    Dockerimage = "my-docker"
    dockertag = "21"
  }
  stages {
    stage('print this step'){
      steps {
        sh "echo the build will start in the next step"
      }
    }
    
    stage('Build Docker Image with Dockerfile') {
      steps {
        script{
          def custom_image = docker.build("${Dockerimage}:${dockertag}")
          docker.withRegistry('https://index.docker.io/v1/','15b1ccc1-43a2-4fe9-b6be-fea709c90320'){
          custom_image.push()
          }
        }
      }
    }
  }
}
