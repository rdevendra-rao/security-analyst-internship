# Security Analyst Internship — Task Submissions

This repository contains my completed work for the Security Analyst Internship.

## Completed Tasks

### Task 1 — Basic Network Scanning with Nmap
- Performed a basic Nmap scan on my own local machine.
- Target: `127.0.0.1` (localhost)
- Performed service/version detection using `nmap -sV`
- Performed OS detection using `nmap -O`
- Identified open TCP ports and associated services.
- Documented security observations for the identified services.
- Scan results are available in `nmap_scan_results.txt`.

### Task 4 — Common Network Security Threats
A research report covering:
- DoS/DDoS attacks
- Man-in-the-Middle (MITM) attacks
- IP spoofing
- DNS poisoning/spoofing
- Comparison of common network security threats
- Security mitigation techniques

File: `network_security_threats_report.md`

### Task 5 — Social Engineering Attacks
A research report covering:
- Phishing
- Spear phishing
- Whaling
- Vishing
- Smishing
- Pretexting
- Baiting
- Quid pro quo
- Security awareness practices

File: `social_engineering_report.md`

### Task 6 — Importance of Patch Management
A research report covering:
- Patch management lifecycle
- CVEs and vulnerability management
- WannaCry/EternalBlue
- Equifax breach
- Consequences of missing security patches
- Patch management checklist
- Common patch management challenges

File: `patch_management_report.md`

## Task 1 — Nmap Evidence

Target scanned:

`127.0.0.1` — Localhost

Scans performed:

```text
nmap 127.0.0.1
nmap -sV 127.0.0.1
nmap -O 127.0.0.1
