# Flask CI/CD Lab

This is a simple Flask web application designed for practicing **AWS CI/CD deployment** using **CodePipeline**, **CodeDeploy**, and **EC2**. The app runs on Python 3.9 and serves a basic homepage.

---

## 📦 Project Structure

Flask-lab/
├── app.py # Flask app
├── appspec.yml # AWS CodeDeploy config
├── buildspec.yml # AWS CodeBuild instructions
├── scripts/
│ ├── install.sh # Installs Python & Flask
│ └── start.sh # Starts Flask app on port 5000
└── templates/
└── index.html # Simple HTML welcome page

---

##  Deployment Workflow

1. **CodePipeline** pulls the code from GitHub.
2. **CodeBuild** runs `buildspec.yml` to prepare the app.
3. **CodeDeploy** uses `appspec.yml` to:
   - Run `scripts/install.sh` for dependencies.
   - Run `scripts/start.sh` to launch the Flask app.

---

##  Requirements on EC2 Instance

Before using CodeDeploy, make sure your EC2 instance:

- Is running **Ubuntu**
- Has the **CodeDeploy Agent** installed
- Is accessible via **IAM Role** with CodeDeploy and S3 permissions

---

##  App Preview

Once deployed, visit:  
`http://<EC2-PUBLIC-IP>:5000`

You’ll see:

> **Welcome to Flask App via CodePipeline**

---

##  Purpose

This lab was built as a personal project to:

- Practice Flask development
- Learn CI/CD with AWS services
- Understand CodeDeploy hooks & pipeline artifacts

---
