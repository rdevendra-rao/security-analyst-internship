# Task 1 - Nmap localhost scan
# Run PowerShell as Administrator if you want to attempt OS detection.

$target = "127.0.0.1"
$out = "nmap_scan_results.txt"

"=== Basic Scan ===" | Out-File $out
nmap $target | Out-File $out -Append

"`n=== Service Detection (-sV) ===" | Out-File $out -Append
nmap -sV $target | Out-File $out -Append

"`n=== OS Detection (-O) ===" | Out-File $out -Append
nmap -O $target | Out-File $out -Append

Write-Host "Scan complete. Results saved to $out"
