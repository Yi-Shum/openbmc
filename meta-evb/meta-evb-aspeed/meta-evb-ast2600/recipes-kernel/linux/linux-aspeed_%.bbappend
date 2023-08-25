FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
SRC_URI:append:evb-ast2600 = "file://0001_Add_tmp75.patch \
                            file://0002_enable_mac.patch"
