pipline {
     agent{
        docker {
            image 'mcr.microsoft.com/playwright:focal'
        }
     }
     stages {
        stage('install playwright') {
            steps {
                sh '''
                npm -i -D @playwright/test
                npx playwright install
                '''
            }

        }
        stage('help'){
            steps {
                sh 'npm playwright test --help'
            }
        }
        stage('test'){
            steps {
                sh '''
                npx playwright test --list
                npx playwright test
                '''
            }
        }


     }

}
