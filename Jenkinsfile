pipeline {
    
    agent {label 'worker1'}

    stages{
    stage('Deploy') {
      steps {
         script{
         
         sh "chmod +x ./installation/test.sh"
         sh "cp -R ./installation/test.sh /home/worker1/workspace/Installation-test1"  
         sh "/home/worker1/workspace/Installation-test1/installation/test.sh"   
         echo "Installation success"
         
        }
      }
    }
  }
}
