# EZ Server Management (ESM) Docker Setup

This repository contains a Docker container ready to run **EZ Server Management (ESM)** with PHP5 and Apache2.

---

## Requirements

Before starting, make sure you have:

- An Ubuntu/Debian or compatible system.
- A user with `sudo` privileges.

---

## Installation

1. **Update the system and install dependencies:**

```bash
sudo apt update
sudo apt install git curl wget sudo -y
```
2. **Install Docker:**

```bash
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh
```

3. **Clone the ESM repository:**

```bash
git clone https://github.com/thebooth0/Docker_ESM.git
cd Docker_ESM
```

4. **Start the Docker container:**
```bash
docker compose up -d
```
## Accessing the ESM Interface
Once the container is running, the web interface is available at:
`http://127.0.0.1:8088`
