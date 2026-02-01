# 🎨 Projekt-Templates und Beispiele

## 📁 Python Beispiele

### 1. Einfaches Python Script
```python
# python-projects/hello.py
print("Hello from Python Container!")

import numpy as np
import pandas as pd

# NumPy Array
arr = np.array([1, 2, 3, 4, 5])
print(f"Array: {arr}")
print(f"Mean: {arr.mean()}")

# Pandas DataFrame
df = pd.DataFrame({
    'name': ['Alice', 'Bob', 'Charlie'],
    'age': [25, 30, 35]
})
print(df)
```

### 2. Flask Web App
```python
# python-projects/app.py
from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def hello():
    return jsonify({"message": "Hello from Flask!"})

@app.route('/api/data')
def get_data():
    return jsonify({
        "users": [
            {"name": "Alice", "age": 25},
            {"name": "Bob", "age": 30}
        ]
    })

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)
```

### 3. Jupyter Notebook
Im Container ausführen:
```bash
jupyter lab --ip=0.0.0.0 --port=8888 --no-browser --allow-root
```

## ☕ Java Beispiele

### 1. Maven Spring Boot Project
```bash
# Im Java Container Terminal
mvn archetype:generate \
    -DgroupId=com.example \
    -DartifactId=demo \
    -DarchetypeArtifactId=maven-archetype-quickstart \
    -DinteractiveMode=false

cd demo
```

### 2. Simple Spring Boot Controller
```java
// java-projects/demo/src/main/java/com/example/HelloController.java
package com.example;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
    
    @GetMapping("/")
    public String hello() {
        return "Hello from Spring Boot!";
    }
    
    @GetMapping("/api/status")
    public Map<String, Object> status() {
        return Map.of(
            "status", "running",
            "version", "1.0.0",
            "timestamp", System.currentTimeMillis()
        );
    }
}
```

### 3. pom.xml für Spring Boot
```xml
<!-- java-projects/demo/pom.xml -->
<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0">
    <modelVersion>4.0.0</modelVersion>
    
    <parent>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-parent</artifactId>
        <version>3.2.0</version>
    </parent>
    
    <groupId>com.example</groupId>
    <artifactId>demo</artifactId>
    <version>1.0.0</version>
    
    <dependencies>
        <dependency>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-starter-web</artifactId>
        </dependency>
    </dependencies>
    
    <build>
        <plugins>
            <plugin>
                <groupId>org.springframework.boot</groupId>
                <artifactId>spring-boot-maven-plugin</artifactId>
            </plugin>
        </plugins>
    </build>
</project>
```

## 🌐 Web Development Beispiele

### 1. React App mit Vite
```bash
# Im WebDev Container Terminal
npm create vite@latest my-react-app -- --template react
cd my-react-app
npm install
npm run dev
```

### 2. Simple HTML/CSS/JS
```html
<!-- web-projects/index.html -->
<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dev Environment</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
        }
        .container {
            background: rgba(255,255,255,0.1);
            padding: 30px;
            border-radius: 10px;
            backdrop-filter: blur(10px);
        }
        button {
            background: white;
            color: #667eea;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        button:hover {
            background: #f0f0f0;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>🚀 Docker Dev Environment</h1>
        <p>Diese Seite läuft in deinem Web Dev Container!</p>
        <button onclick="fetchData()">API Test</button>
        <div id="result"></div>
    </div>

    <script>
        async function fetchData() {
            const result = document.getElementById('result');
            result.innerHTML = '<p>Laden...</p>';
            
            try {
                const response = await fetch('http://localhost:8080/api/data');
                const data = await response.json();
                result.innerHTML = `<pre>${JSON.stringify(data, null, 2)}</pre>`;
            } catch (error) {
                result.innerHTML = `<p style="color: #ff6b6b;">Fehler: ${error.message}</p>`;
            }
        }
    </script>
</body>
</html>
```

### 3. Express.js API
```javascript
// web-projects/server.js
const express = require('express');
const app = express();
const port = 3000;

app.use(express.json());

app.get('/', (req, res) => {
    res.json({ message: 'Hello from Express!' });
});

app.get('/api/users', (req, res) => {
    res.json([
        { id: 1, name: 'Alice', email: 'alice@example.com' },
        { id: 2, name: 'Bob', email: 'bob@example.com' }
    ]);
});

app.post('/api/users', (req, res) => {
    const user = req.body;
    res.status(201).json({ id: Date.now(), ...user });
});

app.listen(port, '0.0.0.0', () => {
    console.log(`Server running on http://localhost:${port}`);
});
```

```json
// web-projects/package.json
{
  "name": "express-api",
  "version": "1.0.0",
  "main": "server.js",
  "scripts": {
    "start": "node server.js",
    "dev": "nodemon server.js"
  },
  "dependencies": {
    "express": "^4.18.2"
  },
  "devDependencies": {
    "nodemon": "^3.0.2"
  }
}
```

## 🗄️ Database Connection Beispiele

### MySQL Connection (Python)
```python
import mysql.connector

conn = mysql.connector.connect(
    host='mysql-dev',  # oder 'localhost' von außen
    user='devuser',
    password='devpass',
    database='devdb'
)

cursor = conn.cursor()
cursor.execute("SELECT VERSION()")
version = cursor.fetchone()
print(f"MySQL version: {version[0]}")

conn.close()
```

### PostgreSQL Connection (Python)
```python
import psycopg2

conn = psycopg2.connect(
    host='postgres-dev',  # oder 'localhost' von außen
    database='devdb',
    user='devuser',
    password='devpass'
)

cursor = conn.cursor()
cursor.execute("SELECT version();")
version = cursor.fetchone()
print(f"PostgreSQL version: {version[0]}")

conn.close()
```

### MongoDB Connection (Python)
```python
from pymongo import MongoClient

client = MongoClient('mongodb://root:root@mongodb-dev:27017/')
db = client['devdb']
collection = db['users']

# Insert
collection.insert_one({'name': 'Alice', 'age': 25})

# Find
users = collection.find()
for user in users:
    print(user)
```

### Redis Connection (Python)
```python
import redis

r = redis.Redis(host='redis-dev', port=6379, decode_responses=True)

# Set
r.set('key', 'value')

# Get
value = r.get('key')
print(value)
```

## 🚀 Quick Start Scripts

### Python Flask App starten
```bash
cd python-projects
python app.py
# Zugriff: http://localhost:5000
```

### Java Spring Boot starten
```bash
cd java-projects/demo
mvn spring-boot:run
# Zugriff: http://localhost:8080
```

### Node.js Express starten
```bash
cd web-projects
npm install
npm start
# Zugriff: http://localhost:3000
```

## 📚 Weitere Ressourcen

- [Python Documentation](https://docs.python.org/3/)
- [Java Documentation](https://docs.oracle.com/en/java/)
- [Spring Boot Guides](https://spring.io/guides)
- [Node.js Documentation](https://nodejs.org/docs/)
- [React Documentation](https://react.dev/)
- [Vue.js Documentation](https://vuejs.org/)

---

**Tipp:** Alle Beispiele sind sofort in den Containern ausführbar! 🎉
