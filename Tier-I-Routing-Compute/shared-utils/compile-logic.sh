#!/bin/bash
# Exit immediately if a command exits with a non-zero status
set -e 

echo "Compiling Tier I Routing (Go)..."
# Replace with your actual Go build path/commands
cd Tier-I-Routing-Compute/core-cdn-routing/dns-resolver
go build -o dns-resolver main.go
cd -

echo "Compiling Edge Compute Runtime (Rust)..."
# Replace with your actual Cargo build path/commands
cd Tier-I-Routing-Compute/edge-compute-runtime/v8-isolate-pool
cargo build --release
cd -

echo "Compiling WAAP Engine (C/C++)..."
# Replace with your actual C++ build path/commands
cd Tier-II-Security-Trust/security-shield-waap/waap-engine
mkdir -p build && cd build
cmake ..
make
cd -

echo "All subsystems compiled successfully!"
