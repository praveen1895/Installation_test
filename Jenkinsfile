pipeline {
    
    agent {label 'slave1'}

    stages{
    stage('Deploy') {
      steps {
         script{
         sh "chmod +x ./installation/test.sh"
         sh 'ssh root@172.31.95.149 "./installation/test.sh" '   
         // sh "./installation/test.sh"   
         echo "Installation success"
         
        }
      }
    }
  }
}
