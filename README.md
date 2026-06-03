SEIP Assignment 1: Cloud-Native DevOps Pipeline

A Node.js Express API containerized with Docker and deployed on a local Kubernetes cluster (Minikube). The CI/CD pipeline runs automatically via GitHub Actions and pushes the image to GHCR on every push to main.

Prerequisites needed for the project: 

1) Git & a verified GitHub Account

2) Docker Desktop / Docker Engine 
(https://docs.docker.com/desktop/setup/install/windows-install/)

3) Minikube & kubectl (https://minikube.sigs.k8s.io/docs/start/?arch=%2Fwindows%2Fx86-64%2Fstable%2F.exe+download, https://kubernetes.io/docs/tasks/tools/install-kubectl-windows/)

How to run it with commands

1. Clone the repo and get into the file

git clone https://github.com/STYLIANIPANOPOULOU/seip_assignment_1_2026.git
cd seip_assignment_1_2026


2. Start Minikube

minikube start

3. Apply the manifests

kubectl apply -f k8s/

4. Check that the pods are up

kubectl get pods

*All 3 should show Running.

5. Port-forward to access locally

kubectl port-forward service/seip-assignment-1-service 8080:80


Endpoints:

http://localhost:8080/ : Greeting from ConfigMap

http://localhost:8080/health : Health check

http://localhost:8080/secure-config : Auth status + masked secret