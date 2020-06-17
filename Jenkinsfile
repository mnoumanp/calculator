pipeline {
    agent any
    
    stages  {
        stage('Git Pull') {
			steps{
				git credentialsId: '5e859315-4625-4eee-a48e-ad2f31bae9a1', url: 'https://github.com/mnoumanp/calculator.git'
			}
        }
		stage('mvn package') {
			steps{
				sh 'mvn package'
			}
        }
		stage('Docker login') {
        steps {
				
				sh 'docker login -u 9741223883 -p 9342994028'
			}
        }
		
		stage('build docker image') {
			steps{
				sh "docker build -t calculator ."
			}
        }
		stage('tag docker image') {
			steps{
				sh "docker tag calculator 9741223883/calculator"
			}
        }
		stage('push docker image') {
			steps{
				sh "docker push 9741223883/calculator"
			}
        }
		stage('deploy the application') {
			steps{
				sh 'docker run -it --name calculator -p 8081:8080  9741223883/calculator'
			}
        }
    }
}	
