#!/bin/bash

# ================================
# Script de capture réseau (tcpdump)
# ================================

INTERFACE="eth0"
OUTPUT_DIR="/captures"
FILENAME="capture_$(date +%Y%m%d_%H%M%S).pcap"

echo "📡 Démarrage de la capture sur $INTERFACE..."
echo "📁 Fichier de sortie : $OUTPUT_DIR/$FILENAME"

# Lancer la capture
tcpdump -i $INTERFACE -w $OUTPUT_DIR/$FILENAME

echo "🛑 Capture arrêtée"