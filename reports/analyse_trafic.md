# Analyse du trafic réseau

## bjectif

Analyser le trafic réseau capturé afin d’identifier les comportements normaux et suspects dans un environnement simulé.

---

## Analyse du trafic HTTP

### Observation

- Requête HTTP de type `GET /`
- Réponse serveur : `HTTP/1.1 200 OK`
- Headers visibles :
  - Host
  - User-Agent

### Interprétation

Le trafic HTTP est transmis en clair, ce qui signifie que :

- les données peuvent être interceptées
- les informations client sont exposées

### Conclusion

> Le protocole HTTP est vulnérable car il ne chiffre pas les communications.

---

## Analyse du scan Nmap

### Observation

- Envoi massif de paquets TCP `[SYN]`
- Réponses `[SYN, ACK]` du serveur
- Tentatives sur plusieurs ports (80, 443, etc.)

### Interprétation

- `[SYN]` → tentative de connexion
- `[SYN, ACK]` → port ouvert
- `[RST]` → port fermé

### Conclusion

> Le scan Nmap génère un comportement réseau identifiable permettant la détection d’activités de reconnaissance.

---

## Comparaison des communications

| Type de trafic | Visibilité | Sécurité |
|---------------|-----------|--------|
| HTTP          | Visible   | ❌ Non sécurisé |
| SSH           | Non visible | ✔ Sécurisé |
| HTTPS         | Non visible | ✔ Sécurisé |

---

## Risques identifiés

- Interception de données sensibles
- Détection possible d’infrastructure réseau
- Exposition des services

---

## Recommandations

- Utiliser HTTPS au lieu de HTTP
- Limiter les ports ouverts
- Mettre en place un firewall
- Surveiller le trafic réseau
- Déployer un IDS/IPS

---

## Compétences acquises

- Analyse de trafic réseau
- Utilisation de Wireshark et Tcpdump
- Détection de scans réseau
- Compréhension du protocole TCP
- Identification des vulnérabilités réseau