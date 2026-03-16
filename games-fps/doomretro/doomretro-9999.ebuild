EAPI=8

inherit cmake git-r3

DESCRIPTION="The dark, gritty, thoroughly refined, and decidedly retro DOOM source port"
HOMEPAGE="https://www.doomretro.com/"
EGIT_REPO_URI="https://github.com/bradharding/doomretro.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""

DEPEND="
    media-libs/libsdl2[opengl,sound,video]
    media-libs/sdl2-image[png]
    media-libs/sdl2-mixer[flac,mod,mp3,ogg]
"
RDEPEND="${DEPEND}"
