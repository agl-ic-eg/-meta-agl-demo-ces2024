FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:append = " \
    file://lxc.cfg \
    file://lxc-net.cfg \
    file://disable_rt_group.cfg \
    file://socket-can.cfg \
"
