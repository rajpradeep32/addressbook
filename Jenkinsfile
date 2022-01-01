pipeline {
    agent any
    parameters{
         string(name:'Test',defaultvalue:'Testenv',description:'This is a test env');
         booleanParam(name:'Unittestenv',defaultvalue:true,description:'Need to run unittest only if its test env');
         choice(name:'chooseenvversion',choices:['1.1','1.2','1.3']);
        
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
            
                when{
                    expression{
                        params.Unittestenv==true
                    }
                }
            steps {
               script {
                   
                   echo "test the job"
               }
            
        } 
      
    }
            
            
        stage('Package') {
            steps {
               script {
                   echo "package the job"
                   echo "chosen env version is ${params.chooseenvversion}"
               }
            }
        }
    }
  }
