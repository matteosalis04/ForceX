# BruteForce v1.0.0

## 🚀 Introduction
BruteForce v1.0.0 is a powerful and simple Bash script for performing brute-force attacks on SSH, FTP, and SMB services using **Hydra**. Perfect for security testing and ethical hacking!

> **⚠️ Disclaimer**: This script must be used exclusively for legal purposes, such as penetration testing on systems you have authorization for. Misuse is illegal and can result in severe consequences.

---

## 🛠️ Features
- ✅ Supports **SSH, FTP, and SMB**
- ✅ Uses **Hydra** for efficient attacks
- ✅ Simple and fast configuration
- ✅ Customizable user, password, and thread count
- ✅ Immediate feedback on attack results

---

## 🔧 Requirements
Before running the script, ensure you have installed:
- **Hydra** → `sudo apt install hydra` (Debian/Ubuntu) or `brew install hydra` (macOS)
- **Bash** → Preinstalled on most Linux/macOS systems

---

## 📥 Installation
Clone this repository and navigate to the folder:
```bash
 git clone https://github.com/MagicSale/BruteForce.git
 cd BruteForce
```
Grant execution permissions to the script:
```bash
chmod +x bruteforce.sh
```

---

## ▶️ Usage
Run the script with:
```bash
./bruteforce.sh
```
Enter the requested information, including:
- The service to attack (**ssh**, **ftp**, **smb**)
- Number of threads
- File containing usernames
- File containing passwords
- Target (IP or hostname)

Example:
```bash
Specify the service you want to attack (ssh ftp smb): ssh
Number of threads (Low: moderate - High: aggressive): 4
User file (example: list_users.txt): users.txt
Password file (example: list_password.txt): passwords.txt
Target (IP or hostname): 192.168.1.10
```

---

## 📌 Example Output
```
Executing brute force ssh with Hydra...
[DATA] Hydra has found valid credentials!
```
If no valid credentials are found:
```
No valid credentials found for ssh.
```

---

## 🛑 Legal Warning
Unauthorized use of this script on third-party systems is **ILLEGAL**. The author is **NOT responsible** for any damage or misuse.

---

## 👨‍💻 Author
**MagicSale** - Aspiring Ethical Hacker & Python Developer

📧 Contact me on [GitHub](https://github.com/matteosalis04) for suggestions or improvements!

---

## ⭐ Contribute
If you have ideas to improve this script, feel free to **fork** it and open a **pull request**! 😉

---

## 📜 License

This project is licensed under the **MIT License**. See the LICENSE file for more details.
