# Stirling-PDF Docker

Dockerized Stirling-PDF (Debian + OpenJDK 17) – bereit für ARM64 & x86_64.

## 🧱 Nutzung

1. Entpacke das ZIP und ändere ggf. `docker-compose.yml`.
2. Nutze `docker compose up --build` oder lade es in Portainer via "Upload".
3. Zugriff über http://<host>:1312

## 🔄 Update

Passe `Dockerfile` oder `docker-compose.yml` an, dann:  
- lokal: `docker compose up --build`
- Portainer: "Re-deploy the stack"