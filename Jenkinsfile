pipeline {
    agent any

    environment {
        VENV_DIR = 'venv'
    }

    stages {
        stage('Clone Repository') {
            steps {
                echo 'Repository cloned by Jenkins automatically.'
            }
        }

        stage('Setup Python Virtual Environment') {
            steps {
                sh 'python -m venv $VENV_DIR'
                sh './$VENV_DIR/Scripts/activate && pip install --upgrade pip'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh './$VENV_DIR/Scripts/activate && pip install -r requirements.txt'
            }
        }

        stage('Run Jupyter Notebook (optional)') {
            steps {
                sh './$VENV_DIR/Scripts/activate && jupyter nbconvert --to notebook --execute Handwritten_Digits_Recognition.ipynb'
            }
        }

        stage('Success') {
            steps {
                echo 'Pipeline completed successfully.'
            }
        }
    }

    post {
        failure {
            echo 'Pipeline failed!'
        }
    }
}
