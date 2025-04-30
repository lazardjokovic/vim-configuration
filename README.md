# Basic VIM configuration

My personal VIM configuration.

## Prepare your local environment

Install Vim Plug: https://github.com/junegunn/vim-plug?tab=readme-ov-file

### Debian

```bash
sudo apt-get update
sudo apt install vim ripgrep fd-find -y
```
### Arch

```bash
sudo pacman -Syu
sudo pacman -S vim ripgrep fd
```

### Red Hat/CentOS (CentOS 7 or older, RHEL 7 or older)

```bash
sudo yum update -y
sudo yum install vim-enhanced ripgrep fd-find -y
```

### Red Hat (RHEL 8+) / Fedora / CentOS 8+

```bash
sudo dnf update -y
sudo dnf install vim ripgrep fd-find -y
```

### Copy configuration
  ```bash
  cp .vimrc to ~/.vimrc
  vi . # and run PlugInstall
  ```

### Close vim and reload the terminal.
