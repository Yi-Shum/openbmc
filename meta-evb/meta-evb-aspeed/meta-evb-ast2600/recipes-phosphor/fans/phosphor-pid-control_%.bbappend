FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

EXTRA_OECONF:append = " --enable-configure-dbus=yes"

FILESEXTRAPATHS:prepend:evb-ast2600 := "${THISDIR}/${PN}:"

FILES:${PN}:append:evb-ast2600 = " ${datadir}/swampd"
FILES:${PN}:append:evb-ast2600 = " ${systemd_system_unitdir}/phosphor-pid-control.service.d/*.conf"

do_install:append:evb-ast2600() {

    override_dir="${D}${systemd_system_unitdir}/phosphor-pid-control.service.d"
    override_file="${override_dir}/10-bletchley.conf"
    mkdir -p ${D}${systemd_system_unitdir}/phosphor-pid-control.service.d
    echo "[Unit]" > ${override_file}
    echo "After=xyz.openbmc_project.hwmontempsensor.service" >> ${override_file}
    echo "After=phosphor-virtual-sensor.service" >> ${override_file}

    install -d ${D}${datadir}/swampd
}
