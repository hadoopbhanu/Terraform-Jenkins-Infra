
# AWS Terraform Jenkins Infrastructure (jenkins.sillygully.org)

<img width="1440" alt="Screenshot 2024-10-22 at 3 17 27 AM" src="https://github.com/user-attachments/assets/5f117195-68a5-4bfe-b53f-ad38678b6d31">


## Overview

This project sets up a robust cloud infrastructure on AWS using **Terraform** and provisions **Jenkins** on an EC2 instance. With a focus on automation, scalability, and security, the infrastructure leverages VPCs, security groups, and load balancing to ensure a high-availability setup. Jenkins is deployed using a Terraform module, with an automated install script, ready to streamline your CI/CD processes.
```
┌─────────────────────────────────────────────────────────────────────┐
│                            AWS Cloud (VPC)                          │
│                              CIDR: 11.0.0.0/16                      │
│                                                                     │
│ ┌───────────────────────────────────┐ ┌────────────────────────────┐│
│ │          Public Subnet             │ │         Private Subnet      ││
│ │          (11.0.1.0/24)             │ │        (11.0.3.0/24)        ││
│ │ +------------------------------+  │ │                            ││
│ │ |  Jenkins EC2 Instance         |  │ │                            ││
│ │ | (t2.medium, Port: 8080)       |  │ │                            ││
│ │ +------------------------------+  │ │                            ││
│ └───────────────────────────────────┘ └────────────────────────────┘│
│                          │                                          │
│                          ▼                                          │
│            +----------------------------+                           │
│            |  Security Groups            |                           │
│            |  (SSH: 22, HTTP: 80,        |                           │
│            |   HTTPS: 443, Jenkins: 8080)|                           │
│            +----------------------------+                           │
│                          │                                          │
│                          ▼                                          │
│ +--------------------------------------------------------------+    │
│ |           Application Load Balancer (ALB)                    |    │
│ |         (HTTP/HTTPS traffic for Jenkins EC2)                 |    │
│ +--------------------------------------------------------------+    │
│                          │                                          │
│                          ▼                                          │
│            +----------------------------+                           │
│            |  AWS Certificate Manager   |                           │
│            |  (SSL Certificates for ALB)|                           │
│            +----------------------------+                           │
│                          │                                          │
│                          ▼                                          │
│ +--------------------------------------------------------------+    │
│ |           Route53 DNS (jenkins.sillygully.org)               |    │
│ +--------------------------------------------------------------+    │
└─────────────────────────────────────────────────────────────────────┘
```

## Key Features

- **Automated Infrastructure Deployment**: Terraform modules manage VPC, security groups, EC2, and load balancer configuration.
- **Jenkins CI Setup**: Fully automated Jenkins installation on a provisioned EC2 instance.
- **Scalability**: Load balancing for Jenkins EC2 instances using an Application Load Balancer (ALB) with target groups.
- **Security**: Security groups to allow restricted access via SSH, HTTP, and Jenkins on port 8080.
- **HTTPS/SSL**: Integrated with AWS Certificate Manager for secure connections using HTTPS.

## Terraform Modules

- **Networking**: Creates a custom VPC with public and private subnets.
- **Security Groups**: Manages security groups allowing access to Jenkins, HTTP, HTTPS, and SSH.
- **Jenkins EC2**: Provisions an EC2 instance, installs Jenkins, and applies required security settings.
- **Load Balancer (ALB)**: Configures an Application Load Balancer and targets Jenkins on port 8080.
- **DNS & SSL**: Manages Route53 hosted zones and SSL certificates with AWS Certificate Manager for your Jenkins domain.

## Setup

### Steps to Deploy

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/hadoopbhanu/Terraform-Jenkins-Infra.git
   cd Terraform-Jenkins-Infra
   ```

2. **Initialize and Apply Terraform**:
   ```bash
   terraform init
   terraform apply
   ```

3. **Access Jenkins**:
   - Once deployed, access Jenkins via the domain configured in Route53 (e.g., `jenkins.sillygully.org`).

4. **Jenkins Setup**:
   - Use the initial Jenkins admin password found on the EC2 instance to complete the setup.

## Future Enhancements

- Add **Auto-Scaling** for Jenkins instances.
- Integrate **CloudWatch** for monitoring Jenkins logs and EC2 performance.
- Implement **GitHub Actions** for automating Terraform and Jenkins pipeline updates.

## Conclusion

This Terraform project automates the provisioning of a Jenkins CI/CD server on AWS, using best practices for networking, security, and scalability. Whether you're deploying for development or production, this setup is flexible and secure, enabling seamless CI/CD workflows.

---
