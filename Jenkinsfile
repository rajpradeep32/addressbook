pipeline {
    agent any
    parameters{
         string(name:'Test',defaultvalue:'Testenv',description:'This is a test env');
         boolenparam(name:'Unittestenv';defaultvalue:true;description:'Need to run unittest only if its test env');
         choice(name:'choose a env version';choices:['1.1','1.2','1.3']);
        
    }
    
    stages {
        stage('Compile') {
            steps {
               script {
                   echo "compile the job"
               }
            }
}

            

        stage('UnitTest') {
            steps {
                when{
                    expression{
                        parameters.Test==true
                    }
               
               script {
                   
                   echo "test the job"
               }
                }
            }
        }
 
            
            
        stage('Package') {
            steps {
               script {
                   echo "package the job"
                   echo "chosen env version is ${parameters.choose a env version}"
               }
            }
        }
    }
  }
