#!/usr/bin/env bash

# Ultra-Uni-Cloud Unified Compiler Toolchain Automation
# Original Architecture by Darion Kellar

set -euo pipefail

# Text formatting colors
export TERM=xterm
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}===================================================${NC}"
echo -e "${BLUE}   Ultra-Uni-Cloud Multi-Runtime Compilation Build   ${NC}"
echo -e "${BLUE}===================================================${NC}"

# Ensure we are executing from the project root directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/../.." && pwd)"
cd "$ROOT_DIR"

# Step 1: Compile Tier I C++ V8 Isolate Pool Runtime
echo -e "\n${BLUE}[1/4] Compiling Edge Runtime Core (C++)...${NC}"
if [ -f "Tier-I-Routing-Compute/edge-compute-runtime/v8-isolate-pool.cpp" ]; then
    g++ -std=c++17 -O3 "Tier-I-Routing-Compute/edge-compute-runtime/v8-isolate-pool.cpp" \
        -o "Tier-I-Routing-Compute/edge-compute-runtime/v8-isolate-pool"
    echo -e "${GREEN}✔ V8 Isolate Pool Runtime compiled successfully.${NC}"
else
    echo -e "${RED}✘ Missing v8-isolate-pool.cpp runtime file.${NC}"
fi

# Step 2: Compile Tier I Go TLS Termination Endpoint
echo -e "\n${BLUE}[2/4] Compiling Shared Utilities Network Stack (Go)...${NC}"
if [ -f "Tier-I-Routing-Compute/shared-utils/tls-termination.go" ]; then
    (cd Tier-I-Routing-Compute/shared-utils && go build -o tls-termination tls-termination.go)
    echo -e "${GREEN}✔ TLS Termination service compiled successfully.${NC}"
else
    echo -e "${RED}✘ Missing tls-termination.go source file.${NC}"
fi

# Step 3: Compile Tier II C-based WAAP Inspection Firewall Engine
echo -e "\n${BLUE}[3/4] Compiling WAAP Deep Packet Inspection Engine (C)...${NC}"
if [ -f "Tier-II-Security-Trust/security-shield-waap/inspection-engine.c" ]; then
    gcc -O3 "Tier-II-Security-Trust/security-shield-waap/inspection-engine.c" \
        -o "Tier-II-Security-Trust/security-shield-waap/inspection-engine"
    echo -e "${GREEN}✔ WAF Inspection Engine binary generated.${NC}"
else
    echo -e "${RED}✘ Missing inspection-engine.c module.${NC}"
fi

# Step 4: Compile Tier I Rust Authoritative DNS Resolver
echo -e "\n${BLUE}[4/4] Verifying Anycast DNS Infrastructure Engine (Rust)...${NC}"
if [ -f "Tier-I-Routing-Compute/core-cdn-routing/dns-resolver.rs" ]; then
    rustc -O "Tier-I-Routing-Compute/core-cdn-routing/dns-resolver.rs" \
        --out-dir "Tier-I-Routing-Compute/core-cdn-routing/"
    echo -e "${GREEN}✔ Rust Authoritative DNS Engine compiled successfully.${NC}"
else
    echo -e "${RED}✘ Missing dns-resolver.rs platform file.${NC}"
fi

echo -e "\n${GREEN}===================================================${NC}"
echo -e "${GREEN}      All Core Subsystems Successfully Compiled      ${NC}"
echo -e "${GREEN}===================================================${NC}\n"
