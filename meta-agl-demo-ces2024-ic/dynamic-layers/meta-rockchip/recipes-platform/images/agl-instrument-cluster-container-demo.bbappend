IMAGE_INSTALL:append = " \
"

WKS_FILES:remove = " agl-ic-container-rockchip.wks agl-ic-container-rockchip-demo.wks"
WKS_FILES:prepend = " \
    ${@oe.utils.conditional('OUT_OF_TREE_CONTAINER_IMAGE_DEPLOY_DIR', '', 'agl-ic-container-rockchip.wks ', 'agl-ic-container-rockchip-demo-ext.wks ', d)} \
"
