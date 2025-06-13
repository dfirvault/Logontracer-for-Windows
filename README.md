# 🚀 LogonTracer Launch Script for DFIR

This batch script automates the startup sequence for LogonTracer, a powerful tool for investigating Windows Event Logs, especially logon activity. It starts the necessary backend (Neo4j), launches LogonTracer, and opens the interface in your web browser.

---

## 🔧 Requirements

Ensure the following tools are installed and available at the specified paths:

- **Neo4j Desktop**
  - Path: `C:\Users\dfir\AppData\Local\Programs\neo4j-desktop\Neo4j Desktop 2.exe`
- **LogonTracer**
  - Python-based script located at: `C:\Tools\LogonTracer\logontracer.py`
- **Google Chrome**
  - Path: `C:\Program Files\Google\Chrome\Application\chrome.exe`

Python environment must support running LogonTracer (Python 3, required dependencies installed).

---

## 🛠 Script Workflow

1. **Start Neo4j Desktop**
2. **Wait 5 seconds** to allow Neo4j services to initialize
3. **Start LogonTracer**
   - Runs on port `8080`
   - Authenticates with Neo4j using:
     - Username: `neo4j`
     - Password: `training`
     - Server: `localhost`
4. **Wait 5 seconds**
5. **Open Chrome to**: [http://127.0.0.1:8080/](http://127.0.0.1:8080/)

---

## 📄 Usage

Double-click the `.bat` file or run it from the command line:

```cmd
logontracer_launcher.bat
