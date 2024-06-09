SUMMARY     = "Systemd network interface configuration"
DESCRIPTION = "Systemd network interface configuration \
              "
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"

SRC_URI = " \
    file://20-wired.network \
    file://21-usb.network \
    file://10-vxcan.network \
    "

do_install() {
	install -D -m0644 ${WORKDIR}/20-wired.network ${D}${sysconfdir}/systemd/network/20-wired.network
	install -D -m0644 ${WORKDIR}/21-usb.network ${D}${sysconfdir}/systemd/network/21-usb.network
	install -D -m0644 ${WORKDIR}/10-vxcan.network ${D}${sysconfdir}/systemd/network/10-vxcan.network
}

PACKAGE_ARCH = "${MACHINE_ARCH}"

PACKAGE_BEFORE_PN:append = " ${PN}-vxcan"
FILES:${PN} = "\
    ${sysconfdir}/systemd/network/* \
"
FILES:${PN}-vxcan = "\
    ${sysconfdir}/systemd/network/10-vxcan.network \
"
