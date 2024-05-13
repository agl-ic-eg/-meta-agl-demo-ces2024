IMAGE_INSTALL:append = " \
    ti-bt-firmware linux-firmware-wl18xx wlconf \
"
WKS_FILES:remove = " agl-ic-container-noloader.wks agl-ic-container-noloader-demo.wks"
WKS_FILES:prepend = " \
    ${@oe.utils.conditional('OUT_OF_TREE_CONTAINER_IMAGE_DEPLOY_DIR', '', 'agl-ic-container-noloader.wks ', 'agl-ic-container-noloader-demo-ext.wks ', d)} \
"
