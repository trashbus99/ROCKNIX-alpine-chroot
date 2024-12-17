# ROCKNIX Alpine Chroot Quick Start Guide  

**Tested on:**  
- Powkiddy X55  
- H700 (Community Build)  

This guide helps you set up Alpine Linux in a chroot environment and install **Neofetch** for system info display.

---

## Quick Start Guide  

### Steps to Add Neofetch  

1. **Run the following command in your shell to set up Alpine:**  
    ```
    curl -L https://github.com/trashbus99/ROCKNIX-alpinechroot/raw/main/start-alpine.sh | bash
    ```

2. **Enter the chroot environment:**  
    ```
    chroot /storage/my-alpine-chroot /bin/bash -l
    ```

3. **Update the package index:**  
    ```
    apk update
    ```

4. **Install a text editor (nano):**  
    ```
    apk add nano
    ```

5. **Edit the repositories file and add the following URLs:**  
    ```
    nano /etc/apk/repositories
    ```
    Add the following lines to the file:  
    ```
    https://dl-cdn.alpinelinux.org/alpine/v3.19/main
    https://dl-cdn.alpinelinux.org/alpine/v3.19/community
    ```

6. **Update the package index again:**  
    ```
    apk update
    ```

7. **Install Neofetch:**  
    ```
    apk add neofetch
    ```

8. **Run Neofetch to display system info:**  
    ```
    neofetch
    ```

---

**Have Fun!** 🎉
