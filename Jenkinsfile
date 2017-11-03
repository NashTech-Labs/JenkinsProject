pipeline {
	agent any
	stages{
		stage('Test') {
			steps{
                        sh 'scripts/test.sh'
			}
		}
		stage('Build Artifacts') {
			steps{
			sh 'scripts/build.sh'
			}
		}
//		stage('Build and Push docker image') {
//			steps{
//			sh 'scripts/build-docker.sh'
//			}
//		}
		stage('Deploy Application') {
			steps{
			sh 'scripts/deploy.sh'
			}
		}
	}
}
