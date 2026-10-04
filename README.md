# glasnost_mk2_buildroot

setenv bootargs 'earlycon=atmel_serial,0xfffff200 console=ttyS0,115200 ignore_loglevel root=/dev/mmcblk0p2 rootwait'
setenv bootcmd 'fatload mmc 0:1 0x21000000 zImage; fatload mmc 0:1 0x22800000 glasnost_mk2.dtb; bootz 0x21000000 - 0x22800000'
