# DevOps Project — Containerized Node.js Application

A beginner-to-intermediate DevOps project that demonstrates a complete CI/CD workflow without AWS or SonarQube.

## Stack
- Node.js + Express
- Docker
- Docker Compose
- GitHub Actions
- Jenkins
- Kubernetes
- Nginx reverse proxy
- Shell scripting

## Project Flow

Developer → GitHub → GitHub Actions → Docker Build → Container Registry (optional) → Deployment

Jenkins is also included as an alternative CI/CD pipeline.

## Project Structure

```text
devops-project/
├── app/
│   ├── server.js
│   ├── package.json
│   └── package-lock.json
├── tests/
│   └── health.test.js
├── docker/
│   └── nginx.conf
├── k8s/
│   ├── namespace.yaml
│   ├── deployment.yaml
│   ├── service.yaml
│   └── ingress.yaml
├── scripts/
│   ├── build.sh
│   └── deploy.sh
├── .github/
│   └── workflows/
│       └── ci.yml
├── Dockerfile
├── docker-compose.yml
├── Jenkinsfile
├── .dockerignore
├── .gitignore
└── README.md
```

## Run locally

```bash
cd app
npm install
npm start
```

Open http://localhost:3000

## Run with Docker

```bash
docker build -t devops-node-app:1.0 .
docker run -p 3000:3000 devops-node-app:1.0
```

## Run with Docker Compose

```bash
docker compose up --build -d
```

Open http://localhost:3000

Stop:

```bash
docker compose down
```

## Run tests

```bash
cd app
npm install
npm test
```

## Jenkins

Create a Jenkins Pipeline job and connect it to this repository. Jenkinsfile performs:

1. Checkout
2. Install dependencies
3. Test
4. Docker image build
5. Docker Compose deployment

No AWS or SonarQube is required.

## GitHub Actions

The workflow in `.github/workflows/ci.yml`:

1. Checks out source code
2. Sets up Node.js
3. Installs dependencies
4. Runs tests
5. Builds the Docker image

The workflow does not require AWS or SonarQube.

## Kubernetes

Make sure a local Kubernetes cluster is available, such as Minikube or Docker Desktop Kubernetes.

```bash
kubectl apply -f k8s/namespace.yaml
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
```

Check:

```bash
kubectl get pods -n devops-demo
kubectl get svc -n devops-demo
```

## Useful interview explanation

This project demonstrates source control, automated testing, containerization, CI/CD, infrastructure deployment using Kubernetes, and basic reverse-proxy configuration. AWS and SonarQube were intentionally excluded.
