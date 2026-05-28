# Gala Projekts — CI/CD Pipeline

Git → Build → Test → Docker → Docker Hub

## Projekta struktūra

gala_projekts/
├── index.html
├── Dockerfile
├── test.sh
├── README.md
└── .github/
    └── workflows/
        └── deploy.yml

## Lokāla palaišana ar Podman

podman build -t gala-projekts .
podman run -d -p 8080:80 --name gala gala-projekts

## Testi

chmod +x test.sh
./test.sh

## GitHub Secrets

| Secret | Vērtība |
|--------|---------|
| DOCKERHUB_USERNAME | Tavs Docker Hub lietotājvārds |
| DOCKERHUB_TOKEN | Docker Hub Access Token |