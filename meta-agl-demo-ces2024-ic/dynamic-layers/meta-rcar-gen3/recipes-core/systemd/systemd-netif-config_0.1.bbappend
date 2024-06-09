FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:append = " \
    file://01-can0.network \
    "

do_install:append() {
	install -D -m0644 ${WORKDIR}/01-can0.network ${D}${sysconfdir}/systemd/network/01-can0.network
}
