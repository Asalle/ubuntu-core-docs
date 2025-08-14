# Boot the image

After [building and writing](/tutorials/build-your-first-image/build-the-image) a custom image for a Renesas RZ board, the device can now be booted and configured.

## Boot Ubuntu Core

Insert the microSD card into your powered-off Renesas RZ and power-on the device. For this setup phase, you will also need to have a keyboard and screen connected.

From this point, it can take around five minutes for the system to instantiate itself. You will see typical Linux output on the screen, periods where there's just a flashing cursor, and messages like _Installing the system, please wait for a reboot_.  When this process has finished, you will see the following:

`Press enter to configure.`

Press **Enter** and you will see a small menu with a single item:

`Configure the network and setup an administrator account on this all-snap Ubuntu Core system.`

Press **Enter** again and you will be taken to the network setup page:

![Network menu](https://assets.ubuntu.com/v1/8db3caab-image.png)

###  Configure a network connection

Network access is a requirement to setup Ubuntu Core.

Use the cursor up key, or tab, to move to the appropriate option to configure Ethernet.

### Ethernet

If an Ethernet cable is connected to your device, a network connection will attempt to be automatically negotiated and, if this is successful, you will see an IP address for the device after the DHCPv4 entry in the _Network connections_ page. In this case, you don't need to do anything further:

![Ethernet](https://assets.ubuntu.com/v1/74586cbe-image%20(5).png)

To configure an Ethernet connection manually, select the eth0 device and select _Edit IPv4_ from the small menu that appears. By default, the network device will be configured to use _Automatic (DHCP)_, which is why the connection attempts to automatically configure itself. Press **Enter** to reveal two further options, _Manual_ and _Disabled_:

![Manual ethernet](https://assets.ubuntu.com/v1/01acc192-image%20(6).png)

Selecting _Manual_ will allow you to configure your Ethernet connection manually by entering values for your subnet mask value (using CIDR `xx.xx.xx.xx/yy` notation), the static IP address of your device, the network gateway, and the name servers you wish to use:

![IP address](https://assets.ubuntu.com/v1/ad78cf8a-image%20(7).png)

Select **Save** to apply those changes and for the connection to be attempted. You can now proceed to the next step by pressing **Done**.

## Connect to the device

A final configuration step asks for the email address of your account in the store. This can be safely ignored for now. Whenever your device boots, it will automatically connect to the network and requires no further configuration.

Each time the device starts up, if a display connected it will show its various addresses and the account linked to the device.

Congratulations! You have successfully built your own image, installed it, and connected to Ubuntu Core on your Renesas RZ device.

See [First steps with Ubuntu Core](/how-to-guides/using-ubuntu-core) for an introduction to using Ubuntu Core.

