# OpenUsbSerialAdapter
OpenUsbSerialAdapter is an Open Hardware USB to Serial converter.

![Board](https://raw.githubusercontent.com/SukkoPera/OpenUsbSerialAdapter/master/img/render-top.png)

### Summary
An infinite number of different models of USB to Serial converters can be found on every online shop, many of which even cost less than 1€ shipped from China, so why make one more? There are a few reasons:
- Many of them are missing the DTR (and RTS) signals (or at least do not break it out so that it is easily usable). At least one of these signals is necessary for programming Arduino boards through the serial port and, since this makes up for 90% of my use of USB to serial converters, I find this pretty annoying.
- Most of these cheap converters claim to be both 5V and 3.3V serial level compatible, but what most of them actually do is just use 3.3V signalling, which *usually* also works fine with boards that work at 5V, but still it is a bit of a hack.
- None of these converters has a decent 3.3V regulator onboard, usually being able to provide only a few tens of milliamperes on the 3.3V power pin (and not even all of them have one). This is too little for some uses, like powering an ESP8266 module for instance, and is the source of maaany of the problems users report with that chip.
- Finding Windows and OSX drivers for some of these modules is a nightmare.
- Not to mention the infamous FTDI-gate...

So, when I came across a USB to Serial chip ([Microchip MCP2200](https://www.microchip.com/wwwproducts/en/en546923)) that claimed not to need any particular drivers, I decided to have a go at designing the final converter. I hope I considered every possible feature in the design, but in any case I am releasing this as Open Hardware, so everybody can customize it so that it fully suits their needs.

### Features
- Real support for both 3.3V and 5V serial levels
- Protection resistors for RX/TX inversion
- RX/TX pull-up resistors (Optional)
- Can provide up to 1A current on the 3.3V power output pin (This will actually be less as it will be limited by USB)
- Hardware Flow Control pins (RTS/CTS, RTS can be used for the initial reset for Arduino programming)
- Uses USB HID capabilities, which means it needs no drivers on Windows/OSX (This has to confirmed, as I only run Linux)
- Configurable product/manufacturer strings and PID/VID
- Cheap (less than 5€) and easy to DIY-build (about 20 common components)

### Assembly and Configuration
Solder all components to the board in the order you prefer. You have some options:
- R3 and R4 are the RX/TX inversion protection resistors. I use 100 ohm for these, which works fine in my tests, but this value was improvised rather than calculated. You might want to increase them up to 1k for additional safety. In rare cases, you might want to replace them with 0 ohm/solder blobs, but this might be harmful for the main chip or for the device it is connected to. Do this at your risk.
- R5 and R6 are the RX/TX pull-up resistors. Usually these are not necessary, so you might want to skip them. Note that R7 is mandatory instead.

The adapter is somehow configurable. On Windows you can use [the official Microchip Configuration Utility](http://ww1.microchip.com/downloads/en/DeviceDoc/MCP2200%20Configuration%20Utility%20v1.3.1.zip). On Linux (and OSX?) you can use [a quick replacement I put together](https://github.com/SukkoPera/OpenUsbSerialAdapter/tree/master/confutil), or [this other one](https://github.com/andrasbiro/mcp2200hid-linux). The latter is also capable of changing the USB product/manufacturer strings and PID/VID.

Note that the factory settings will NOT make the RX/TX leds blink on traffic, you will have to enable that through the configuration utility. Another apparent oddity is that you need to turn OFF the Hardware Flow Control to use the adapter for Arduino programming.

### Usage
Just plug the converter in your computer. On Linux you should get a /dev/ttyACMx device within seconds. On other Operating Systems... You are on your own :). In theory, it should not need any dedicated drivers, but I saw there are some [on the MCP2200 product page](https://www.microchip.com/wwwproducts/en/en546923), so you can get them from there, in case.

### Releases
If you want to get this board produced, you are recommended to get [the latest release](https://github.com/SukkoPera/OpenUsbSerialAdapter/releases) rather than the current git version, as the latter might be under development and is not guaranteed to be working.

Every release is accompanied by its Bill Of Materials (BOM) file and any relevant notes about it, which you are recommended to read carefully.

### License
The OpenUsbSerialAdapter documentation, including the design itself, is copyright &copy; SukkoPera 2020.

OpenUsbSerialAdapter is Open Hardware licensed under the [CERN OHL v. 1.2](http://ohwr.org/cernohl).

You may redistribute and modify this documentation under the terms of the CERN OHL v.1.2. This documentation is distributed *as is* and WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES whatsoever with respect to its functionality, operability or use, including, without limitation, any implied warranties OF MERCHANTABILITY, SATISFACTORY QUALITY, FITNESS FOR A PARTICULAR PURPOSE or infringement. We expressly disclaim any liability whatsoever for any direct, indirect, consequential, incidental or special damages, including, without limitation, lost revenues, lost profits, losses resulting from business interruption or loss of data, regardless of the form of action or legal theory under which the liability may be asserted, even if advised of the possibility or likelihood of such damages.

A copy of the full license is included in file [LICENSE.pdf](LICENSE.pdf), please refer to it for applicable conditions. In order to properly deal with its terms, please see file [LICENSE_HOWTO.pdf](LICENSE_HOWTO.pdf).

The contact points for information about manufactured Products (see section 4.2) are listed in file [PRODUCT.md](PRODUCT.md).

Any modifications made by Licensees (see section 3.4.b) shall be recorded in file [CHANGES.md](CHANGES.md).

The Documentation Location of the original project is https://github.com/SukkoPera/OpenUsbSerialAdapter/.

### Support the Project
Since the project is open you are free to get the PCBs made by your preferred manufacturer, however in case you want to support the development, you can order them from PCBWay through this link:

[![PCB from PCBWay](https://www.pcbway.com/project/img/images/frompcbway.png)](https://www.pcbway.com/project/shareproject/OpenUsbSerialAdapter_V1.html)

You get my gratitude and cheap, professionally-made and good quality PCBs, I get some credit that will help with this and [other projects](https://www.pcbway.com/project/member/shareproject/?bmbid=41100). You won't even have to worry about the various PCB options, it's all pre-configured for you!

Also, if you still have to register to that site, [you can use this link](https://www.pcbway.com/setinvite.aspx?inviteid=41100) to get some bonus initial credit (and yield me some more).

Again, if you want to use another manufacturer, feel free to, don't feel obligated :). But then you can buy me a coffee if you want:

<a href='https://ko-fi.com/L3L0U18L' target='_blank'><img height='36' style='border:0px;height:36px;' src='https://az743702.vo.msecnd.net/cdn/kofi2.png?v=2' border='0' alt='Buy Me a Coffee at ko-fi.com' /></a>

### Get Help
If you need help or have questions, you can join [the official Telegram group](https://t.me/joinchat/HUHdWBC9J9JnYIrvTYfZmg).
