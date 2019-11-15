1) a) Effectuer la commande suivante "udevadm monitor -k -p". Connecter ensuite un périphérique USB. Déconnecter enfin ce périphérique. Que remarquez-vous? 
   b) Reconnecter la clé USB et exécuter la commande "udevadm info -a -p /sys/block/sdb". Qu'en déduisez-vous par rapport à la commande de la question précédente? 
   c) Faire la commande "df -h" et retrouver avec le système de fichiers associé à la clé USB. 
      Parcourir le dossier /sys/block/sd[a-z] en fonction de ce que vous avez trouvé à la question précédente. Que remarquez-vous? 
   d) Effectuer la commande "sudo /sbin/blkid -o udev -p /dev/sdb1". 

a) udevadm monitor -k -p
monitor will print the received events for:
KERNEL - the kernel uevent

KERNEL[8414.073713] add      /devices/pci0000:00/0000:00:0b.0/usb1/1-1 (usb)
ACTION=add
DEVPATH=/devices/pci0000:00/0000:00:0b.0/usb1/1-1
SUBSYSTEM=usb
DEVNAME=/dev/bus/usb/001/027
DEVTYPE=usb_device
PRODUCT=1e3d/2093/100
TYPE=0/0/0
BUSNUM=001
DEVNUM=027
SEQNUM=2455
MAJOR=189
MINOR=26

KERNEL[8414.080107] add      /devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0 (usb)
ACTION=add
DEVPATH=/devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0
SUBSYSTEM=usb
DEVTYPE=usb_interface
PRODUCT=1e3d/2093/100
TYPE=0/0/0
INTERFACE=8/6/80
MODALIAS=usb:v1E3Dp2093d0100dc00dsc00dp00ic08isc06ip50in00
SEQNUM=2456

KERNEL[8414.083384] add      /devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3 (scsi)
ACTION=add
DEVPATH=/devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3
SUBSYSTEM=scsi
DEVTYPE=scsi_host
SEQNUM=2457

KERNEL[8414.083452] add      /devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/scsi_host/host3 (scsi_host)
ACTION=add
DEVPATH=/devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/scsi_host/host3
SUBSYSTEM=scsi_host
SEQNUM=2458

KERNEL[8414.083538] bind     /devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0 (usb)
ACTION=bind
DEVPATH=/devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0
SUBSYSTEM=usb
DEVTYPE=usb_interface
DRIVER=usb-storage
PRODUCT=1e3d/2093/100
TYPE=0/0/0
INTERFACE=8/6/80
MODALIAS=usb:v1E3Dp2093d0100dc00dsc00dp00ic08isc06ip50in00
SEQNUM=2459

KERNEL[8414.083655] bind     /devices/pci0000:00/0000:00:0b.0/usb1/1-1 (usb)
ACTION=bind
DEVPATH=/devices/pci0000:00/0000:00:0b.0/usb1/1-1
SUBSYSTEM=usb
DEVNAME=/dev/bus/usb/001/027
DEVTYPE=usb_device
DRIVER=usb
PRODUCT=1e3d/2093/100
TYPE=0/0/0
BUSNUM=001
DEVNUM=027
SEQNUM=2460
MAJOR=189
MINOR=26

KERNEL[8415.109311] add      /devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0 (scsi)
ACTION=add
DEVPATH=/devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0
SUBSYSTEM=scsi
DEVTYPE=scsi_target
SEQNUM=2461

KERNEL[8415.109380] add      /devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0/3:0:0:0 (scsi)
ACTION=add
DEVPATH=/devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0/3:0:0:0
SUBSYSTEM=scsi
DEVTYPE=scsi_device
MODALIAS=scsi:t-0x00
SEQNUM=2462

KERNEL[8415.109439] add      /devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0/3:0:0:0/scsi_disk/3:0:0:0 (scsi_disk)
ACTION=add
DEVPATH=/devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0/3:0:0:0/scsi_disk/3:0:0:0
SUBSYSTEM=scsi_disk
SEQNUM=2463

KERNEL[8415.109505] bind     /devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0/3:0:0:0 (scsi)
ACTION=bind
DEVPATH=/devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0/3:0:0:0
SUBSYSTEM=scsi
DEVTYPE=scsi_device
DRIVER=sd
MODALIAS=scsi:t-0x00
SEQNUM=2464

KERNEL[8415.109568] add      /devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0/3:0:0:0/scsi_device/3:0:0:0 (scsi_device)
ACTION=add
DEVPATH=/devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0/3:0:0:0/scsi_device/3:0:0:0
SUBSYSTEM=scsi_device
SEQNUM=2465

KERNEL[8415.112779] add      /devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0/3:0:0:0/scsi_generic/sg2 (scsi_generic)
ACTION=add
DEVPATH=/devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0/3:0:0:0/scsi_generic/sg2
SUBSYSTEM=scsi_generic
DEVNAME=/dev/sg2
SEQNUM=2466
MAJOR=21
MINOR=2

KERNEL[8415.112895] add      /devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0/3:0:0:0/bsg/3:0:0:0 (bsg)
ACTION=add
DEVPATH=/devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0/3:0:0:0/bsg/3:0:0:0
SUBSYSTEM=bsg
DEVNAME=/dev/bsg/3:0:0:0
SEQNUM=2467
MAJOR=249
MINOR=2

KERNEL[8415.152046] add      /devices/virtual/bdi/8:16 (bdi)
ACTION=add
DEVPATH=/devices/virtual/bdi/8:16
SUBSYSTEM=bdi
SEQNUM=2468

KERNEL[8415.225357] add      /devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0/3:0:0:0/block/sdb (block)
ACTION=add
DEVPATH=/devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0/3:0:0:0/block/sdb
SUBSYSTEM=block
DEVNAME=/dev/sdb
DEVTYPE=disk
SEQNUM=2469
MAJOR=8
MINOR=16

KERNEL[8415.225458] add      /devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0/3:0:0:0/block/sdb/sdb1 (block)
ACTION=add
DEVPATH=/devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0/3:0:0:0/block/sdb/sdb1
SUBSYSTEM=block
DEVNAME=/dev/sdb1
DEVTYPE=partition
PARTN=1
SEQNUM=2470
MAJOR=8
MINOR=17

KERNEL[8424.242870] remove   /devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0/3:0:0:0/bsg/3:0:0:0 (bsg)
ACTION=remove
DEVPATH=/devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0/3:0:0:0/bsg/3:0:0:0
SUBSYSTEM=bsg
DEVNAME=/dev/bsg/3:0:0:0
SEQNUM=2471
MAJOR=249
MINOR=2

KERNEL[8424.243634] remove   /devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0/3:0:0:0/scsi_generic/sg2 (scsi_generic)
ACTION=remove
DEVPATH=/devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0/3:0:0:0/scsi_generic/sg2
SUBSYSTEM=scsi_generic
DEVNAME=/dev/sg2
SEQNUM=2472
MAJOR=21
MINOR=2

KERNEL[8424.243918] remove   /devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0/3:0:0:0/scsi_device/3:0:0:0 (scsi_device)
ACTION=remove
DEVPATH=/devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0/3:0:0:0/scsi_device/3:0:0:0
SUBSYSTEM=scsi_device
SEQNUM=2473

KERNEL[8424.244811] remove   /devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0/3:0:0:0/scsi_disk/3:0:0:0 (scsi_disk)
ACTION=remove
DEVPATH=/devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0/3:0:0:0/scsi_disk/3:0:0:0
SUBSYSTEM=scsi_disk
SEQNUM=2474

KERNEL[8424.248203] remove   /devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0/3:0:0:0/block/sdb/sdb1 (block)
ACTION=remove
DEVPATH=/devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0/3:0:0:0/block/sdb/sdb1
SUBSYSTEM=block
DEVNAME=/dev/sdb1
DEVTYPE=partition
PARTN=1
SEQNUM=2475
MAJOR=8
MINOR=17

KERNEL[8424.248429] remove   /devices/virtual/bdi/8:16 (bdi)
ACTION=remove
DEVPATH=/devices/virtual/bdi/8:16
SUBSYSTEM=bdi
SEQNUM=2476

KERNEL[8424.248724] remove   /devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0/3:0:0:0/block/sdb (block)
ACTION=remove
DEVPATH=/devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0/3:0:0:0/block/sdb
SUBSYSTEM=block
DEVNAME=/dev/sdb
DEVTYPE=disk
SEQNUM=2477
MAJOR=8
MINOR=16

KERNEL[8424.248869] unbind   /devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0/3:0:0:0 (scsi)
ACTION=unbind
DEVPATH=/devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0/3:0:0:0
SUBSYSTEM=scsi
DEVTYPE=scsi_device
SEQNUM=2478

KERNEL[8424.248997] remove   /devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0/3:0:0:0 (scsi)
ACTION=remove
DEVPATH=/devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0/3:0:0:0
SUBSYSTEM=scsi
DEVTYPE=scsi_device
MODALIAS=scsi:t-0x00
SEQNUM=2479

KERNEL[8424.262168] remove   /devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0 (scsi)
ACTION=remove
DEVPATH=/devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0
SUBSYSTEM=scsi
DEVTYPE=scsi_target
SEQNUM=2480

KERNEL[8424.262269] remove   /devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/scsi_host/host3 (scsi_host)
ACTION=remove
DEVPATH=/devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/scsi_host/host3
SUBSYSTEM=scsi_host
SEQNUM=2481

KERNEL[8424.262327] remove   /devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3 (scsi)
ACTION=remove
DEVPATH=/devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3
SUBSYSTEM=scsi
DEVTYPE=scsi_host
SEQNUM=2482

KERNEL[8424.262570] unbind   /devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0 (usb)
ACTION=unbind
DEVPATH=/devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0
SUBSYSTEM=usb
DEVTYPE=usb_interface
PRODUCT=1e3d/2093/100
TYPE=0/0/0
INTERFACE=8/6/80
SEQNUM=2483

KERNEL[8424.262668] remove   /devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0 (usb)
ACTION=remove
DEVPATH=/devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0
SUBSYSTEM=usb
DEVTYPE=usb_interface
PRODUCT=1e3d/2093/100
TYPE=0/0/0
INTERFACE=8/6/80
MODALIAS=usb:v1E3Dp2093d0100dc00dsc00dp00ic08isc06ip50in00
SEQNUM=2484

KERNEL[8424.262884] unbind   /devices/pci0000:00/0000:00:0b.0/usb1/1-1 (usb)
ACTION=unbind
DEVPATH=/devices/pci0000:00/0000:00:0b.0/usb1/1-1
SUBSYSTEM=usb
DEVNAME=/dev/bus/usb/001/027
DEVTYPE=usb_device
PRODUCT=1e3d/2093/100
TYPE=0/0/0
BUSNUM=001
DEVNUM=027
SEQNUM=2485
MAJOR=189
MINOR=26

KERNEL[8424.263005] remove   /devices/pci0000:00/0000:00:0b.0/usb1/1-1 (usb)
ACTION=remove
DEVPATH=/devices/pci0000:00/0000:00:0b.0/usb1/1-1
SUBSYSTEM=usb
DEVNAME=/dev/bus/usb/001/027
DEVTYPE=usb_device
PRODUCT=1e3d/2093/100
TYPE=0/0/0
BUSNUM=001
DEVNUM=027
SEQNUM=2486
MAJOR=189
MINOR=26

La commande permet de détecter la connexion ou la déconnexion de n'importe quel périphérique. C'est bien udev qui gère les périphériques.

b) udevadm info -a -p /sys/block/sdb

Udevadm info starts with the device specified by the devpath and then
walks up the chain of parent devices. It prints for every device
found, all possible attributes in the udev rules key format.
A rule to match, can be composed by the attributes of the device
and the attributes from one single parent device.

  looking at device '/devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0/3:0:0:0/block/sdb':
    KERNEL=="sdb"
    SUBSYSTEM=="block"
    DRIVER==""
    ATTR{hidden}=="0"
    ATTR{alignment_offset}=="0"
    ATTR{inflight}=="       0        0"
    ATTR{stat}=="     217      423     8917     3672        0        0        0        0        0     3124     3124        0        0        0        0"
    ATTR{size}=="4104192"
    ATTR{discard_alignment}=="0"
    ATTR{ro}=="0"
    ATTR{events_poll_msecs}=="-1"
    ATTR{removable}=="1"
    ATTR{range}=="16"
    ATTR{capability}=="51"
    ATTR{ext_range}=="256"
    ATTR{events_async}==""
    ATTR{events}=="media_change"

  looking at parent device '/devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0/3:0:0:0':
    KERNELS=="3:0:0:0"
    SUBSYSTEMS=="scsi"
    DRIVERS=="sd"
    ATTRS{evt_inquiry_change_reported}=="0"
    ATTRS{device_busy}=="0"
    ATTRS{iocounterbits}=="32"
    ATTRS{eh_timeout}=="10"
    ATTRS{timeout}=="30"
    ATTRS{queue_type}=="none"
    ATTRS{model}=="Flash Disk      "
    ATTRS{inquiry}==""
    ATTRS{iorequest_cnt}=="0x130"
    ATTRS{rev}=="5.00"
    ATTRS{state}=="running"
    ATTRS{max_sectors}=="240"
    ATTRS{device_blocked}=="0"
    ATTRS{evt_media_change}=="0"
    ATTRS{ioerr_cnt}=="0x0"
    ATTRS{type}=="0"
    ATTRS{iodone_cnt}=="0x130"
    ATTRS{evt_mode_parameter_change_reported}=="0"
    ATTRS{scsi_level}=="3"
    ATTRS{evt_soft_threshold_reached}=="0"
    ATTRS{queue_depth}=="1"
    ATTRS{evt_lun_change_reported}=="0"
    ATTRS{evt_capacity_change_reported}=="0"
    ATTRS{vendor}=="Generic "
    ATTRS{dh_state}=="detached"
    ATTRS{blacklist}==""

  looking at parent device '/devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0':
    KERNELS=="target3:0:0"
    SUBSYSTEMS=="scsi"
    DRIVERS==""

  looking at parent device '/devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3':
    KERNELS=="host3"
    SUBSYSTEMS=="scsi"
    DRIVERS==""

  looking at parent device '/devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0':
    KERNELS=="1-1:1.0"
    SUBSYSTEMS=="usb"
    DRIVERS=="usb-storage"
    ATTRS{bInterfaceClass}=="08"
    ATTRS{authorized}=="1"
    ATTRS{bInterfaceNumber}=="00"
    ATTRS{bInterfaceProtocol}=="50"
    ATTRS{bAlternateSetting}==" 0"
    ATTRS{supports_autosuspend}=="1"
    ATTRS{bNumEndpoints}=="02"
    ATTRS{bInterfaceSubClass}=="06"

  looking at parent device '/devices/pci0000:00/0000:00:0b.0/usb1/1-1':
    KERNELS=="1-1"
    SUBSYSTEMS=="usb"
    DRIVERS=="usb"
    ATTRS{manufacturer}=="Generic "
    ATTRS{bDeviceSubClass}=="00"
    ATTRS{version}==" 2.00"
    ATTRS{product}=="Flash Disk      "
    ATTRS{devnum}=="28"
    ATTRS{bcdDevice}=="0100"
    ATTRS{bNumInterfaces}==" 1"
    ATTRS{speed}=="480"
    ATTRS{bDeviceClass}=="00"
    ATTRS{rx_lanes}=="1"
    ATTRS{removable}=="unknown"
    ATTRS{bmAttributes}=="80"
    ATTRS{authorized}=="1"
    ATTRS{bConfigurationValue}=="1"
    ATTRS{tx_lanes}=="1"
    ATTRS{idVendor}=="1e3d"
    ATTRS{serial}=="CCCB1104231104350952973414"
    ATTRS{idProduct}=="2093"
    ATTRS{busnum}=="1"
    ATTRS{bNumConfigurations}=="1"
    ATTRS{bMaxPower}=="100mA"
    ATTRS{devpath}=="1"
    ATTRS{devspec}=="  (null)"
    ATTRS{maxchild}=="0"
    ATTRS{configuration}==""
    ATTRS{avoid_reset_quirk}=="0"
    ATTRS{quirks}=="0x0"
    ATTRS{bMaxPacketSize0}=="64"
    ATTRS{urbnum}=="874"
    ATTRS{ltm_capable}=="no"
    ATTRS{bDeviceProtocol}=="00"

  looking at parent device '/devices/pci0000:00/0000:00:0b.0/usb1':
    KERNELS=="usb1"
    SUBSYSTEMS=="usb"
    DRIVERS=="usb"
    ATTRS{speed}=="480"
    ATTRS{version}==" 2.00"
    ATTRS{idVendor}=="1d6b"
    ATTRS{rx_lanes}=="1"
    ATTRS{ltm_capable}=="no"
    ATTRS{authorized}=="1"
    ATTRS{bcdDevice}=="0419"
    ATTRS{bmAttributes}=="e0"
    ATTRS{bDeviceSubClass}=="00"
    ATTRS{bNumConfigurations}=="1"
    ATTRS{devspec}=="  (null)"
    ATTRS{removable}=="unknown"
    ATTRS{bMaxPacketSize0}=="64"
    ATTRS{serial}=="0000:00:0b.0"
    ATTRS{busnum}=="1"
    ATTRS{avoid_reset_quirk}=="0"
    ATTRS{maxchild}=="12"
    ATTRS{configuration}==""
    ATTRS{authorized_default}=="1"
    ATTRS{devnum}=="1"
    ATTRS{bConfigurationValue}=="1"
    ATTRS{bNumInterfaces}==" 1"
    ATTRS{devpath}=="0"
    ATTRS{interface_authorized_default}=="1"
    ATTRS{urbnum}=="863"
    ATTRS{bMaxPower}=="0mA"
    ATTRS{idProduct}=="0002"
    ATTRS{bDeviceProtocol}=="00"
    ATTRS{manufacturer}=="Linux 4.19.0-6-686 ehci_hcd"
    ATTRS{product}=="EHCI Host Controller"
    ATTRS{bDeviceClass}=="09"
    ATTRS{tx_lanes}=="1"
    ATTRS{quirks}=="0x0"

  looking at parent device '/devices/pci0000:00/0000:00:0b.0':
    KERNELS=="0000:00:0b.0"
    SUBSYSTEMS=="pci"
    DRIVERS=="ehci-pci"
    ATTRS{class}=="0x0c0320"
    ATTRS{local_cpus}=="1"
    ATTRS{devspec}==""
    ATTRS{broken_parity_status}=="0"
    ATTRS{d3cold_allowed}=="0"
    ATTRS{revision}=="0x00"
    ATTRS{driver_override}=="(null)"
    ATTRS{subsystem_device}=="0x0000"
    ATTRS{device}=="0x265c"
    ATTRS{irq}=="9"
    ATTRS{msi_bus}=="1"
    ATTRS{dma_mask_bits}=="32"
    ATTRS{subsystem_vendor}=="0x0000"
    ATTRS{ari_enabled}=="0"
    ATTRS{uframe_periodic_max}=="100"
    ATTRS{vendor}=="0x8086"
    ATTRS{companion}==""
    ATTRS{enable}=="1"
    ATTRS{local_cpulist}=="0"
    ATTRS{consistent_dma_mask_bits}=="32"

  looking at parent device '/devices/pci0000:00':
    KERNELS=="pci0000:00"
    SUBSYSTEMS==""
    DRIVERS==""

Quand on veut les informations d'un périphérique déjà connecté, on utilise cette commande. Elle permet de visualiser certains attributs. 
Ces attributs sont des attributs générés par sysfs. Sysfs est un système de fichiers virtuel qui va récupérer les attributs de chaque périphérique et créer leurs 
attributs correspondants. Dans les questions suivantes, on pourra visualiser où ces attributs sont créés.

c) 
df -h
Sys. de fichiers Taille Utilisé Dispo Uti% Monté sur
udev               487M       0  487M   0% /dev
tmpfs              101M    6,1M   95M   7% /run
/dev/sda1          7,0G    2,8G  3,8G  43% /
tmpfs              502M       0  502M   0% /dev/shm
tmpfs              5,0M       0  5,0M   0% /run/lock
tmpfs              502M       0  502M   0% /sys/fs/cgroup
/dev/sda3           89M    1,6M   81M   2% /home/clement/Bureau/key
tmpfs              101M     12K  101M   1% /run/user/1000
/dev/sdb1          2,0G     28M  2,0G   2% /media/clement/CAUMES

clement@Debian-ex:$ cd /sys/block/sdb
clement@Debian-ex:/sys/block/sdb$ ls
alignment_offset  discard_alignment  hidden     power      sdb1       trace
bdi               events             holders    queue      size       uevent
capability        events_async       inflight   range      slaves
dev               events_poll_msecs  integrity  removable  stat
device            ext_range          mq         ro         subsystem
clement@Debian-ex:/sys/block/sdb$ cat size
4104192
clement@Debian-ex:/sys/block/sdb$ cd sdb1
clement@Debian-ex:/sys/block/sdb/sdb1$ ls
alignment_offset  discard_alignment  inflight   power  size   stat       trace
dev               holders            partition  ro     start  subsystem  uevent
clement@Debian-ex:/sys/block/sdb/sdb1$ cd ..
clement@Debian-ex:/sys/block/sdb$ cat size
4104192
clement@Debian-ex:/sys/block/sdb$ ls
alignment_offset  discard_alignment  hidden     power      sdb1       trace
bdi               events             holders    queue      size       uevent
capability        events_async       inflight   range      slaves
dev               events_poll_msecs  integrity  removable  stat
device            ext_range          mq         ro         subsystem
clement@Debian-ex:/sys/block/sdb$ cd sdb1
clement@Debian-ex:/sys/block/sdb/sdb1$ ls
alignment_offset  discard_alignment  inflight   power  size   stat       trace
dev               holders            partition  ro     start  subsystem  uevent
clement@Debian-ex:/sys/block/sdb/sdb1$ cat partition 
1
clement@Debian-ex:/sys/block/sdb/sdb1$ 

On peut donc voir ici que sysfs exporte depuis l'espace noyau vers l'espace utilisateur les informations 
sur les périphériques du système. Ainsi, il va créer un dossier associé au système de fichiers contenant une 
suite de fichiers représentant les attributs du périphérique en question. Ainsi, c'est udev qui va 
interpréter les fichiers générés par sysfs pour donner ces attributs à l'utilisateur. Cela permet donc 
de créer des règles qui vont s'appliquer en fonction des attributs des périphériques. 


d) sudo /sbin/blkid -o udev -p /dev/sdb1
ID_FS_SEC_TYPE=msdos
ID_FS_LABEL_FATBOOT=DISK_IMG
ID_FS_LABEL_FATBOOT_ENC=DISK_IMG
ID_FS_LABEL=CAUMES
ID_FS_LABEL_ENC=CAUMES
ID_FS_UUID=009C-0E70
ID_FS_UUID_ENC=009C-0E70
ID_FS_VERSION=FAT16
ID_FS_TYPE=vfat
ID_FS_USAGE=filesystem
ID_PART_ENTRY_SCHEME=dos
ID_PART_ENTRY_UUID=009c0e70-01
ID_PART_ENTRY_TYPE=0x6
ID_PART_ENTRY_FLAGS=0x80
ID_PART_ENTRY_NUMBER=1
ID_PART_ENTRY_OFFSET=32
ID_PART_ENTRY_SIZE=4104160
ID_PART_ENTRY_DISK=8:16

Cette commande est intéressante car elle permet de récupérer le nom de la clé notamment. 


