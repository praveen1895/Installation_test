pipeline {
    
    agent any

    environment 
    {
      CLUSTERNAME = "CL1" 
      VAULT_ROLE_ID = "ID1"
      VAULT_SECRET_ID = "VaultID"
      PROMETHEUS_Vault_Name = '362e1e7cca794c55ba1f48f04abf67d2-jw5ej577'
      IKS_CSEPROXY_DEV_Vault_Name = 'bt6thkcd0dl52il95ri0-8i0zgt8iofv2m0m5312k'
      MIS_DEV_Vault_Name = '7531d5d6c8aa43c1b44160ba66a7e778-cf93uk4m' 
    }
  parameters {
      choice choices: ['Image 1', 'Image 2', 'Image 3'], name: 'IMAGE' 
      string description: 'Enter a TAG name from registry, ex : V-1.10, V-1.11, V-1.13', name: 'TAG' 
      choice choices: ['PROMETHEUS', 'IKS-CSEPROXY-DEV', 'MIS-DEV-4'], description: 'select the cluster to update the image', name: 'CLUSTER'
              }
    stages{
    stage('Deploy') {
      steps {
         script{
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
