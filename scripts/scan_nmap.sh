#!/bin/bash

# ================================
# Script de scan réseau Nmap
# ================================

TARGET=$1

if [ -z "$TARGET" ]; then
    echo "❌ Usage : ./scan_nmap.sh I172.20.0.10" 
    exit 1
fi

echo "🔍 Lancement du scan Nmap sur $TARGET..."

# Scan SYN + version + OS
nmap -sS -sV -O $TARGET

echo "✅ Scan terminé"