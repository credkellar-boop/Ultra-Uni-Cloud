## 🛠️ Tech Stack & Architecture
A unified, high-performance edge infrastructure framework merging global CDN, Anycast-DNS, and Waap security. Built by Darion Kellar to provide a single, hardened, and scalable architecture for modern, zero-trust decentralized networks.


### Core Programming Languages
![Go](https://img.shields.io/badge/go-%2300ADD8.svg?style=for-the-badge&logo=go&logoColor=white) 
![Rust](https://img.shields.io/badge/rust-%23000000.svg?style=for-the-badge&logo=rust&logoColor=white) 
![C++](https://img.shields.io/badge/c++-%2300599C.svg?style=for-the-badge&logo=c%2B%2B&logoColor=white)
![C](https://img.shields.io/badge/c-%2300599C.svg?style=for-the-badge&logo=c&logoColor=white)
![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54) 
![JavaScript](https://img.shields.io/badge/javascript-%23323330.svg?style=for-the-badge&logo=javascript&logoColor=%23F7DF1E)
![Shell Script](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)

### Core Systems
![WebAssembly](https://img.shields.io/badge/WebAssembly-654FF0?style=for-the-badge&logo=webassembly&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)

### Platform Support & Hardware Architecture
![ARM](https://img.shields.io/badge/ARM-0091BD?style=for-the-badge&logo=arm&logoColor=white)
![AMD](https://img.shields.io/badge/AMD-ED1C24?style=for-the-badge&logo=amd&logoColor=white)
![Intel](https://img.shields.io/badge/Intel-0071C5?style=for-the-badge&logo=intel&logoColor=white) 

### Low-Level Infrastructure & Performance
![WireGuard](https://img.shields.io/badge/WireGuard-881798?style=for-the-badge&logo=wireguard&logoColor=white)
![eBPF](https://img.shields.io/badge/eBPF-FFDD54?style=for-the-badge&logo=linux&logoColor=black)
![NGINX](https://img.shields.io/badge/nginx-%23009639.svg?style=for-the-badge&logo=nginx&logoColor=white) 

### DevOps & Build Tools
![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)
![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)
![CMake](https://img.shields.io/badge/CMake-%23008FBA.svg?style=for-the-badge&logo=cmake&logoColor=white)
![Cargo](https://img.shields.io/badge/Cargo-000000?style=for-the-badge&logo=rust&logoColor=white)

### Cybersecurity & Offensive Auditing
![OWASP](https://img.shields.io/badge/OWASP-000000?style=for-the-badge&logo=owasp&logoColor=white)
![Kali Linux](https://img.shields.io/badge/Kali_Linux-557C94?style=for-the-badge&logo=kali-linux&logoColor=white)
![Cloudflare](https://img.shields.io/badge/Cloudflare-F38020?style=for-the-badge&logo=Cloudflare&logoColor=white)

### Artificial Intelligence & Quantum
![TensorFlow](https://img.shields.io/badge/TensorFlow-%23FF6F00.svg?style=for-the-badge&logo=TensorFlow&logoColor=white)
![PyTorch](https://img.shields.io/badge/PyTorch-%23EE4C2C.svg?style=for-the-badge&logo=PyTorch&logoColor=white)
![IBM Quantum](https://img.shields.io/badge/IBM%20Quantum-052FAD?style=for-the-badge&logo=IBM&logoColor=white)

### Cloud Providers
![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)
![Google Cloud](https://img.shields.io/badge/GoogleCloud-%234285F4.svg?style=for-the-badge&logo=google-cloud&logoColor=white)
![Microsoft Azure](https://img.shields.io/badge/azure-%230072C6.svg?style=for-the-badge&logo=microsoftazure&logoColor=white)

### Client Frameworks
![React](https://img.shields.io/badge/react-%2320232a.svg?style=for-the-badge&logo=react&logoColor=%2361DAFB)
![Vue.js](https://img.shields.io/badge/vuejs-%2335495e.svg?style=for-the-badge&logo=vuedotjs&logoColor=%234FC08D)
![Angular](https://img.shields.io/badge/angular-%23DD0031.svg?style=for-the-badge&logo=angular&logoColor=white)

---

## 🚀 Architecture Overview

Ultra-Uni-Cloud acts as a complete, self-hosted edge computing and security stack, operating across three main tiers:

1. **Routing & Compute (Tier I):** Handles global traffic routing via a custom Anycast DNS resolver and provides serverless edge execution environments using WebAssembly (WASM) and V8 Isolates.
2. **Security & Trust (Tier II):** Acts as the primary defensive perimeter. It includes real-time Deep Packet Inspection (DPI), DDoS mitigation (scrubbing), rate limiting, and Zero-Trust Network Access (ZTNA) identity validation.
3. **Infrastructure (Tier III):** Provides the automated CI/CD orchestration and vulnerability scanning required to compile and deploy this complex, multi-language matrix.

---

## ✨ Key Features

* **Polyglot Performance:** Leverages the absolute best programming languages for specific jobs:
  * **Rust:** High-concurrency tasks like DNS resolution and rate limiting.
  * **Go:** Identity services, TLS termination, and load balancing.
  * **C/C++:** Low-level packet inspection and Wireguard tunneling.
* **Modern Edge Compute:** Integrates WASM and V8 isolate pools directly into the routing tier for next-generation, ultra-low-latency serverless applications.
* **Built-in Zero Trust:** Security isn't an afterthought. Features like ZTNA access control and inline threat intelligence validation are baked directly into the core network flow.

---

## 🎯 Problems Solved

* **Infrastructure Fragmentation:** Eliminates the need to stitch together separate vendors for DNS, CDN, WAF, and identity management by providing a cohesive, all-in-one matrix.
* **Latency:** By processing traffic, security rules, and serverless compute at the network edge via Anycast, it dramatically reduces response times for end-users globally.
* **Automated Security & Deployment:** Solves deployment headaches through highly automated build scripts (`compile-logic.sh`) and GitHub Actions workflows that compile all sub-systems concurrently while running automated Python-based dependency vulnerability scans.

---

## 🛠️ Usage

Currently, the repository contains the foundational source code, routing engines, and compilation logic. To use it in a production environment:

1. Define your specific network topology and edge node IPs.
2. Configure the BGP (Border Gateway Protocol) announcements for your Anycast network.
3. Set up the required TLS certificates.
4. Customize the Web Application Firewall (WAF) rules within the provided `owasp-rules.json` file to dictate how the Deep Packet Inspection engine handles incoming threats.

---

## 💻 Installation

The repository is designed to be highly automated via its Tier III Infrastructure scripts. 

### Prerequisites
Ensure your build environment has toolchains for **Go**, **Rust/Cargo**, and **C/C++** (e.g., `build-essential` on Ubuntu).

### Automated Build
Execute the primary shell script to automatically compile the Tier I Rust routing engines, Tier I C++ V8 runtimes, Tier II Go security services, and C-based deep packet inspection engines:

```bash
./Tier-III-Infrastructure/build-scripts/compile-logic.sh
