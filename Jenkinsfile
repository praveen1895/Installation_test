pipeline {
    
    agent {label 'worker1'}

    stages{
    stage('Deploy') {
      steps {
         script{
         sh "chmod +x ./installation/test.sh"
         ssh root@ip-172.31.95.149 sh "./installation/test.sh"    
         // sh "./installation/test.sh"   
         echo "Installation success"
         
        }
      }
    }
  }
}
