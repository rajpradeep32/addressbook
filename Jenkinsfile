pipeline {
    agent none
   /*parameters{
         string(name:'Test',defaultValue:'Testenv',description:'This is a test env');
         booleanParam(name:'Unittestenv',defaultValue:true,description:'Need to run unittest only if its test env');
         choice(name:'chooseenvversion',choices:['1.1','1.2','1.3']);
        
    } */

   /* tools{
        jdk 'myjava'
        maven 'mymaven'
    }*/

    
    stages {
        stage('Compile') {
             agent any
            steps {
               script {
                   //echo "compile the job"
                   git 'https://github.com/rajpradeep32/addressbook.git'
                   git pull origin master
                   sh 'mvn compile'
               }
            }
}

            

        stage('UnitTest') {

             agent {label 'linux_slave'}
            
               
            steps {
               script {
                   
                sh 'sudo yum install maven -y'
                  git 'https://github.com/rajpradeep32/addressbook.git'
            //  cd /tmp/workspace/pipeline1
                   sh 'mvn test'
               }
            
        } 
      
    }
            
            
        stage('Package') {
      
        
           /* input{
                message "Select a pckg version"
                ok "click version"
                parameters{
                choice(name:'selectionpackageversion',choices:['1.1','1.2','1.3']);
                }
            }*/

             agent any
            steps {             
               script {
                  // echo "package the job"
                   //echo "chosen env version is ${params.chooseenvversion}"
                   
                   sshagent(['user2']) {
                       sh "scp -o StrictHostKeyChecking=no serverscript.sh ec2-user@172.31.22.31:/home/ec2-user"
                       sh "ssh -o StrictHostKeyChecking=no ec2-user@172.31.22.31 'bash ~/serverscript.sh'"
                      
                        }
                   
               }
            }
        }
    }
  }

