pipeline {
     agent any
     stages {
        stage('Build') {
            steps {
                sh 'docker build -t playwrightautomation'
            }

        }
        
        stage('Run'){
            steps {
                sh 'docker run -it playwrightautomation npm run test'
                
            }
        }


     }

}
