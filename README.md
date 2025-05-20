# cloud-native-3tier-app
A scalable 3-tier application deployed using Docker Compose and AWS, with infrastructure provisioned via Terraform. This project includes a frontend, backend, and database layer, built for modern DevOps workflows and cloud-native architecture. Ideal for showcasing fullstack deployment, infrastructure-as-code, and containerization.

# 🌐 Cloud-Native 3-Tier Application

A scalable, production-style **3-tier web application** with frontend, backend, and database layers — all containerized using **Docker** and deployed on **AWS EC2** using **Terraform**.

---

## 📦 Tech Stack

| Layer      | Technology         |
|------------|--------------------|
| Frontend   | HTML/CSS (or React)|
| Backend    | Python Flask       |
| Database   | PostgreSQL         |
| Infra      | Terraform + AWS EC2|
| DevOps     | Docker & Docker Compose|

---

## 📁 Project Structure
project-root/
├── fe/                       # Frontend
├── be/                       # Backend (Flask)
├── db/                       # SQL Scripts
├── docker-compose.yaml       # Multi-tier container config
├── ec2/                      # Terraform infra setup
├── .gitignore
├── README.md

---

## 🚀 Getting Started

### 1. Clone Repo
```bash
git clone https://github.com/barick4u/cloud-native-3tier-app.git
cd cloud-native-3tier-app

Start App Locally with Docker Compose
docker-compose up --build

Provision Infrastructure on AWS (Terraform)
cd ec2
terraform init
terraform apply

🔐 Security
	•	Secrets & credentials are excluded via .gitignore
	•	Terraform state files are never pushed to Git
	•	Use environment variables or .env files for sensitive configs


🧾 License

This project is licensed under the MIT License.

🙌 Contributions

Open to feedback, contributions, and ideas. Fork this repo or raise issues!

🔗 Live Demo / Screenshot

(Add link or image here if hosting live)

💼 Author
Satyajit Barick 
https://linkedin.com/in/barick3018

