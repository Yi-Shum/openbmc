FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
SRC_URI += "file://evb-ast2600.cfg"
SRC_URI:append:evb-ast2600 = "file://0001-dt-bindings-Add-bindings-for-aspeed-pwm-tach.patch \
                            file://0002-pwm-Add-Aspeed-ast2600-PWM-support.patch \
                            file://0003-Porting-tach-driver-for-ast26xx-from-Aspeed-linux.patch \
                            file://0004_Add_tmp75.patch \
                            file://0005_enable_mac.patch \
                            file://0006_add_pwm_tach.patch"
