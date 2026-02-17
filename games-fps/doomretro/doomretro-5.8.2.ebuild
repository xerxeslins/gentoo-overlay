# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake desktop xdg

DESCRIPTION="A refined, classic DOOM source port for Windows and Linux"
HOMEPAGE="https://www.doomretro.com/"
SRC_URI="https://github.com/bradharding/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
        media-libs/libsdl2[sound,video,opengl]
        media-libs/sdl2-image[png,jpeg]
        media-libs/sdl2-mixer[midi,mp3,vorbis,wav]
"
RDEPEND="${DEPEND}"

src_install() {
        # Instala o binário compilado em /usr/bin
        dobin "${BUILD_DIR}/${PN}"

        # Instala o WAD obrigatório em /usr/share/doom
        insinto /usr/share/doom
        doins "${BUILD_DIR}/${PN}.wad"

        # Cria o link simbólico para o jogo achar o WAD (Correção do erro anterior)
        dosym ../share/doom/doomretro.wad /usr/bin/doomretro.wad

        # Criação do atalho no menu
        make_desktop_entry "${PN}" "DOOM Retro" "doomretro" "Game;ActionGame;"

        einstalldocs
}
