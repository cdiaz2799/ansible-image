<div align="center">
<h1 align="center">
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Ansible_logo.svg/1664px-Ansible_logo.svg.png" width="100" />
<br>
</h1>
<h3>Ansible in Docker</h3>
<h3>Developed with the software and tools listed below.</h3>

<p align="center">
<img src="https://img.shields.io/badge/Docker-2496ED.svg?style&logo=Docker&logoColor=white" alt="Docker" />
</p>
</div>

---

## 📒 Table of Contents
- [📒 Table of Contents](#-table-of-contents)
- [📍 Overview](#-overview)
- [🧩 Files](#files)

---


## 📍 Overview

The Ansible Image project aims to create a Docker image that is specifically tailored for running Ansible automation tasks. The Dockerfile provided in the project sets up the image with all the necessary packages and tools required for Ansible deployment. By utilizing this Docker image, users can easily create consistent and reproducible environments for running their Ansible playbooks. The ready-to-use Ansible Image simplifies the setup process, enhances efficiency, and facilitates the seamless execution of Ansible automation tasks.

---

## 🧩 Files


| File                                                                          | Summary                                                                                                                                                                                                                                     |
| ---                                                                           | ---                                                                                                                                                                                                                                         |
| [Dockerfile](https://github.com/cdiaz2799/ansible-image/blob/main/Dockerfile) | This code sets up a Docker image with essential packages and tools for running Ansible automation. It installs necessary packages, copies Ansible requirements, installs collections/roles, sets up a DataDog callback, and configures SSH. |
| [requirements.yml](https://github.com/cdiaz2799/ansible-image/blob/main/requirements.yml) | Defines collections and roles to install via Ansible Galaxy
| [.gitlab-ci.yml](https://github.com/cdiaz2799/ansible-image/blob/main/.gitlab-ci.yml) | GitLab CI/CD Pipeline to scan container and push it to GitLab Container Registry
---
