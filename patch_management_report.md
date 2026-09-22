# Task 6 — Research Report: The Importance of Patch Management

## Introduction

Patch management is the structured process of identifying, prioritizing, acquiring, testing, deploying, and verifying software and firmware updates. NIST SP 800-40 Rev. 4 describes enterprise patch management as identifying, prioritizing, acquiring, installing, and verifying patches, updates, and upgrades throughout an organization.

Unpatched software can leave known vulnerabilities available to attackers. Patch management therefore reduces the period during which vulnerable systems remain exposed.

## Why Patches Matter

Software vulnerabilities are weaknesses that can potentially be exploited. Public vulnerability records commonly use CVE identifiers to give vulnerabilities consistent references. CVSS, operated by FIRST, is a separate program used to score vulnerability severity.

A vulnerability may be discovered by researchers, vendors, security teams, or other parties. After disclosure, vendors may release fixes or mitigations. Organizations then need to determine whether affected products exist in their environment and how urgently they should be remediated.

### Example 1 — WannaCry / EternalBlue

The 2017 WannaCry outbreak demonstrated the consequences of vulnerable and unpatched systems. CISA's reporting describes WannaCry as a global ransomware campaign that rapidly spread across many countries. The malware used the EternalBlue SMB exploit as one of its propagation mechanisms.

The incident illustrates why organizations need accurate asset inventories, timely patching, and emergency response procedures.

### Example 2 — Equifax Breach

The 2017 Equifax breach is another important example. A U.S. Government Accountability Office report found that factors including failure to properly identify the vulnerable Apache Struts component and patching/notification process weaknesses contributed to the incident.

The case shows that simply having a patch available is not enough. Organizations must know which systems are affected and verify that remediation actually occurred.

## Consequences of Not Patching

### 1. Data breaches

Attackers can exploit known vulnerabilities to gain unauthorized access to applications or databases.

### 2. Ransomware

Unpatched systems may provide an entry point or propagation path for ransomware.

### 3. Operational disruption

Successful exploitation can cause systems to become unavailable or require emergency recovery.

### 4. Compliance and financial consequences

Security incidents can lead to investigation, notification, recovery, legal, regulatory, and reputational costs depending on the organization and jurisdiction.

## Patch Management Lifecycle

### 1. Discovery

Maintain an accurate inventory of hardware, operating systems, applications, firmware, and versions.

### 2. Assessment

Identify which assets are affected by a vulnerability and determine business exposure.

### 3. Prioritization

Consider severity, exploitability, exposure, asset importance, availability of compensating controls, and business impact.

### 4. Testing

Test patches in an appropriate non-production environment when feasible. Check compatibility and application functionality.

### 5. Deployment

Deploy the approved patch using controlled processes. Emergency patches may require an accelerated workflow.

### 6. Verification

Confirm that the patch installed successfully and that the vulnerable version is no longer present.

### 7. Monitoring and documentation

Record deployment status, failures, exceptions, and remaining risk. Continue monitoring for new vulnerabilities.

## 7-Step Patch Management Checklist

1. Maintain a complete asset and software inventory.
2. Monitor vendor advisories, CVE records, and security intelligence.
3. Identify affected systems and assess business exposure.
4. Prioritize patches based on risk and exploitability.
5. Test patches where appropriate.
6. Deploy patches using controlled and repeatable procedures.
7. Verify installation and document exceptions/remediation status.

## Challenges and Solutions

| Challenge | Why it happens | Practical response |
|---|---|---|
| Legacy systems | Old software may not support current patches | Isolate, restrict access, plan replacement |
| Downtime concerns | Patching can require restarts | Maintenance windows and redundancy |
| Testing requirements | Updates can affect applications | Test representative workloads before deployment |
| Incomplete inventory | Unknown assets remain unpatched | Automated discovery and ownership records |
| Emergency vulnerabilities | Normal change processes may be too slow | Define an emergency patch workflow |
| Third-party software | Different vendors have different schedules | Track vendor advisories and software ownership |

## CVE and CVSS

A **CVE** identifier provides a standardized reference for a publicly known vulnerability. **CVSS** provides a standardized method for expressing vulnerability severity. CVSS should support risk assessment rather than being treated as the only factor in prioritization; the business context and actual exposure of an affected asset also matter.

## Conclusion

Patch management is a continuous security process rather than a one-time update activity. Effective programs combine accurate asset inventory, vulnerability intelligence, risk-based prioritization, controlled deployment, verification, and documentation. The WannaCry and Equifax examples demonstrate why organizations need both timely remediation and reliable processes for proving that vulnerable systems have actually been fixed.

## References

1. NIST SP 800-40 Rev. 4 — Guide to Enterprise Patch Management Planning: https://csrc.nist.gov/pubs/sp/800/40/r4/final
2. NIST — Patch Management Topic: https://csrc.nist.gov/topics/security-and-privacy/security-programs-and-operations/patch-management
3. CISA — 2017 NCCIC Year in Review / WannaCry: https://www.cisa.gov/sites/default/files/Annual_Reports/NCCIC_Year_in_Review_2017_Final.pdf
4. U.S. GAO — GAO-18-559, Data Protection and the Equifax 2017 Breach: https://www.gao.gov/assets/gao-18-559.pdf
5. CVE Program — CVE and CVSS relationship: https://www.cve.org/ProgramOrganization/ProgramRelationshipwithPartners
