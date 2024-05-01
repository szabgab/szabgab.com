=head1 Ubuntu 7.04 (beta) Feisty Fawn on Compaq (HP) nc6400
=timestamp 1210741045
=tags Ubuntu, Linux installation


Appearantly I wrote this a long time ago as Ubuntu 8.04 has just came out
and I am about to upgrade my notebook. Anyway as I on a train now and have
nothing better to do than cleaning up old, half written posts I add this too.
Better than throwing it away I think.

After my Dell notebook broke down I bought an HP nc6400 to work on and use
during <a href="http://pti.co.il/">training</a> It says HP on the top
of the notebook but next to the screen is says Compaq nv6400. When will they
make up their mind if they are called HP or Compaq?

Anyway the notebook looks very nice. I installed Ubuntu 6.10 on it from CD and
as 7.04 beta just came out I decided to try that and upgraded vi the network
upgrade. Everything went very well and most of the hardware I tried works well.

The main problem I encountered is that I am using a Samsung SyncMaster 731b
external monitor (connected via the standard HP docking station I bought with
the notebook) but I could not yet figure out how to configure the screen so
can see the full display on either the internal screen or on the external.

The same goes with overhead projectors. I tried one during a
<a href="">Perl Mongers meeting</a> and it was a disaster. The left 20% of the
picture showed up on the right side of the screen.

This is the output of <i>lspci</i>

    00:00.0 Host bridge: Intel Corporation Mobile 945GM/PM/GMS/940GML and 945GT 
       Express Memory Controller Hub (rev 03)
    00:02.0 VGA compatible controller: Intel Corporation Mobile 945GM/GMS/940GML
       Express Integrated Graphics Controller (rev 03)
    00:02.1 Display controller: Intel Corporation Mobile 945GM/GMS/940GML
       Express Integrated Graphics Controller (rev 03)
    00:1b.0 Audio device: Intel Corporation 82801G (ICH7 Family)
       High Definition Audio Controller (rev 01)
    00:1c.0 PCI bridge: Intel Corporation 82801G (ICH7 Family)
       PCI Express Port 1 (rev 01)
    00:1c.1 PCI bridge: Intel Corporation 82801G (ICH7 Family)
       PCI Express Port 2 (rev 01)
    00:1c.3 PCI bridge: Intel Corporation 82801G (ICH7 Family)
       PCI Express Port 4 (rev 01)
    00:1d.0 USB Controller: Intel Corporation 82801G (ICH7 Family)
       USB UHCI #1 (rev 01)
    00:1d.1 USB Controller: Intel Corporation 82801G (ICH7 Family)
       USB UHCI #2 (rev 01)
    00:1d.2 USB Controller: Intel Corporation 82801G (ICH7 Family)
       USB UHCI #3 (rev 01)
    00:1d.3 USB Controller: Intel Corporation 82801G (ICH7 Family)
       USB UHCI #4 (rev 01)
    00:1d.7 USB Controller: Intel Corporation 82801G (ICH7 Family)
       USB2 EHCI Controller (rev 01)
    00:1e.0 PCI bridge: Intel Corporation 82801 Mobile PCI Bridge (rev e1)
    00:1f.0 ISA bridge: Intel Corporation 82801GBM (ICH7-M)
       LPC Interface Bridge (rev 01)
    00:1f.2 IDE interface: Intel Corporation 82801GBM/GHM (ICH7 Family)
       Serial ATA Storage Controller IDE (rev 01)
    02:06.0 CardBus bridge: Texas Instruments PCIxx12 Cardbus Controller
    02:06.2 Mass storage controller: Texas Instruments 5-in-1
       Multimedia Card Reader (SD/MMC/MS/MS PRO/xD)
    02:06.3 Generic system peripheral [0805]:
       Texas Instruments PCIxx12 SDA Standard Compliant SD Host Controller
    02:06.4 Communication controller:
       Texas Instruments PCIxx12 GemCore based SmartCard controller
    08:00.0 Ethernet controller: Broadcom Corporation NetXtreme BCM5753M
       Gigabit Ethernet PCI Express (rev 21)
    10:00.0 Network controller: Intel Corporation PRO/Wireless 3945ABG
       Network Connection (rev 02)
