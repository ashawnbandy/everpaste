pipeline {
   agent any
   stages {
     stage('Preparation') {
       checkout scm
     }
     stage('docker build/push') {
       docker.withRegistry('http://newlands.techempower.com:5000/v2/', 'newlands.techempower.com:5000') {
         def app = docker.build("everpaste/everpaste:${commit_id}", '.').push()
       }
     }
  }
}

