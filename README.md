<img width="1197" alt="Screenshot 2022-04-02 at 14 26 47" src="https://user-images.githubusercontent.com/30550722/161383257-109f5af7-01e4-43d5-a336-d2bb28315256.png">

# iPhoneFuse
 
This is a script to manualy install ifuse on macOS to connect to your iPhone filesystem with a USB cable, no more SSH or SFTP needed ! Before macFuse went closed-source, you could do all that with Homebrew, now your need to compile yourself a number of packages.

## Requirements

- macFUSE and Homebrew on your computer 
- Root jailbreak and AFS2 on the iPhone

## Usage

Execute setup.sh in your terminal.

Change your Mac security policy to allow signed extensions in Mac revovery mode, then reboot twice. Execute mount.sh, multiple times if needed (twice for pairing via USB and again for actually mount) and voilà.
