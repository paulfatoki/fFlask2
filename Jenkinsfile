pipeline{
    agent any
    stages{
         stage("GitHub checkout....") {
            steps {
                script {
 
                    git branch: 'master', url: 'https://github.com/paulfatoki/flask.git'
                }
            }
        }
        stage("Build docker is connecting....."){
            steps{
                sh 'printenv'
                sh 'git version'
                sh 'docker build . -t paulfatoki/f-app1.0'
            }
        }
         stage("pushing image to DockerHub"){
            steps{

               script {
                  
                 withCredentials([string(credentialsId: 'dockerid', variable: 'dockerid')]) {
                    sh 'docker login -u paulfatoki -p ${dockerid}'
            }
              sh 'docker push paulfatoki/f-app1.0:latest'
            }
        }
    }
    }
}
