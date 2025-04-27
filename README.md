# Azure Security Baseline Audit Tool

## Overview
This project audits Microsoft Azure environments against selected controls from the Microsoft Security Benchmark (ASB).

## Components
- **baseline_checklist.csv**: Excel checklist for manual auditing.
- **audit_script.ps1**: PowerShell script to verify key Azure settings.
- **secure_arm_template.json**: ARM template to securely deploy hardened Azure resources.

## How to Use
1. Review the baseline checklist.
2. Run `audit_script.ps1` to automatically check your Azure subscription.
3. Use `secure_arm_template.json` to deploy hardened configurations.

## Prerequisites
- Azure PowerShell modules installed.
- Azure subscription access.

## Author
Aaron Shober | GitHub: [cybersecurityaaron](https://github.com/cybersecurityaaron)
