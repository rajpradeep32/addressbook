pipeline {
    agent any
    parameters{
         string(name:'Test',defaultValue:'Testenv',description:'This is a test env');
         booleanParam(name:'Unittestenv',defaultValue:true,description:'Need to run unittest only if its test env');
         choice(name:'choose a env version',choices:['1.1','1.2','1.3']);
        
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
                        parameters.Unittestenv==true
                    }
                }
               script {
                   
                   echo "test the job"
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
