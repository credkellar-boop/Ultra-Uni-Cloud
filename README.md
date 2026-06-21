# Ultra-Uni-Cloud

An open-source, multi-language edge infrastructure framework designed to merge Content Delivery Network (CDN) routing, Anycast DNS, and Web Application and API Protection (WAAP) into a single, unified architecture built for zero-trust decentralized networks.

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
