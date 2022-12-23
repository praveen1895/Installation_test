pipeline {
    
    agent {label 'slave1'}

    stages{
    stage('Deploy') {
      steps {
         script{
         sh "chmod +x ./installation/test.sh"
         sh "./installation/test.sh"   
         echo "Installation success"
         
        }
      }
    }
  }
}
