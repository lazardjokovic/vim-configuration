# Basic VIM Configuration

My personal VIM configuration, including:
- Gruvbox colorscheme
- FZF integration with `fd` and `ripgrep`
- NERDTree file explorer
- Git integration with Fugitive
- Custom exact-match search commands for files and content

---

## Prepare Your Local Environment

### Install Vim Plug (plugin manager)

Follow the instructions here:  
👉 [vim-plug GitHub](https://github.com/junegunn/vim-plug)

---

## Install Required Tools

### Debian / Ubuntu

```bash
sudo apt-get update
sudo apt install vim ripgrep fd-find -y
```

### Arch Linux

```bash
sudo pacman -Syu
sudo pacman -S vim ripgrep fd
```

### Red Hat / CentOS (CentOS 7 or RHEL 7 and older)

```bash
sudo yum update -y
sudo yum install vim-enhanced ripgrep fd-find -y
```

### Red Hat (RHEL 8+), Fedora, CentOS 8+

```bash
sudo dnf update -y
sudo dnf install vim ripgrep fd-find -y
```

---

## Apply the Configuration

```bash
cp .vimrc ~/.vimrc
vim
# Inside Vim, run:
:PlugInstall
```

---

## Usage Notes

✅ **File Search (FZF + fd)**  
- Press `<Ctrl-p>` → fuzzy-search files

✅ **Content Search (FZF + ripgrep)**  
- Press `<Ctrl-f>` → search inside file contents by exact string

✅ **Exact Filename Search (FZF + fd + grep)**  
- Press `<Ctrl-Shift-p>` → search for files containing the exact string in their name

✅ **NERDTree File Explorer**  
- Toggle with `<Ctrl-n>`

✅ **Relative Line Numbers**  
- Toggle with `<F2>`

✅ **Window Navigation**  
- `<Ctrl-h>` / `<Ctrl-j>` / `<Ctrl-k>` → move between splits

---

## Final Step

After installing, close Vim and reload your terminal to ensure all changes apply.

---

## Features Overview

| Feature             | Plugin                     | Description                                   |
|---------------------|---------------------------|---------------------------------------------|
| Sensible defaults   | `vim-sensible`            | Smart base settings                         |
| Fuzzy Finder        | `fzf`, `fzf.vim`         | Fast file and content search                |
| File Explorer       | `NERDTree`               | Tree-style file browser                     |
| Git Integration     | `vim-fugitive`           | Git commands inside Vim                     |
| Color Scheme        | `gruvbox`                | Dark/light color themes                     |
| Exact Match Search  | Custom `Rg` / `FdExact`  | Search files or content by exact strings    |

