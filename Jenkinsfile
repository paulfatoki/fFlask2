pipeline{
    agent any
    stages{
         stage("GitHub checkout....") {
            steps {
                script {
 
                    git branch: 'main', url: 'https://github.com/clement2019/python_flask_app.git' 
                }
            }
        }
        stage("Build docker on going"){
            steps{
                sh 'printenv'
                sh 'git version'
                sh 'docker build . -t good777lord/imag2.0'
            }
        }
         stage("push image to DockerHub"){
            steps{

               script {
                  
                 withCredentials([string(credentialsId: 'DockerID', variable: 'DockerID')]) {
                    sh 'docker login -u good777lord -p ${DockerID}'
            }
              sh 'docker push good777lord/imag2.0:latest'
            }
        }
    }
    }
}
