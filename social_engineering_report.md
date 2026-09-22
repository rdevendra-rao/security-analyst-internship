# Task 5 — Research Report: Social Engineering Attacks

## Introduction

Social engineering attacks target people and their decision-making rather than relying only on technical vulnerabilities. Attackers use trust, urgency, authority, curiosity, fear, or helpfulness to persuade victims to reveal information, click links, transfer money, or provide access.

NIST describes phishing as the use of convincing messages to trick users into opening harmful links, downloading malicious software, or submitting sensitive information. Social engineering therefore remains an important part of organizational cybersecurity because technical controls can be bypassed when a user is manipulated.

## 1. Phishing

### Definition

Phishing is a fraudulent message designed to make the recipient perform an unsafe action. It may arrive through email, messaging platforms, social media, or other communication channels.

### Types

- **Spear phishing:** Targeted at a particular person or organization.
- **Whaling:** Targets senior or high-value individuals.
- **Vishing:** Voice-based phishing, commonly through phone calls.
- **Smishing:** Phishing delivered through SMS/text messages.

### How it works

A typical phishing campaign creates a believable scenario, establishes urgency, and provides a link, attachment, or request. The victim may then be directed to a fake login page, malicious file, or fraudulent payment process.

### Case study

The 2020 Twitter incident is a well-known example of social engineering involving employees. Attackers used phone-based social engineering to obtain access to internal tools and then compromised accounts.

### Prevention

1. Verify unusual requests through an independent communication channel.
2. Use multi-factor authentication, preferably phishing-resistant methods where available.
3. Train users to inspect links, sender addresses, attachments, and unexpected requests.

## 2. Pretexting

### Definition

Pretexting is the creation of a false story or identity to make a target disclose information or perform an action.

### How it works

An attacker may pretend to be a colleague, IT support employee, vendor, bank representative, or manager. The attacker creates a believable context and then requests information or access.

### Case-study pattern

A common organizational scenario is an attacker impersonating an employee and contacting help desk staff to request a password reset or account recovery action.

### Prevention

1. Establish identity-verification procedures for sensitive requests.
2. Require approval or dual verification for account recovery and high-risk changes.
3. Train staff to resist authority and urgency pressure.

## 3. Baiting

### Definition

Baiting uses an attractive or curious item to persuade a person to take an unsafe action.

Examples include:
- Infected or suspicious USB drives
- Fake software downloads
- Pirated or cracked applications
- Fake documents or rewards

### How it works

The attacker makes the bait attractive enough that the victim ignores normal security caution. The resulting action may install malware, reveal credentials, or expose a system.

### Prevention

1. Block or restrict unauthorized removable media.
2. Use endpoint security and application controls.
3. Teach users never to install unknown software or connect unknown USB devices.

## 4. Quid Pro Quo

A quid-pro-quo attack offers a supposed benefit in exchange for information or an action. For example, an attacker may pretend to provide technical support in return for remote access or credentials.

### Prevention

- Verify support personnel through official channels.
- Never provide passwords or MFA codes to support staff.
- Use controlled remote-support procedures.

## Comparison Table

| Attack type | Primary target | Psychological lever | Best countermeasure |
|---|---|---|---|
| Phishing | Email/message users | Urgency, trust, curiosity | Awareness + MFA + verification |
| Spear phishing | Specific employee | Personalization/trust | Verification + phishing-resistant MFA |
| Vishing | Phone users | Authority/urgency | Callback verification |
| Smishing | Mobile users | Urgency/curiosity | Do not use links from unexpected texts |
| Pretexting | Employees/help desk | Authority/trust | Strong identity verification |
| Baiting | Employees/users | Curiosity/reward | Device/application controls + awareness |
| Quid pro quo | Employees | Reciprocity/helpfulness | Formal support procedures |

## Organisational 5-Point Security Awareness Checklist

1. **Verify identity:** Confirm unexpected requests using known contact information.
2. **Protect credentials:** Never share passwords, MFA codes, recovery codes, or session tokens.
3. **Handle links carefully:** Hover/check destinations and avoid unexpected login links.
4. **Report suspicious activity:** Give employees a simple, non-punitive reporting method.
5. **Practice regularly:** Use periodic awareness exercises and measure improvement.

## Conclusion

Social engineering succeeds by exploiting human trust and context. Technical defenses remain important, but organizations also need clear verification procedures, strong authentication, awareness training, and easy reporting mechanisms. Training should focus on realistic situations rather than simply telling users to “be careful.”

## References

1. NIST — Phishing: https://www.nist.gov/itl/smallbusinesscyber/guidance-topic/phishing
2. NIST — NIST Phish Scale User Guide: https://www.nist.gov/publications/nist-phish-scale-user-guide
3. NIST — Can You Spot a Phish?: https://www.nist.gov/publications/can-you-spot-phish
4. CISA — Social Engineering resources: https://www.cisa.gov/topics/cyber-threats-and-advisories
5. MITRE ATT&CK — Adversary-in-the-Middle: https://attack.mitre.org/techniques/T1557/
