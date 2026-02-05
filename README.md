# Development Environment mit VS Code Containern

Diese Umgebung bietet 3 VS Code Container für verschiedene Programmiersprachen sowie Portainer als Admin-Oberfläche.

## Ordnerstruktur

- `windows/` - Version für Windows
- `linux/` - Version für Linux

## Container

1. **Portainer** - Admin-Oberfläche für Docker
   - Port: 9000
   - URL: http://localhost:9000

2. **VS Code Python** - Python-Entwicklung
   - Port: 8001
   - Passwort: python123
   - Enthält: Python3, pip, venv, git

3. **VS Code Java** - Java-Entwicklung
   - Port: 8002
   - Passwort: java123
   - Enthält: JDK, Maven, Gradle, git

4. **VS Code Web** - Webentwicklung
   - Port: 8003
   - Passwort: web123
   - Enthält: Node.js 20, npm, git
   - Zusätzliche Ports: 3000, 5173

## Windows Installation

```batch
cd windows
start.bat
```

Zum Stoppen:
```batch
stop.bat
```

## Linux Installation

```bash
cd linux
chmod +x start.sh stop.sh
./start.sh
```

Zum Stoppen:
```bash
./stop.sh
```

## Erste Schritte

1. Starte die Container mit dem entsprechenden Script
2. Öffne Portainer: http://localhost:9000
3. Erstelle beim ersten Start einen Admin-Account
4. Öffne die VS Code Instanzen:
   - Python: http://localhost:8001
   - Java: http://localhost:8002
   - Web: http://localhost:8003

## Passwörter

- Python VS Code: `python123`
- Java VS Code: `java123`
- Web VS Code: `web123`

Diese Passwörter können in der `docker-compose.yml` geändert werden.

## Daten-Persistenz

Alle Container nutzen Docker Volumes für persistente Datenspeicherung:
- Projekte bleiben erhalten auch nach Container-Neustart
- VS Code Konfiguration wird gespeichert
- Portainer-Daten bleiben erhalten
