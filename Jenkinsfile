pipeline {
    
    agent {label 'slave1'}

    stages{
    stage('Deploy') {
      steps {
         script{
         sh "installation.sh"     
         if(CLUSTER == 'PROMETHEUS') {
          
            VAULT_NAME = '$PROMETHEUS_Vault_Name'
            sh "./iks_deploy.sh -vr $VAULT_ROLE_ID -vs $VAULT_SECRET_ID -vn $VAULT_NAME -sn"
         }
         else if(CLUSTER == 'IKS-CSEPROXY-DEV')
         { 
            VAULT_NAME = '$IKS_CSEPROXY_DEV_Vault_Name'
            sh "./iks_deploy.sh -vr {$VAULT_ROLE_ID} -vs $VAULT_SECRET_ID -vn $VAULT_NAME -sn"
         }
         else if(CLUSTER == 'MIS-DEV-4')
         {
            VAULT_NAME = '$MIS_DEV_Vault_Name'
            sh "./iks_deploy.sh -vr $VAULT_ROLE_ID -vs $VAULT_SECRET_ID -vn $VAULT_NAME -sn"
         } 
         else
         {
            echo "wrong cluster"
         }
        }
      }
    }
  }
}
