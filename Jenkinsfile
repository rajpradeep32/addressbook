pipeline {
    agent none
   /*parameters{
         string(name:'Test',defaultValue:'Testenv',description:'This is a test env');
         booleanParam(name:'Unittestenv',defaultValue:true,description:'Need to run unittest only if its test env');
         choice(name:'chooseenvversion',choices:['1.1','1.2','1.3']);
        
    } */

     tools{
        jdk 'myjava'
        maven 'mymaven'
    }

    
    stages {
        stage('Compile') {
             agent any
            steps {
               script {
                   //echo "compile the job"
                   sh 'mvn compile'
               }
            }
}

            

        stage('UnitTest') {

             agent {label 'linux_slave'}
            
               /* when{
                    expression{
                        params.Unittestenv==true
                    }
                }*/
            steps {
               script {
                   
                   //echo "test the job"
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
                   sh 'mvn package'
               }
            }
        }
    }
  }
