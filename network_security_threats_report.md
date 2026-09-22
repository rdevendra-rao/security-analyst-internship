# Task 4 — Research Report: Common Network Security Threats

## Introduction

Network security threats can affect the confidentiality, integrity, and availability of systems and data. Modern networks depend on many interconnected services, so an attack against one component can have consequences for users, applications, and business operations. This report examines four common network-security threats: Distributed Denial of Service (DDoS), Man-in-the-Middle (MITM), IP spoofing, and DNS poisoning/spoofing.

The objective is to explain how each threat works at a high level, describe a documented real-world example or representative case, discuss potential impact, and identify practical mitigation strategies. The report focuses on defensive understanding rather than instructions for attacking real systems.

## 1. Distributed Denial of Service (DDoS)

### How it works

A Denial of Service attack attempts to make a service unavailable by consuming resources such as bandwidth, CPU, memory, connection tables, or application capacity. A Distributed Denial of Service attack uses traffic or requests originating from many systems, making the attack larger and more difficult to block using a single source-based rule.

One important class is reflective/amplification DDoS. In these attacks, an attacker can abuse exposed UDP-based services so that responses directed toward a victim are larger than the triggering requests. CISA documents UDP-based amplification as a form of distributed reflective denial of service.

### Real-world example

CISA's 2016 Dyn-related DDoS reporting and its broader DDoS guidance illustrate how large distributed attacks can disrupt internet-facing services. DDoS incidents have also repeatedly targeted public-facing infrastructure, DNS providers, and online services.

### Impact

- Website or application unavailability
- Increased latency and failed connections
- Loss of revenue or productivity
- Increased infrastructure and mitigation costs
- Possible disruption to dependent services

### Mitigation strategies

1. **DDoS protection and traffic scrubbing:** Route suspicious traffic through a provider capable of filtering high-volume attacks.
2. **Rate limiting and traffic filtering:** Restrict abnormal request rates and known unwanted traffic patterns.
3. **Redundancy and capacity planning:** Use distributed infrastructure and resilient architectures so one overloaded component does not cause complete service failure.

## 2. Man-in-the-Middle (MITM)

### How it works

A Man-in-the-Middle attack, also called Adversary-in-the-Middle (AiTM), occurs when an attacker positions themselves between communicating systems. The attacker may observe, relay, or manipulate traffic. MITRE ATT&CK documents techniques such as ARP cache poisoning, DHCP spoofing, and other methods that can create an adversary-in-the-middle position.

### Real-world example

MITRE ATT&CK documents adversary-in-the-middle techniques used to intercept or manipulate communications. ARP cache poisoning is one documented technique that can cause systems on a local network to associate an IP address with an attacker-controlled MAC address.

### Impact

- Credential interception
- Session-cookie theft
- Exposure of sensitive information
- Traffic modification
- Redirection to malicious services

### Mitigation strategies

1. **Use HTTPS/TLS:** Encrypt application traffic and validate certificates.
2. **Network segmentation:** Limit the ability of an attacker on one network segment to reach sensitive systems.
3. **Secure local-network protocols:** Use controls such as DHCP snooping, Dynamic ARP Inspection where appropriate, and monitoring for abnormal ARP/DNS behavior.

## 3. IP Spoofing

### How it works

IP spoofing occurs when a packet is sent with a forged source IP address. The destination may therefore see a source address that does not represent the actual sender. Spoofing can be used in reflection/amplification attacks and can also make basic source-address logging less reliable.

### Example

CISA describes UDP-based amplification attacks in which spoofed source addresses can cause public UDP services to send responses toward a victim. This is a documented use of source-address spoofing in DDoS activity.

### Impact

- Makes attribution and filtering based only on source IP more difficult
- Enables reflection/amplification attacks
- Can bypass poorly designed source-address trust controls
- Can complicate incident investigation

### Mitigation strategies

1. **Ingress and egress filtering:** Apply anti-spoofing controls at network boundaries.
2. **Do not trust source IP alone:** Combine IP information with authentication and other security signals.
3. **Monitor abnormal traffic patterns:** Look for unexpected source-address behavior and amplification traffic.

## 4. DNS Poisoning / DNS Spoofing

### How it works

DNS translates domain names into network addresses. In DNS poisoning or spoofing, an attacker causes a victim or resolver to receive an incorrect DNS response, potentially redirecting users to an attacker-controlled destination. DNS manipulation can also support adversary-in-the-middle activity.

MITRE ATT&CK documents name-resolution poisoning and explains that adversaries can abuse local name-resolution protocols to force communication with attacker-controlled systems.

### Real-world example

MITRE ATT&CK includes documented adversary-in-the-middle techniques involving manipulation of DNS/name-resolution mechanisms. Such attacks can be used to redirect users, intercept credentials, or support follow-on activity.

### Impact

- Redirection to fraudulent websites
- Credential theft
- Malware delivery
- Loss of trust in DNS infrastructure
- Interception of communications

### Mitigation strategies

1. **Use DNSSEC where appropriate:** DNSSEC provides authenticity and integrity protections for DNS data.
2. **Use encrypted/secure DNS services where appropriate:** This can reduce exposure to certain forms of DNS manipulation and observation.
3. **Monitor DNS behavior:** Detect unexpected resolver changes, suspicious DNS responses, and abnormal domain-resolution patterns.

## Comparison

| Threat | Main attack vector | Typical target | Main security property affected | Relative mitigation difficulty |
|---|---|---|---|---|
| DDoS | Large volumes of traffic/requests | Internet-facing services | Availability | Medium–High |
| MITM | Network/protocol manipulation | Network communications | Confidentiality/Integrity | Medium |
| IP spoofing | Forged source address | Network services / DDoS victims | Attribution/Availability | Medium |
| DNS poisoning/spoofing | Manipulated name resolution | Users/resolvers | Integrity/Confidentiality | Medium |

The mitigation difficulty depends heavily on architecture, monitoring capability, and whether the attack is local or internet-scale.

## Conclusion

Network threats differ in their technical mechanisms, but effective defense usually combines secure protocols, segmentation, filtering, monitoring, authentication, and resilient infrastructure. Security teams should avoid relying on a single control. A layered approach reduces the likelihood that one compromised protocol or device will lead directly to a major security incident.

## References

1. CISA — UDP-Based Amplification Attacks: https://www.cisa.gov/ncas/alerts/ta14-017a
2. CISA — Service Location Protocol and DoS Alert: https://www.cisa.gov/news-events/alerts/2023/04/25/abuse-service-location-protocol-may-lead-dos-attacks
3. MITRE ATT&CK — Adversary-in-the-Middle (T1557): https://attack.mitre.org/techniques/T1557/
4. MITRE ATT&CK — ARP Cache Poisoning (T1557.002): https://attack.mitre.org/techniques/T1557/002/
5. MITRE ATT&CK — Name Resolution Poisoning and SMB Relay (T1557.001): https://attack.mitre.org/techniques/T1557/001/
