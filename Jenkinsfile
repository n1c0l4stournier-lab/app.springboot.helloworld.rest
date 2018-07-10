pipeline {

    agent any


    triggers {

        pollSCM('*/1 * * * *')

    }
    
    stages {

        stage ('Checkout') {
            
            steps {
                checkout scm
            }

        }

        stage ('Build FatJAR and Docker image') {

            steps {
                sh "./mvnw clean package -DskipTests"
            }

        }

    }
}




