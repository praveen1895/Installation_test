pipeline {
    
    agent any

    stages{
    stage('Deploy') {
      steps {
         script{
         
         sh "chmod +x ./installation.sh"
         sh "./installation.sh"  
         echo "Installation success"
         
        }
      }
    }
  }
}
