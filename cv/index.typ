#import "@preview/basic-resume:0.2.9": *

// Put your personal information here, replacing mine
#let name = "Jayrup Nakawala"
#let location = "London, UK"
#let email = "jayrupnakawala@gmail.com"
#let github = "github.com/CaptainJack2491"
#let linkedin = "linkedin.com/in/jayrupnakawala"
#let phone = "+1 (xxx) xxx-xxxx"
#let personal-site = "jayrup.me"

#show: resume.with(
  author: name,
  // All the lines below are optional.
  // For example, if you want to to hide your phone number:
  // feel free to comment those lines out and they will not show.
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  // phone: phone,
  personal-site: personal-site,
  accent-color: "#26428b",
  font: "New Computer Modern",
  paper: "us-letter",
  author-position: center,
  personal-info-position: center,
)

/*
* Lines that start with == are formatted into section headings
* You can use the specific formatting functions if needed
* The following formatting functions are listed below
* #edu(dates: "", degree: "", gpa: "", institution: "", location: "", consistent: false)
* #work(company: "", dates: "", location: "", title: "")
* #project(dates: "", name: "", role: "", url: "")
* certificates(name: "", issuer: "", url: "", date: "")
* #extracurriculars(activity: "", dates: "")
* There are also the following generic functions that don't apply any formatting
* #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
* #generic-one-by-two(left: "", right: "")
*/

/*
== Work Experience

#work(
  title: "Subatomic Shepherd and Caffeine Connoisseur",
  location: "Atomville, CA",
  company: "Microscopic Circus, Schrodinger's University",
  dates: dates-helper(start-date: "May 2024", end-date: "Present"),
)
- Played God with tiny molecules, making them dance to uncover the secrets of the universe
- Convinced high-performance computers to work overtime without unions, reducing simulation time by 50%
- Wowed a room full of nerds with pretty pictures of invisible things and imaginary findings

*/


== Research Experience

#project(
  name: "Deceptive Alignment in Autonomous LLM Agents",
  // Role is optional
  role: "",
  // Dates is optional
  dates: dates-helper(start-date: "Nov 2025", end-date: "Present"),
  // URL is also optional
  url: "github.com/CaptainJack2491/Dissertation",
)

- The Framework: Architected a modular testing suite to detect and quantify "Sleeper Agent" behavior (hidden goal pursuit) in LLMs across multiple providers (Anthropic, OpenAI, Google, Moonshot).

- Sandboxed Environment: Engineered a Virtual File System (VFS) to isolate agentic tool-use (read/write/list), enabling granular tracking of VFS state changes and preventing unauthorized host access.

- Observability & Interrogation:
  - Developed a Provider Abstraction Layer to normalize and extract "Glass-box" reasoning/Chain-of-Thought traces from diverse formats (e.g., Anthropic <thinking> tags, Kimi-K2 proprietary tokens).
  - Built an Interrogation System (interrogate.py) to perform post-hoc adversarial questioning, recreating exact agent states to probe consistency and verify deceptive intent.

- 3-Prong Evaluation Rubric: Designing a multi-layered scoring system to bypass the limitations of single-judge evaluations.


== Projects

#project(
  // role: "Lead Infrastructure Engineer",
  name: "Hybrid-Cloud Research Infrastructure & Zero-Trust Mesh",
  // url: "jayrup.me",
  dates: dates-helper(start-date: "Nov 2025", end-date: "Present"),
)

- Developed a hybrid-cloud networking mesh using Tailscale/WireGuard to unify a Dell Precision local node (Ubuntu) with 3 distributed VPS instances into a single secure plane.
- Engineered a custom ingress solution using VPS nodes as forward proxies to bypass CGNAT, ensuring secure, high-availability access to internal research tools without port forwarding.
- Orchestrated 15+ containerized services via Docker Compose, implementing automated backups, resource monitoring, and a centralized NVMe-backed storage tier.
- Optimized a headless development workflow (Arch Linux, Neovim, Tmux) with dotfile versioning for consistent, rapid environment replication across heterogeneous hardware.

#project(
  name: "Jayrup.me: Fast Personal Portfolio",
  url: "jayrup.me",
  dates: "Jan 2024 — Present"
)
- Engineered a dual-interface web server using Nginx to serve context-aware content (HTML vs. Plaintext) based on User-Agent detection (e.g., `curl`, `wget`).
- Architected a Quarto-based publishing pipeline that generates synchronized web and CLI-friendly documentation from a single Markdown source.
- Automated Deployment: Optimized a secure rsync-over-SSH deployment workflow from a local Arch Linux environment to a distributed VPS cluster.
- Focus: Having a light-weight portfolio that is accessible via the terminal

== Education

#edu(
  institution: "University of East London",
  location: "London, UK",
  dates: dates-helper(start-date: "Sept 2023", end-date: "May 2026"),
  degree: "Bachelor's of Science (hons) Data Science and Artificial Intelligence",

  // Uncomment the line below if you want edu formatting to be consistent with everything else
  // consistent: true
)
- Relevant Coursework: Math for computing, Data Structure and Algorithm, Networking, Database systems, Big Data analysis, Project Management, Artificial Intelligence



// #extracurriculars(
//   activity: "Science Olympiad Volunteering",
//   dates: "Sep 2023 --- Present"
// )
// - Volunteer and write tests for tournaments, including LA Regionals and SoCal State \@ Caltech

// #certificates(
//   name: "OSCP",
//   issuer: "Offensive Security",
//   // url: "",
//   date: "Oct 2024",
// )

== Skills
*Programming*: Python, Bash, SQL\
*ML/AI*: PyTorch, Transformers, LangChain, scikit-learn\
*Infrastructure*: Docker, Nginx, Caddy, Tailscale, WireGuard, Quarto  \
*Systems*: Linux (Arch, Ubuntu), Git, rsync, Tmux, Neovim\
