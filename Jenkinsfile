pipeline{
    agent any
    stages{
         stage("GitHub checkout....") {
            steps {
                script {
 
                    git branch: 'master', url: 'https://github.com/clement2019/Flask.git' 
                }
            }
        }
        stage("Build docker connecting....."){
            steps{
                sh 'printenv'
                sh 'git version'
                sh 'docker build . -t good777lord/f-app1.0'
            }
        }
         stage("push image to DockerHub"){
            steps{

               script {
                  
                 withCredentials([string(credentialsId: 'DockerID', variable: 'DockerID')]) {
                    sh 'docker login -u good777lord -p ${DockerID}'
            }
              sh 'docker push good777lord/f-app1.0:latest'
            }
        }
    }
    }
}
