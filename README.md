<div align="center">

# 🚀 Docker Development Environment

### Vollständige Multi-Language Development mit VS Code im Browser

[![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)](https://www.docker.com/)
[![VS Code](https://img.shields.io/badge/VS_Code-007ACC?style=for-the-badge&logo=visual-studio-code&logoColor=white)](https://code.visualstudio.com/)
[![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)
[![Java](https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white)](https://openjdk.org/)
[![Node.js](https://img.shields.io/badge/Node.js-339933?style=for-the-badge&logo=node.js&logoColor=white)](https://nodejs.org/)

**Professionelle Entwicklungsumgebung mit Python, Java und Web Development - alles im Browser!**

[Features](#-features) • [Schnellstart](#-schnellstart) • [Services](#-services) • [Verwendung](#-verwendung)

</div>

---

## 📖 Überblick

Komplettes Development Environment mit VS Code im Browser:
- ✅ **Keine lokale Installation** von Python, Java oder Node.js nötig
- ✅ **VS Code Server** in jedem Container
- ✅ **30+ Extensions** vorinstalliert
- ✅ **Automatisch konfiguriert** - einfach starten und loslegen
- ✅ **Persistent Storage** für alle Projekte

## ✨ Features

### 🐍 Python Development
- Python 3.x mit allen wichtigen Paketen
- Data Science: NumPy, Pandas, Matplotlib, Seaborn, Scikit-learn
- Web: Flask, FastAPI, SQLAlchemy
- Jupyter Lab & Notebooks
- Code Quality: Black, Flake8, Pylint, MyPy, Ruff
- **14 VS Code Extensions** inkl. Python, Jupyter, GitLens

### ☕ Java Development
- OpenJDK 17
- Build Tools: Maven & Gradle
- Spring Boot Support mit Dashboard
- Java Extension Pack komplett
- SonarLint für Code Quality
- **12 VS Code Extensions** inkl. Spring Boot, Lombok

### 🌐 Web Development
- Node.js 20.x + npm, yarn, pnpm
- Frameworks: React, Angular, Vue CLI
- Build Tools: Vite, TypeScript
- Live Server für Live-Reload
- ESLint, Prettier
- **20+ VS Code Extensions**

### 🐳 Portainer
- Docker Management GUI
- Container-Überwacht
- Logs & Stats in Echtzeit

## 🚀 Schnellstart

### Voraussetzung

**Nur Docker Desktop!** 🎉

Download: [Docker Desktop](https://www.docker.com/products/docker-desktop/)

### Installation

**1. Repository klonen:**
```bash
git clone https://github.com/<username>/docker-dev-environment.git
cd docker-dev-environment
```

**2. Starten (Windows):**
```bash
start.bat
```

**2. Starten (Linux/Mac):**
```bash
chmod +x start.sh
./start.sh
```

**Oder manuell:**
```bash
docker-compose up -d --build
```

> ⏱️ Erster Start: 5-10 Minuten (Images werden gebaut)

**3. Zugriff:**

| Service | URL | Beschreibung |
|---------|-----|--------------|
| 🐍 Python | http://localhost:8080 | Python + Data Science + Jupyter |
| ☕ Java | http://localhost:8081 | Java + Spring Boot + Maven |
| 🌐 Web Dev | http://localhost:8082 | Node.js + React/Vue/Angular |
| 🐳 Portainer | http://localhost:9000 | Docker Management |

## 📦 Services im Detail

### Python Container
```
✓ Python 3.x
✓ NumPy, Pandas, Matplotlib, Seaborn, Scikit-learn
✓ Flask, FastAPI, SQLAlchemy, Uvicorn
✓ Jupyter Lab, IPython
✓ Pytest, Black, Flake8, Pylint, MyPy, Ruff
✓ VS Code Extensions: Python, Jupyter, GitLens, ErrorLens, Material Icons
```

### Java Container
```
✓ OpenJDK 17
✓ Maven & Gradle
✓ Spring Boot Tools
✓ VS Code Extensions: Java Pack, Spring Boot, Lombok, SonarLint, GitLens
```

### Web Dev Container
```
✓ Node.js 20.x, npm, yarn, pnpm
✓ TypeScript, ts-node
✓ Angular CLI, Vue CLI, create-react-app, Vite
✓ ESLint, Prettier, http-server
✓ VS Code Extensions: ESLint, Prettier, Live Server, Tailwind CSS, React/Vue/Angular
✓ Ports: 3000 (React), 4200 (Angular), 5173 (Vite), 8000 (HTTP)
```

## 💡 Verwendung

### Python Projekt starten

1. Öffne http://localhost:8080
2. Terminal öffnen
3. Code schreiben:

```python
# hello.py
import pandas as pd
import numpy as np

df = pd.DataFrame({'numbers': np.random.rand(10)})
print(df.describe())
```

**Jupyter starten:**
```bash
jupyter lab --ip=0.0.0.0 --no-browser --allow-root
```

### Java Projekt erstellen

1. Öffne http://localhost:8081
2. Terminal öffnen
3. Maven Projekt erstellen:

```bash
mvn archetype:generate \
  -DgroupId=com.example \
  -DartifactId=myapp \
  -DarchetypeArtifactId=maven-archetype-quickstart \
  -DinteractiveMode=false
```

**Spring Boot starten:**
- Nutze das Spring Boot Dashboard in VS Code

### Web Projekt erstellen

1. Öffne http://localhost:8082
2. Terminal öffnen
3. React App mit Vite:

```bash
npm create vite@latest my-app -- --template react
cd my-app
npm install
npm run dev
```

Zugriff: http://localhost:5173

## 🛠️ Befehle

### Starten/Stoppen

**Windows:**
```cmd
start.bat      # Starten
stop.bat       # Stoppen
rebuild.bat    # Neu bauen
logs.bat       # Logs anzeigen
status.bat     # Status prüfen
```

**Linux/Mac:**
```bash
./start.sh     # Starten
./stop.sh      # Stoppen
./rebuild.sh   # Neu bauen
./logs.sh      # Logs anzeigen
```

**Docker Compose:**
```bash
docker-compose up -d           # Starten
docker-compose down            # Stoppen
docker-compose logs -f         # Logs
docker-compose ps              # Status
docker-compose up -d --build   # Neu bauen
```

### Einzelne Services

```bash
# Nur Python starten
docker-compose up -d python

# Python und Web Dev
docker-compose up -d python webdev
```

## 🎨 Vorkonfiguriert

Jeder Container hat perfekte VS Code Settings:
- ✅ Format on Save
- ✅ Auto Save (1 Sekunde)
- ✅ Dark+ Theme
- ✅ Material Icon Theme
- ✅ Linting aktiviert
- ✅ Minimap aktiviert

## 📁 Projektstruktur

```
docker-dev-environment/
├── docker-compose.yml          # Haupt-Konfiguration
├── Dockerfile.python           # Python + Extensions
├── Dockerfile.java             # Java + Extensions
├── Dockerfile.webdev           # WebDev + Extensions
│
├── python-projects/            # Deine Python Projekte
├── java-projects/              # Deine Java Projekte
├── web-projects/               # Deine Web Projekte
│
├── start.bat / start.sh        # Start Script
├── stop.bat / stop.sh          # Stop Script
├── rebuild.bat / rebuild.sh    # Rebuild Script
├── logs.bat / logs.sh          # Logs Script
└── status.bat                  # Status Script
```

## 🔧 Anpassungen

### Extensions hinzufügen

Bearbeite Dockerfile:
```dockerfile
RUN code-server --install-extension <extension-id>
```

Dann neu bauen:
```bash
docker-compose up -d --build
```

### Ports ändern

Bearbeite `docker-compose.yml`:
```yaml
ports:
  - "8090:8080"  # Neuer Port
```

## 🐛 Troubleshooting

**Container startet nicht:**
```bash
docker-compose logs <service-name>
docker-compose restart <service-name>
```

**Port belegt:**
```bash
# Windows
netstat -ano | findstr :8080

# Linux/Mac
lsof -i :8080
```

**Aufräumen:**
```bash
docker system prune -a
```

## 📊 Performance

**Empfohlen:**
- RAM: 8+ GB (besser 16 GB)
- CPU: 4+ Kerne
- SSD mit 30+ GB freiem Speicher

**Docker Desktop Settings:**
Settings → Resources → Advanced
- Memory: 8 GB
- CPUs: 4

## 🤝 Beitragen

Pull Requests willkommen!

1. Fork das Projekt
2. Feature Branch erstellen
3. Änderungen committen
4. Pull Request öffnen

Made with ❤️ and 🐳 Docker

</div>
