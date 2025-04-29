# MNIST Handwritten Digit Recognizer - DevOps Integrated Project

A complete machine learning project to recognize handwritten digits using a Convolutional Neural Network (CNN), integrated with DevOps tools for CI/CD and deployment.

## Project Overview

This project demonstrates how to build, train, and deploy a machine learning model to classify handwritten digits using the MNIST dataset. The entire machine learning lifecycle is automated using DevOps tools like Docker, Jenkins, and GitHub Actions for continuous integration and delivery.

## Features

- CNN-based digit recognition using TensorFlow/Keras
- Flask/FastAPI REST API for real-time prediction
- Dockerized for easy deployment
- Jenkins CI/CD pipeline for automated build & deploy
- Monitoring support using Prometheus & Grafana
- Compatible with cloud or local deployment

## Project Structure


## Technologies Used

- **Language:** Python 3.8+
- **Libraries:** TensorFlow, Keras, NumPy, OpenCV
- **API Framework:** Flask / FastAPI
- **DevOps Tools:** Docker, Jenkins, GitHub Actions
- **Monitoring:** Prometheus, Grafana
- **Deployment:** DockerHub, Render/Vercel (optional)

## CI/CD Pipeline

The CI/CD process is handled by Jenkins and includes:

1. Git push triggers Jenkins build
2. Automated unit testing with PyTest
3. Docker image creation and push
4. Auto-deploy to server (local)
