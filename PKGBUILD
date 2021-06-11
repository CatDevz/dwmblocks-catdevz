pkgname=dwmblocks-catdevz-git
pkgver=1.0.r1
pkgrel=1
epoch=
pkgdesc="My personal build of dwmblocks"
arch=(x86_64)
url="https://github.com/CatDevz/dwmblocks-catdevz.git"
license=('ISC')
groups=()
depends=(dwm)
makedepends=(git)
checkdepends=()
optdepends=()
provides=(dwmblocks)
conflicts=(dwmblocks)
replaces=()
backup=()
options=()
install=
changelog=
source=("git+$url")
noextract=()
md5sums=('SKIP')
validpgpkeys=()

pkgver() {
    cd "${_pkgname}"
    printf "1.0.r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

package() {
    cd dwmblocks-catdevz
    mkdir -p ${pkgdir}/opt/${pkgname}
    cp -rf * ${pkgdir}/opt/${pkgname}
    make PREFIX=/usr DESTDIR="${pkgdir}" install
    install -Dm644 LICENSE "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"
    install -Dm644 README.md "${pkgdir}/usr/share/doc/${pkgname}/README.md"
    chmod 0755 ${pkgdir}/opt/${pkgname}/scripts/*
}
