# Subchecker

**Subdomain directory checker**

You can check the status code of a directory on all subdomains that are in a file

![subcheck](https://user-images.githubusercontent.com/47476901/140427734-713e9535-4278-4ef0-86fa-a08a56e2389f.PNG)

### How to install:

```bash
git clone https://github.com/erik-451/subcheck
cd subcheck
chmod +x subcheck.sh
./subcheck.sh subdomains.txt /robots.txt 1 |grep 200
```
