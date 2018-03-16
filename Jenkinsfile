pipeline {
  agent { label 'docker' }
  options {
    timeout(time: 1, unit: 'HOURS')
  }
  parameters {
    string(name: 'REGISTRY', defaultValue: 'dev.qa.sw.ru:30500', description: 'image registry to push')
    string(name: 'IMG_NAME', defaultValue: 'kbuild-env', description: 'image name')
  }
  stages {
    // TODO: Add auto-tests for image
    stage('build and push') {
      parallel {
        stage('alpine')
         steps {
           container('docker') {
             //TODO use proper image with make 
             sh 'apk --no-cache add make'
             sh 'REGISTRY=$REGISTRY; IMG_NAME=$IMG_NAME; make alpine'
    	   }
         }////
        stage('centos7')
         steps {
           container('docker') {
             //TODO use proper image with make 
             sh 'apk --no-cache add make'
             sh 'REGISTRY=$REGISTRY; IMG_NAME=$IMG_NAME; make centos7'
    	   }
         }////
        stage('vz7')
         steps {
           container('docker') {
             //TODO use proper image with make 
             sh 'apk --no-cache add make'
             sh 'REGISTRY=$REGISTRY; IMG_NAME=$IMG_NAME; make vz7'
    	   }
         }////

      }
    }
  }
}
