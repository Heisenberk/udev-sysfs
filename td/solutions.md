1) udevadm monitor -k -p
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

2) udevadm info -a -p /sys/block/sdb

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

------------------------------

udevadm info -a -p $(udevadm info -q path -n /dev/sdb1)

Udevadm info starts with the device specified by the devpath and then
walks up the chain of parent devices. It prints for every device
found, all possible attributes in the udev rules key format.
A rule to match, can be composed by the attributes of the device
and the attributes from one single parent device.

  looking at device '//devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0/3:0:0:0/block/sdb/sdb1':
    KERNEL=="sdb1"
    SUBSYSTEM=="block"
    DRIVER==""
    ATTR{size}=="4104160"
    ATTR{inflight}=="       0        0"
    ATTR{partition}=="1"
    ATTR{stat}=="     128      242     4453     2109        0        0        0        0        0     1672     1672        0        0        0        0"
    ATTR{start}=="32"
    ATTR{ro}=="0"
    ATTR{alignment_offset}=="0"
    ATTR{discard_alignment}=="0"

  looking at parent device '//devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0/3:0:0:0/block/sdb':
    KERNELS=="sdb"
    SUBSYSTEMS=="block"
    DRIVERS==""
    ATTRS{size}=="4104192"
    ATTRS{capability}=="51"
    ATTRS{hidden}=="0"
    ATTRS{range}=="16"
    ATTRS{ext_range}=="256"
    ATTRS{inflight}=="       0        0"
    ATTRS{stat}=="     134      242     4501     2175        0        0        0        0        0     1732     1732        0        0        0        0"
    ATTRS{events}=="media_change"
    ATTRS{removable}=="1"
    ATTRS{events_async}==""
    ATTRS{ro}=="0"
    ATTRS{events_poll_msecs}=="-1"
    ATTRS{alignment_offset}=="0"
    ATTRS{discard_alignment}=="0"

  looking at parent device '//devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0/3:0:0:0':
    KERNELS=="3:0:0:0"
    SUBSYSTEMS=="scsi"
    DRIVERS=="sd"
    ATTRS{model}=="Flash Disk      "
    ATTRS{timeout}=="30"
    ATTRS{evt_lun_change_reported}=="0"
    ATTRS{scsi_level}=="3"
    ATTRS{rev}=="5.00"
    ATTRS{ioerr_cnt}=="0x0"
    ATTRS{max_sectors}=="240"
    ATTRS{state}=="running"
    ATTRS{evt_media_change}=="0"
    ATTRS{eh_timeout}=="10"
    ATTRS{device_blocked}=="0"
    ATTRS{blacklist}==""
    ATTRS{evt_soft_threshold_reached}=="0"
    ATTRS{evt_mode_parameter_change_reported}=="0"
    ATTRS{type}=="0"
    ATTRS{vendor}=="Generic "
    ATTRS{iodone_cnt}=="0x122"
    ATTRS{inquiry}==""
    ATTRS{dh_state}=="detached"
    ATTRS{evt_capacity_change_reported}=="0"
    ATTRS{iocounterbits}=="32"
    ATTRS{queue_type}=="none"
    ATTRS{evt_inquiry_change_reported}=="0"
    ATTRS{device_busy}=="0"
    ATTRS{iorequest_cnt}=="0x122"
    ATTRS{queue_depth}=="1"

  looking at parent device '//devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3/target3:0:0':
    KERNELS=="target3:0:0"
    SUBSYSTEMS=="scsi"
    DRIVERS==""

  looking at parent device '//devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0/host3':
    KERNELS=="host3"
    SUBSYSTEMS=="scsi"
    DRIVERS==""

  looking at parent device '//devices/pci0000:00/0000:00:0b.0/usb1/1-1/1-1:1.0':
    KERNELS=="1-1:1.0"
    SUBSYSTEMS=="usb"
    DRIVERS=="usb-storage"
    ATTRS{authorized}=="1"
    ATTRS{supports_autosuspend}=="1"
    ATTRS{bNumEndpoints}=="02"
    ATTRS{bInterfaceProtocol}=="50"
    ATTRS{bInterfaceSubClass}=="06"
    ATTRS{bInterfaceNumber}=="00"
    ATTRS{bInterfaceClass}=="08"
    ATTRS{bAlternateSetting}==" 0"

  looking at parent device '//devices/pci0000:00/0000:00:0b.0/usb1/1-1':
    KERNELS=="1-1"
    SUBSYSTEMS=="usb"
    DRIVERS=="usb"
    ATTRS{ltm_capable}=="no"
    ATTRS{bmAttributes}=="80"
    ATTRS{idVendor}=="1e3d"
    ATTRS{avoid_reset_quirk}=="0"
    ATTRS{bNumInterfaces}==" 1"
    ATTRS{bMaxPower}=="100mA"
    ATTRS{rx_lanes}=="1"
    ATTRS{bConfigurationValue}=="1"
    ATTRS{product}=="Flash Disk      "
    ATTRS{idProduct}=="2093"
    ATTRS{bDeviceClass}=="00"
    ATTRS{devnum}=="60"
    ATTRS{speed}=="480"
    ATTRS{quirks}=="0x0"
    ATTRS{serial}=="CCCB1104231104350952973414"
    ATTRS{busnum}=="1"
    ATTRS{devspec}=="  (null)"
    ATTRS{manufacturer}=="Generic "
    ATTRS{bDeviceProtocol}=="00"
    ATTRS{bcdDevice}=="0100"
    ATTRS{bNumConfigurations}=="1"
    ATTRS{bMaxPacketSize0}=="64"
    ATTRS{devpath}=="1"
    ATTRS{authorized}=="1"
    ATTRS{urbnum}=="749"
    ATTRS{maxchild}=="0"
    ATTRS{bDeviceSubClass}=="00"
    ATTRS{version}==" 2.00"
    ATTRS{configuration}==""
    ATTRS{tx_lanes}=="1"
    ATTRS{removable}=="unknown"

  looking at parent device '//devices/pci0000:00/0000:00:0b.0/usb1':
    KERNELS=="usb1"
    SUBSYSTEMS=="usb"
    DRIVERS=="usb"
    ATTRS{bConfigurationValue}=="1"
    ATTRS{bNumInterfaces}==" 1"
    ATTRS{bDeviceSubClass}=="00"
    ATTRS{bMaxPacketSize0}=="64"
    ATTRS{version}==" 2.00"
    ATTRS{maxchild}=="12"
    ATTRS{bmAttributes}=="e0"
    ATTRS{bcdDevice}=="0419"
    ATTRS{manufacturer}=="Linux 4.19.0-6-686 ehci_hcd"
    ATTRS{configuration}==""
    ATTRS{bMaxPower}=="0mA"
    ATTRS{devspec}=="  (null)"
    ATTRS{removable}=="unknown"
    ATTRS{authorized_default}=="1"
    ATTRS{speed}=="480"
    ATTRS{urbnum}=="1801"
    ATTRS{avoid_reset_quirk}=="0"
    ATTRS{quirks}=="0x0"
    ATTRS{interface_authorized_default}=="1"
    ATTRS{authorized}=="1"
    ATTRS{bDeviceClass}=="09"
    ATTRS{devpath}=="0"
    ATTRS{idVendor}=="1d6b"
    ATTRS{product}=="EHCI Host Controller"
    ATTRS{tx_lanes}=="1"
    ATTRS{bNumConfigurations}=="1"
    ATTRS{idProduct}=="0002"
    ATTRS{rx_lanes}=="1"
    ATTRS{busnum}=="1"
    ATTRS{ltm_capable}=="no"
    ATTRS{bDeviceProtocol}=="00"
    ATTRS{devnum}=="1"
    ATTRS{serial}=="0000:00:0b.0"

  looking at parent device '//devices/pci0000:00/0000:00:0b.0':
    KERNELS=="0000:00:0b.0"
    SUBSYSTEMS=="pci"
    DRIVERS=="ehci-pci"
    ATTRS{device}=="0x265c"
    ATTRS{local_cpus}=="1"
    ATTRS{enable}=="1"
    ATTRS{devspec}==""
    ATTRS{subsystem_vendor}=="0x0000"
    ATTRS{consistent_dma_mask_bits}=="32"
    ATTRS{broken_parity_status}=="0"
    ATTRS{dma_mask_bits}=="32"
    ATTRS{revision}=="0x00"
    ATTRS{vendor}=="0x8086"
    ATTRS{msi_bus}=="1"
    ATTRS{irq}=="9"
    ATTRS{driver_override}=="(null)"
    ATTRS{class}=="0x0c0320"
    ATTRS{subsystem_device}=="0x0000"
    ATTRS{ari_enabled}=="0"
    ATTRS{d3cold_allowed}=="0"
    ATTRS{uframe_periodic_max}=="100"
    ATTRS{companion}==""
    ATTRS{local_cpulist}=="0"

  looking at parent device '//devices/pci0000:00':
    KERNELS=="pci0000:00"
    SUBSYSTEMS==""
    DRIVERS==""

