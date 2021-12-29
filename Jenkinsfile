pipeline {
    agent any

    
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
               script {
                   echo "test the job"
               }
            }
        }
 
            
            
        stage('Package') {
            steps {
               script {
                   echo "package the job"
               }
            }
        }
    }
  }
