FILESEXTRAPATHS:prepend:evb-ast2600 := "${THISDIR}/${PN}:"

SRC_URI:append:evb-ast2600 = " \
    file://blacklist.json \
    file://evb-ast2600-baseboard.json \
    "

do_install:append:evb-ast2600 () {
    install -m 644 ${WORKDIR}/blacklist.json ${D}/usr/share/entity-manager/blacklist.json
    install -m 644 ${WORKDIR}/evb-ast2600-baseboard.json ${D}/usr/share/entity-manager/configurations/evb-ast2600-baseboard.json
}
