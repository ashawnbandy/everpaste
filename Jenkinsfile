pipeline {
   agent any
   def commit_id
   stages {
     stage('Preparation') {
       checkout scm
       sh "git rev-parse --short HEAD > .git/commit-id"                        
       commit_id = readFile('.git/commit-id').trim()
     }
     stage('docker build/push') {
       docker.withRegistry('http://newlands.techempower.com:5000/v2/', 'newlands.techempower.com:5000') {
         def app = docker.build("everpaste/everpaste:${commit_id}", '.').push()
       }
     }
  }
}

