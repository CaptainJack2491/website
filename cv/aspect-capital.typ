#import "@preview/basic-resume:0.2.9": *

// Put your personal information here, replacing mine
#let name = "Jayrup Nakawala"
#let location = "London, UK"
#let email = "jayrupnakawala@gmail.com"
#let github = "github.com/CaptainJack2491"
#let linkedin = "linkedin.com/in/jayrupnakawala"
// #let phone = "+1 (xxx) xxx-xxxx"
#let personal-site = "jayrup.me"

#show: resume.with(
  author: name,
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  // phone: phone,
  personal-site: personal-site,
  accent-color: "#26428b",
  font: "New Computer Modern",
  paper: "a4",
  author-position: center,
  personal-info-position: center,
)

With 2+ years of hands-on Linux systems experience spanning Ubuntu, Arch, and hybrid-cloud infrastructure. Strong foundation in system administration, container orchestration, networking, and automation scripting — backed by live production services built, deployed, and maintained independently.

== Relevant Experience

#work(
  title: "Linux Systems Administrator",
  location: "London, UK",
  company: "Personal Research Infrastructure",
  dates: dates-helper(start-date: "Jan 2024", end-date: "Present"),
)

- Administered a multi-node Linux estate (Ubuntu, Arch) across on-prem and cloud infrastructure with a self-hosted zero-trust overlay network (Headscale/WireGuard) and custom routing policies for secure inter-node communication
- Orchestrated 15+ containerized services via Docker Compose with automated backup scheduling, resource monitoring, and centralized NVMe-backed storage provisioning
- Implemented infrastructure-as-code workflows using version-controlled Bash and Python scripts for declarative system configuration and reproducible environment provisioning across heterogeneous hardware
- Diagnosed and resolved persistent CGNAT connectivity issues by reverse-engineering carrier-grade NAT behavior, configuring iptables rules, and deploying a multi-node forward proxy tunnel — restoring high-availability access to internal services

== Projects

#project(
  name: "jayrup.me: Linux-Hosted Portfolio",
  url: "jayrup.me",
  dates: "Nov 2025 — Present",
)

- Administered an Nginx web server with custom User-Agent routing (curl vs. browser) on a Linux VPS
- Built an rsync-over-SSH deployment pipeline from local Arch environment to cloud infrastructure, maintaining sub-50ms response times

#project(
  name: "Sandboxed LLM Evaluation Framework (Dissertation)",
  url: "github.com/CaptainJack2491/Dissertation",
  dates: dates-helper(start-date: "Nov 2025", end-date: "May 2026"),
)

- Built a multi-provider API integration layer and sandboxed execution environment, handling authentication, rate-limiting, and request routing across 3 providers
- Designed and ran 960 automated test trials across distributed infrastructure using Python scripting

== Skills

- *Systems*: Linux (Ubuntu, Arch), system administration, filesystem management, permissions, networking (TCP/IP, DNS, routing), performance troubleshooting
- *Infrastructure*: Docker, Docker Compose, Nginx, Caddy, Tailscale, WireGuard, Headscale, rsync, automated backups, cloud VPS
- *Automation*: Bash, Python, Git, configuration management, infrastructure-as-code, declarative provisioning, CI/CD concepts
- *Monitoring*: Resource monitoring, performance tuning, documentation, operational best practices

== Education

#edu(
  institution: "University of East London",
  location: "London, UK",
  dates: dates-helper(start-date: "Sept 2023", end-date: "May 2026"),
  degree: "Bachelor's of Science (Hons) Data Science and Artificial Intelligence — First-Class Honours (94%)",
)
- Relevant Coursework: Networking, Database Systems, Big Data Analysis, Data Structures & Algorithms, AI