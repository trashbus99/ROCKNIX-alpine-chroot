# ROCKNIX Alpine Chroot Quick Start Guide  

**Tested on:**  
- Powkiddy X55 RK3566
- RG35XX H H700  (Community Build)
- Orange Pi 5 pro
- Odin 2

 Rockchip devices tend to work better with Panfrost drivers for 2D desktop type apps.





This guide helps you set up Alpine Linux in a chroot environment and install **Fastfetch** for system info display.

---

## Quick Start Guide  

### Example: Steps to Add fastfetch  

1. **Run the following command in your shell to set up Alpine:**  
    ```
    curl -L https://github.com/trashbus99/ROCKNIX-alpine-chroot/raw/main/start-alpine.sh | bash
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
    Comment out the first repo, add the following lines to the file, save, and exit:  
    ```
    https://dl-cdn.alpinelinux.org/alpine/v3.21/main
    https://dl-cdn.alpinelinux.org/alpine/v3.21/community
    ```

6. **Update the package index again:**  
    ```
    apk update && apk upgrade
    ```

7. **Install Fastfetch:**  
    ```
    apk add fastfetch
    ```

8. **Run Fastfetch to display system info:**  
    ```
    fastfetch
    ```

---

**Have Fun!** 🎉
