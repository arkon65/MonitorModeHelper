# Linux Monitor Mode & Network Restore Scripts

A lightweight set of Bash scripts to quickly switch your wireless interface into **monitor mode** and restore it back to normal networking on Linux systems.  

These scripts simplify enabling monitor mode for tasks such as packet sniffing, wireless security testing, or network analysis.

---

## Scripts

### 1. `monmode.sh` – Enable Monitor Mode

This script will:

- Bring down your wireless interface  
- Kill processes that may interfere with monitor mode  
- Set the interface to monitor mode  
- Bring the interface back up  
- Print the status of each command  

**Dependencies:** `airmon-ng`, `iwconfig`, `ifconfig`  

**Usage:**

```bash
sudo ./monmode.sh
```

### 2. `rstnet.sh` – Restarts Networking Service and Manager

This script will:

- Restart the **networking** service  
- Restart the **NetworkManager** service  
- Print the success or failure of each operation  

**Dependencies:** `sudo`, `service`

**Usage:**

```bash
sudo ./rstnet.sh
```

## Example workflow

```bash
sudo ./monmode.sh       # Enable monitor mode
# Perform network analysis tasks
sudo ./rstnet.sh       # Restore normal network operation
```
