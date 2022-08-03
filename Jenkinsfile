pipeline {
    agent any

    stages {
        stage('Clean and clone repository') {
            steps {
                sh "docker-compose -f docker-compose.yml down --remove-orphans || exit 0;"
                git branch: 'main', url: 'https://github.com/balanalex12/liquibase.git'
                sh "docker-compose -f docker-compose.yml up -d "
            }
        }

        stage ("Waiting") {
            steps{
                echo "Waiting 10 seconds for deployment to complete prior starting smoke testing"
                sleep (10) // seconds
            }

        }

        stage("Build"){
            steps{
                sh "chmod +x gradlew"
                sh "./gradlew clean build"
                sh "./gradlew update"
            }
        }
    }
}
