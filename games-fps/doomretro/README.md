### Gentoo Linux

DOOM Retro is available for Gentoo Linux via the [xerxes-overlay](https://github.com/xerxeslins/xerxes-overlay) repository.

**Stable version:**

```bash
eselect repository enable xerxes-overlay
emaint sync -r xerxes-overlay
emerge games-fps/doomretro

```

**Live version (latest git commit):**

```bash
mkdir -p /etc/portage/package.accept_keywords
echo "=games-fps/doomretro-9999 **" > /etc/portage/package.accept_keywords/doomretro
emerge =games-fps/doomretro-9999

```
