# Web Scraper

### Extract Images • Videos • Links from Any Website

A sleek and lightweight **Spring Boot–powered web scraping API** capable of extracting images, links, and videos from any publicly accessible webpage.

---

## 🚀 Features

* **Scrape Any Website** using a single GET endpoint
* **Extract Images, Videos, and Hyperlinks** cleanly using Jsoup
* **Fast & Lightweight** – optimized for performance
* **Docker Ready** – build and deploy instantly
* **Frontend Compatible** – simple UI can consume this API easily
* **Clean JSON Output** for integration with other services

---

## 📸 Preview (Optional UI)

<img width="1891" height="930" alt="image" src="https://github.com/user-attachments/assets/793c24e3-1dcb-4abd-af6e-fecdac43f10c" />


---

## 📦 Tech Stack

**Backend:** Spring Boot • Java (17/21/25) • Jsoup
**Build Tools:** Maven Wrapper
**Containerization:** Docker (multi-stage build)
**Languages in Repo:** Java, HTML, Dockerfile

---

# 🧠 How It Works

### 1. Client sends:

```
GET /api/scrape?url=https://example.com
```

### 2. Service scrapes:

* `<img src="">`
* `<a href="">`
* `<video src="">`

### 3. Returns JSON:

```json
{
  "images": ["https://.../image1.jpg"],
  "videos": ["https://.../video.mp4"],
  "links": ["https://.../page"]
}
```

---

# 📁 Project Structure

```
Web-Scraper
 ├── src/main/java/com/WebScrapping
 │     ├── Controller
 │     │     └── ScrapeController.java
 │     ├── Service
 │     │     └── ScraperService.java
 │     └── Model
 │           └── ScrapeResponse.java
 ├── src/main/resources/static   (optional UI here)
 ├── Dockerfile
 ├── pom.xml
 └── README.md
```

---

# 🛠️ Installation & Setup

## 1️⃣ Clone the Repository

```bash
git clone https://github.com/Sahil-Ali-01/Web-Scraper.git
cd Web-Scraper
```

## 2️⃣ Build Without Docker

```bash
./mvnw clean package -DskipTests
java -jar target/*.jar
```

App runs on:

### `http://localhost:8080`

---

# 🐳 Docker Deployment

## Build the Docker image

```bash
docker build -t webscraper:latest .
```

## Run the container

```bash
docker run --rm -p 8080:8080 webscraper:latest
```

If your Dockerfile uses port **9090**, then:

```bash
docker run --rm -p 9090:9090 webscraper:latest
```

---

# 🔥 API Usage

### Endpoint

`GET /api/scrape?url=<website-url>`

### Example:

```bash
curl -G 'http://localhost:8080/api/scrape' --data-urlencode 'url=https://example.com'
```

### Response:

```json
{
  "images": [],
  "videos": [],
  "links": []
}
```

---

# 🔐 Security Notes (Important)

To make your scraper safe:

* **Prevent SSRF**
  Block internal/private IP ranges (127.0.0.1, 192.168.x.x, etc.)
* **Add Request Limits**
  Rate-limit users to avoid abuse.
* **Add Timeouts**
  Jsoup should have user-agent + timeout to avoid long hanging requests.
* **Legal Notice**
  Some websites disallow scraping; respect robots.txt / TOS.

---

# 🌱 Future Enhancements

* Render JavaScript-loaded content (via Selenium/Puppeteer integration)
* Add domain allowlist/denylist
* Add scraping logs + dashboards
* Add pagination for large results
* Build a modern React-based UI for real-time previews

---

# 🤝 Contributing

Pull requests are welcome.
You can improve UI, add features, or enhance scraping logic.

---

# 📄 License

Add an open-source license here (MIT / Apache / GNU).

---

# ⭐ Support the Project

If this project helped you, give the repository a **star** on GitHub.

---

If you'd like, I can also:

### ✓ Generate a **professional logo**

### ✓ Create a **complete UI dashboard**

### ✓ Improve your **Dockerfile for Java 25**

### ✓ Add **SSRF protection utilities**

### ✓ Create an **API documentation page**


