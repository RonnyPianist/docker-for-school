<div align="center">

# 🚀 Docker Development Environment

### Vollständige Multi-Language Development Environment mit VS Code im Browser

[![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)](https://www.docker.com/)
[![VS Code](https://img.shields.io/badge/VS_Code-007ACC?style=for-the-badge&logo=visual-studio-code&logoColor=white)](https://code.visualstudio.com/)
[![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)
[![Java](https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white)](https://openjdk.org/)
[![Node.js](https://img.shields.io/badge/Node.js-339933?style=for-the-badge&logo=node.js&logoColor=white)](https://nodejs.org/)

[Features](#-features) •
[Schnellstart](#-schnellstart) •
[Dokumentation](#-dokumentation) •
[Services](#-services) •
[Konfiguration](#%EF%B8%8F-konfiguration)

</div>

---

## 📖 Überblick

Ein komplettes, produktionsreifes Development Environment mit:
- **VS Code Server** in jedem Container - kein lokales VS Code nötig!
- **Vorinstallierte Extensions** für Python, Java und Web Development
- **Integrierte Datenbanken** (MySQL, PostgreSQL, MongoDB, Redis)
- **Automatische Konfiguration** - sofort einsatzbereit
- **Vollständig isoliert** - keine lokalen Installationen erforderlich

## ✨ Features

### 🐍 Python Development
- **Python 3.x** mit allen wichtigen Paketen
- **Data Science**: NumPy, Pandas, Matplotlib, Seaborn, Scikit-learn
- **Web Frameworks**: Flask, FastAPI, SQLAlchemy
- **Jupyter Lab & Notebooks** integriert
- **Code Quality**: Black, Flake8, Pylint, MyPy
- **Extensions**: Python, Jupyter, GitLens, ErrorLens, uvm.

### ☕ Java Development
- **OpenJDK 17** vorinstalliert
- **Build Tools**: Maven & Gradle
- **Spring Boot** Support mit Dashboard
- **Java Extension Pack** komplett
- **Code Quality**: SonarLint
- **Extensions**: Java Pack, Spring Boot, Lombok, GitLens, uvm.

### 🌐 Web Development
- **Node.js 20.x** + npm, yarn, pnpm
- **Frameworks**: React, Angular, Vue CLI vorinstalliert
- **Build Tools**: Vite, Webpack
- **TypeScript** Support
- **Live Server** für Live-Reload
- **Code Quality**: ESLint, Prettier
- **Extensions**: 20+ Web Dev Extensions

### 🗄️ Databases
- **MySQL 8.0** - Port 3306
- **PostgreSQL 16** - Port 5432
- **MongoDB 7** - Port 27017
- **Redis 7** - Port 6379

### 🛠️ Management Tools
- **Portainer** - Docker GUI Management
- **Health Checks** für alle Services
- **Auto-Restart** bei Fehlern
- **Persistent Volumes** für Daten

## 🚀 Schnellstart

### Voraussetzungen

**Nur Docker Desktop benötigt!** 🎉

- [Docker Desktop](https://www.docker.com/products/docker-desktop/) installieren
- Keine weiteren Installationen nötig

### Installation

1. **Repository klonen:**
```bash
git clone https://github.com/<dein-username>/docker-dev-environment.git
cd docker-dev-environment
```

2. **Alle Services starten:**
```bash
docker-compose up -d --build
```

> ⏱️ Erster Start dauert 5-10 Minuten (Images werden gebaut und Extensions installiert)

3. **Zugriff auf die Environments:**

| Service | URL | Beschreibung |
|---------|-----|--------------|
| 🐍 **Python Dev** | http://localhost:8080 | Python + Data Science + Jupyter |
| ☕ **Java Dev** | http://localhost:8081 | Java 17 + Spring Boot + Maven/Gradle |
| 🌐 **Web Dev** | http://localhost:8082 | Node.js + React/Vue/Angular |
| 🐳 **Portainer** | http://localhost:9000 | Docker Management UI |
| 🗄️ **MySQL** | localhost:3306 | MySQL Database |
| 🐘 **PostgreSQL** | localhost:5432 | PostgreSQL Database |
| 🍃 **MongoDB** | localhost:27017 | MongoDB Database |
| 💾 **Redis** | localhost:6379 | Redis Cache |

### Standard Credentials

**Datenbanken:**
- MySQL: `root` / `root` (oder `devuser` / `devpass`)
- PostgreSQL: `devuser` / `devpass`
- MongoDB: `root` / `root`
- Redis: Kein Passwort

**VS Code Server:** Kein Login erforderlich (Authentication deaktiviert)

## 📦 Services

### Python Development Container

**Vorinstallierte Pakages:**
```
numpy, pandas, matplotlib, seaborn, scikit-learn
jupyter, jupyterlab, ipython
flask, fastapi, uvicorn, sqlalchemy
pytest, black, flake8, pylint, mypy
```

**VS Code Extensions:**
- Python Extension Pack
- Jupyter Notebooks
- Black Formatter, Flake8, Ruff
- GitLens, Material Icons, ErrorLens
- IntelliCode

### Java Development Container

**Vorinstallierte Tools:**
```
OpenJDK 17
Maven (neueste Version)
Gradle (neueste Version)
```

**VS Code Extensions:**
- Java Extension Pack (Debugger, Test Runner, Maven, Gradle)
- Spring Boot Dashboard & Tools
- Lombok Support
- SonarLint
- GitLens, Material Icons, ErrorLens

### Web Development Container

**Vorinstallierte Tools:**
```
Node.js 20.x, npm, yarn, pnpm
TypeScript, ts-node
Angular CLI, Vue CLI, create-react-app, Vite
http-server, serve
prettier, eslint
```

**VS Code Extensions:**
- ESLint, Prettier
- Tailwind CSS IntelliSense
- Live Server
- React/Vue/Angular Extensions
- Auto Rename/Close Tag
- Import Cost, Path IntelliSense
- GitLens, Material Icons, ErrorLens

**Zusätzliche Ports:**
- 3000: React/Next.js
- 4200: Angular
- 5173: Vite
- 8000: Alternative HTTP Server

## 🛠️ Konfiguration

### Nur Dev Environments starten (ohne Datenbanken)

```bash
docker-compose up -d python java webdev portainer
```

### Einzelne Services starten

```bash
# Nur Python
docker-compose up -d python

# Nur Web Dev + Datenbanken
docker-compose up -d webdev mysql postgres
```

### Services stoppen

```bash
# Alle stoppen
docker-compose down

# Mit Volumes löschen (ACHTUNG: Daten gehen verloren!)
docker-compose down -v
```

### Logs ansehen

```bash
# Alle Logs
docker-compose logs -f

# Einzelner Service
docker-compose logs -f python
```

### Container neu bauen

```bash
# Alle neu bauen
docker-compose up -d --build

# Einzelnen neu bauen
docker-compose up -d --build python
```

## 📁 Projektstruktur

```
docker-dev-environment/
├── 📄 docker-compose.yml          # Haupt-Orchestrierung
├── 📄 Dockerfile.python           # Python Container + Extensions
├── 📄 Dockerfile.java             # Java Container + Extensions
├── 📄 Dockerfile.webdev           # WebDev Container + Extensions
│
├── 📁 python-projects/            # Deine Python Projekte
│   └── example.py                 # Beispiel
│
├── 📁 java-projects/              # Deine Java Projekte
│   └── pom.xml                    # Maven Beispiel
│
├── 📁 web-projects/               # Deine Web Projekte
│   └── index.html                 # Beispiel
│
├── 📄 README.md                   # Diese Datei
├── 📄 ANFORDERUNGEN.md            # System Requirements
├── 📄 GITHUB_UPLOAD.md            # GitHub Anleitung
└── 📄 .gitignore                  # Git Ignore Rules
```

## 💡 Verwendung

### Python Development

1. Öffne http://localhost:8080
2. Deine Projekte sind in `/home/coder/project`
3. Jupyter starten:
```bash
jupyter lab --ip=0.0.0.0 --no-browser --allow-root
```

### Java Development

1. Öffne http://localhost:8081
2. Maven Projekt erstellen:
```bash
mvn archetype:generate -DgroupId=com.example -DartifactId=myapp
```
3. Spring Boot App starten über Spring Boot Dashboard

### Web Development

1. Öffne http://localhost:8082
2. React App erstellen:
```bash
npm create vite@latest my-app -- --template react
cd my-app
npm install
npm run dev
```
3. Zugriff auf http://localhost:5173

### Datenbank Verbindungen

**MySQL Connection String:**
```
Host: localhost (oder mysql-dev innerhalb Container)
Port: 3306
User: devuser
Password: devpass
Database: devdb
```

**PostgreSQL Connection String:**
```
Host: localhost (oder postgres-dev innerhalb Container)
Port: 5432
User: devuser
Password: devpass
Database: devdb
```

**Von Containern aus:**
Nutze den Service-Namen als Hostname: `mysql-dev`, `postgres-dev`, `mongodb-dev`, `redis-dev`

## 🎨 VS Code Settings

Jeder Container hat vorkonfigurierte Settings:
- ✅ Format on Save aktiviert
- ✅ Auto Save nach 1 Sekunde
- ✅ Material Icon Theme
- ✅ Dark+ Theme
- ✅ Linting aktiviert
- ✅ Minimap aktiviert

**Custom Settings:** Editiere `/home/coder/.local/share/code-server/User/settings.json` im Container

## 🔧 Anpassungen

### Weitere VS Code Extensions hinzufügen

Bearbeite die entsprechende Dockerfile:

```dockerfile
RUN code-server --install-extension <publisher>.<extension-name>
```

Dann neu bauen:
```bash
docker-compose up -d --build <service-name>
```

### Weitere Python Packages

Bearbeite `Dockerfile.python`:
```dockerfile
RUN pip3 install --no-cache-dir <package-name>
```

### Ports ändern

Bearbeite `docker-compose.yml`:
```yaml
ports:
  - "8083:8080"  # Statt 8080:8080
```

## 🐛 Troubleshooting

### Container startet nicht

```bash
# Logs prüfen
docker-compose logs <service-name>

# Container neu starten
docker-compose restart <service-name>

# Alles neu bauen
docker-compose down
docker-compose up -d --build
```

### Port bereits belegt

Ändere Ports in `docker-compose.yml` oder stoppe andere Services:
```bash
# Windows
netstat -ano | findstr :<PORT>

# Linux/Mac
lsof -i :<PORT>
```

### Zu wenig Speicher

```bash
# Ungenutzte Images löschen
docker image prune -a

# Alle ungenutzten Ressourcen
docker system prune -a
```

### Extensions werden nicht geladen

Extensions sind in den Images gebacken. Bei Änderungen:
```bash
docker-compose up -d --build
```

## 📊 Performance Tipps

- **RAM**: Gib Docker Desktop mindestens 8 GB RAM
- **CPU**: Mindestens 4 Kerne zuweisen
- **Disk**: SSD verwenden, 50+ GB freier Speicher
- **WSL 2** aktivieren (Windows)

**Docker Desktop Settings:**
- Settings → Resources → Advanced
- Erhöhe Memory & CPU

## 🤝 Beitragen

Contributions willkommen! 

1. Fork das Repository
2. Erstelle einen Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit deine Änderungen (`git commit -m 'Add AmazingFeature'`)
4. Push zum Branch (`git push origin feature/AmazingFeature`)
5. Öffne einen Pull Request

Made with ❤️ and 🐳 Docker

</div>
