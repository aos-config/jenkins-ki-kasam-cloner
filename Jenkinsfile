pipeline {
  agent any

  environment {
    Dockerimage = "arijitanand/mytestimage"
    dockertag = "22"
  }
  stages {
    stage('installations of kubectl'){
      steps {
        curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
        sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
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

    stage('This is the kubernetes deployment: '){
      steps{
        sh "kubectl create -f deployment.yml"
      }
    }
  }
}
