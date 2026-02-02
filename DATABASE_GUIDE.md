# 🗄️ Datenbank Verbindungs-Guide

## ✅ Status Check

Alle Datenbanken sind UP und HEALTHY:
- ✅ MySQL 8.0 - Port 3306
- ✅ PostgreSQL 16 - Port 5432
- ✅ MongoDB 7 - Port 27017
- ✅ Redis 7 - Port 6379

## 📊 Connection Details

### 🐬 MySQL

**Connection String:**
```
Host: localhost
Port: 3306
User: devuser
Password: devpass
Database: devdb
```

**Root Access:**
```
User: root
Password: root
```

**CLI Test (von außen):**
```bash
mysql -h 127.0.0.1 -P 3306 -u devuser -pdevpass devdb
```

**CLI Test (im Container):**
```bash
docker exec -it mysql-dev mysql -udevuser -pdevpass devdb
```

**MySQL Workbench / DBeaver:**
```
Connection Name: Docker MySQL Dev
Host: localhost
Port: 3306
Username: devuser
Password: devpass
Database: devdb
```

---

### 🐘 PostgreSQL

**Connection String:**
```
Host: localhost
Port: 5432
User: devuser
Password: devpass
Database: devdb
```

**psql Connection String:**
```
postgresql://devuser:devpass@localhost:5432/devdb
```

**CLI Test (von außen):**
```bash
psql -h localhost -p 5432 -U devuser -d devdb
# Passwort: devpass
```

**CLI Test (im Container):**
```bash
docker exec -it postgres-dev psql -U devuser -d devdb
```

**pgAdmin / DBeaver:**
```
Connection Name: Docker PostgreSQL Dev
Host: localhost
Port: 5432
Database: devdb
Username: devuser
Password: devpass
```

---

### 🍃 MongoDB

**Connection String:**
```
mongodb://root:root@localhost:27017/devdb?authSource=admin
```

**Ohne Auth (für devdb):**
```
mongodb://localhost:27017/devdb
```

**CLI Test (von außen):**
```bash
mongosh "mongodb://root:root@localhost:27017/devdb?authSource=admin"
```

**CLI Test (im Container):**
```bash
docker exec -it mongodb-dev mongosh
```

**MongoDB Compass:**
```
Connection String: mongodb://root:root@localhost:27017
```

**Robo 3T / Studio 3T:**
```
Name: Docker MongoDB Dev
Address: localhost:27017
Authentication: root / root
Auth DB: admin
```

---

### 💾 Redis

**Connection String:**
```
Host: localhost
Port: 6379
Password: (kein Passwort)
```

**CLI Test (von außen):**
```bash
redis-cli -h localhost -p 6379
> PING
PONG
```

**CLI Test (im Container):**
```bash
docker exec -it redis-dev redis-cli
> PING
PONG
```

**Redis Desktop Manager / RedisInsight:**
```
Host: localhost
Port: 6379
Name: Docker Redis Dev
```

---

## 🐍 Python Beispiele

### MySQL mit Python
```python
import mysql.connector

# Von außen (localhost)
conn = mysql.connector.connect(
    host='localhost',
    port=3306,
    user='devuser',
    password='devpass',
    database='devdb'
)

# Von anderem Container (über Netzwerk)
conn = mysql.connector.connect(
    host='mysql-dev',
    user='devuser',
    password='devpass',
    database='devdb'
)

cursor = conn.cursor()
cursor.execute("SELECT VERSION()")
print(cursor.fetchone())
conn.close()
```

**Installation in Python Container:**
```bash
pip install mysql-connector-python
```

### PostgreSQL mit Python
```python
import psycopg2

# Von außen
conn = psycopg2.connect(
    host='localhost',
    port=5432,
    database='devdb',
    user='devuser',
    password='devpass'
)

# Von anderem Container
conn = psycopg2.connect(
    host='postgres-dev',
    database='devdb',
    user='devuser',
    password='devpass'
)

cursor = conn.cursor()
cursor.execute("SELECT version();")
print(cursor.fetchone())
conn.close()
```

**Installation:**
```bash
pip install psycopg2-binary
```

### MongoDB mit Python
```python
from pymongo import MongoClient

# Von außen
client = MongoClient('mongodb://root:root@localhost:27017/')

# Von anderem Container
client = MongoClient('mongodb://root:root@mongodb-dev:27017/')

db = client['devdb']
collection = db['users']

# Insert
collection.insert_one({'name': 'Alice', 'age': 25})

# Find
for user in collection.find():
    print(user)
```

**Installation:**
```bash
pip install pymongo
```

### Redis mit Python
```python
import redis

# Von außen
r = redis.Redis(host='localhost', port=6379, decode_responses=True)

# Von anderem Container
r = redis.Redis(host='redis-dev', port=6379, decode_responses=True)

# Set/Get
r.set('key', 'value')
print(r.get('key'))
```

**Installation:**
```bash
pip install redis
```

---

## ☕ Java Beispiele

### MySQL mit Java (Maven)
```xml
<!-- pom.xml -->
<dependency>
    <groupId>mysql</groupId>
    <artifactId>mysql-connector-java</artifactId>
    <version>8.0.33</version>
</dependency>
```

```java
import java.sql.*;

String url = "jdbc:mysql://localhost:3306/devdb";
String user = "devuser";
String password = "devpass";

Connection conn = DriverManager.getConnection(url, user, password);
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery("SELECT VERSION()");
rs.next();
System.out.println(rs.getString(1));
conn.close();
```

### PostgreSQL mit Java
```xml
<dependency>
    <groupId>org.postgresql</groupId>
    <artifactId>postgresql</artifactId>
    <version>42.6.0</version>
</dependency>
```

```java
String url = "jdbc:postgresql://localhost:5432/devdb";
Connection conn = DriverManager.getConnection(url, "devuser", "devpass");
```

---

## 🌐 Node.js Beispiele

### MySQL mit Node.js
```bash
npm install mysql2
```

```javascript
const mysql = require('mysql2');

const connection = mysql.createConnection({
  host: 'localhost',
  port: 3306,
  user: 'devuser',
  password: 'devpass',
  database: 'devdb'
});

connection.query('SELECT VERSION()', (err, results) => {
  console.log(results);
  connection.end();
});
```

### PostgreSQL mit Node.js
```bash
npm install pg
```

```javascript
const { Client } = require('pg');

const client = new Client({
  host: 'localhost',
  port: 5432,
  user: 'devuser',
  password: 'devpass',
  database: 'devdb'
});

await client.connect();
const result = await client.query('SELECT version()');
console.log(result.rows);
await client.end();
```

### MongoDB mit Node.js
```bash
npm install mongodb
```

```javascript
const { MongoClient } = require('mongodb');

const client = new MongoClient('mongodb://root:root@localhost:27017');
await client.connect();
const db = client.db('devdb');
const users = db.collection('users');
await users.insertOne({ name: 'Alice', age: 25 });
await client.close();
```

### Redis mit Node.js
```bash
npm install redis
```

```javascript
const redis = require('redis');
const client = redis.createClient({ host: 'localhost', port: 6379 });

await client.connect();
await client.set('key', 'value');
const value = await client.get('key');
console.log(value);
await client.disconnect();
```

---

## 🔧 Troubleshooting

### "Connection refused" Fehler

**Prüfe ob Container läuft:**
```bash
docker-compose ps
```

**Prüfe Container Logs:**
```bash
docker-compose logs mysql
docker-compose logs postgres
docker-compose logs mongodb
docker-compose logs redis
```

**Prüfe Health Status:**
```bash
docker inspect mysql-dev --format='{{.State.Health.Status}}'
```

### Ports bereits belegt

**Windows - Prüfe welcher Prozess Port nutzt:**
```cmd
netstat -ano | findstr :3306
netstat -ano | findstr :5432
netstat -ano | findstr :27017
netstat -ano | findstr :6379
```

**Linux/Mac:**
```bash
lsof -i :3306
lsof -i :5432
lsof -i :27017
lsof -i :6379
```

**Lösung:** Stoppe den anderen Service oder ändere Ports in docker-compose.yml

### Falsches Passwort

**Standard Credentials:**
- MySQL: `devuser` / `devpass` (oder `root` / `root`)
- PostgreSQL: `devuser` / `devpass`
- MongoDB: `root` / `root`
- Redis: kein Passwort

### Datenbank existiert nicht

**Alle Datenbanken erstellen automatisch:**
- MySQL: `devdb`
- PostgreSQL: `devdb`
- MongoDB: Automatisch beim ersten Zugriff

### Container zwischen Netzwerk

**Von einem Container zum anderen:**
Nutze den Service-Namen als Hostname:
- `mysql-dev` statt `localhost`
- `postgres-dev` statt `localhost`
- `mongodb-dev` statt `localhost`
- `redis-dev` statt `localhost`

---

## 📊 GUI Tools Empfehlungen

### MySQL
- **MySQL Workbench** - https://www.mysql.com/products/workbench/
- **DBeaver** - https://dbeaver.io/
- **HeidiSQL** - https://www.heidisql.com/

### PostgreSQL
- **pgAdmin** - https://www.pgadmin.org/
- **DBeaver** - https://dbeaver.io/
- **DataGrip** - https://www.jetbrains.com/datagrip/

### MongoDB
- **MongoDB Compass** - https://www.mongodb.com/products/compass
- **Robo 3T** - https://robomongo.org/
- **Studio 3T** - https://studio3t.com/

### Redis
- **RedisInsight** - https://redis.com/redis-enterprise/redis-insight/
- **Redis Desktop Manager** - https://resp.app/
- **Medis** - https://getmedis.com/

---

## ✅ Quick Test Script

```bash
# Test alle Datenbanken
echo "Testing MySQL..."
docker exec mysql-dev mysql -udevuser -pdevpass -e "SELECT 'OK' as MySQL;"

echo "Testing PostgreSQL..."
docker exec postgres-dev psql -U devuser -d devdb -c "SELECT 'OK' as PostgreSQL;"

echo "Testing MongoDB..."
docker exec mongodb-dev mongosh --quiet --eval "print('MongoDB OK')"

echo "Testing Redis..."
docker exec redis-dev redis-cli ping
```

---

**Alle Datenbanken sind funktionsfähig und bereit! 🎉**
