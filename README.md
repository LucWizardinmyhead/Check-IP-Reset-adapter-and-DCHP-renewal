# Check-IP-Reset-adapter-and-DCHP-renewal
This was a project I worked on to learn power shell and am actively making more projects.

Project Overview

This project provides an automated scripts for checking the IP address of a system, resetting it if needed, and performing DHCP renewal. This script was designed to streamline network troubleshooting and administration tasks, reducing the need for manual intervention when network issues arise.

This script was the first one I have coded so all feedback is welcome.

Features - 

    Check IP Address: The script retrieves the current IP address of the machine and displays it to the user.
    Reset Network Adapter: If the IP needs to be reset, the script can automatically disable and enable the network adapter, restoring network connectivity.
    DHCP Renewal: The script performs DHCP lease renewal to request a new IP address from the DHCP server.

Technologies Used - 

    PowerShell/Bash: Depending on the operating system, either PowerShell (for Windows) or Bash (for Linux/macOS) scripts are used to execute the tasks.
    Network Configuration Tools:
        ipconfig (Windows)
        ifconfig or nmcli (Linux/macOS)

Prerequisites - 

    Windows: Windows PowerShell (Version 5.0 or later) installed.
    Linux/macOS: Bash shell and network tools (ifconfig, nmcli) should be available.

Installation - 

    Clone this repository:
    bash
    git clone https://github.com/yourusername/CheckIPandDHCPrestart.git
    cd CheckIPandDHCPrestart


Ensure the scripts have execution permission - 
bash
chmod +x CheckIPandDHCPrestart.sh

For Windows users, run the PowerShell script directly - 

powershell

.\CheckIPandDHCPrestart.ps1

Usage - 
This script lets you list all the network adapters and check if they are disconnted or working and restart them all. 

License

This project is licensed under the MIT License.
Contributing

Contributions are welcome! Please open an issue or submit a pull request if you find any bugs or have suggestions for improvements.
