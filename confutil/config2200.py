#!/usr/bin/env python3

# This program was made using information presented in MCP doc
# It can manipulate all the chip features except:
# - Vendor ID
# - Product ID
# - Manufacturer String
# - Product String
#
# as no instruction are presented about how to do this

import sys
import argparse

import hid

vid = 0x04d8
pid = 0x00df

CLOCK_HZ = 12000000

# Config_Alt_Options
CAO_HWFLOW = 0
CAO_INVERT = 1
CAO_LEDX = 5
CAO_TXTGL = 6
CAO_RXTGL = 7

# Config_Alt_Pins
CAP_TXLED = 2
CAP_RXLED = 3
CAP_USBCFG = 6
CAP_SSPND = 7

parser = argparse.ArgumentParser (description = 'MCP2200 Configuration Utility', epilog = "Options take \"on\" or \"off\" values except where noted")
parser.add_argument ('-f', '--flow', type = str, help = 'Hardware Flow Control (CTS/RTS, turn OFF for Arduino programming)')
parser.add_argument ('-i', '--invert', type = str, help = 'Level Inversion')
parser.add_argument ('-s', '--suspend', type = str, help = 'Suspend Pin')
parser.add_argument ('-u', '--usbcfg', type = str, help = 'USB Configured Pin')
parser.add_argument ('-l', '--leds', type = str, help = 'Led Pins Behaviour (off, slow, fast, toggle)')
parser.add_argument ('-b', '--baudrate', type = str, help = 'Serial speed to be used')
args = parser.parse_args ()

def val2bool (v):
	return True if v.lower () == "on" else False

with hid.Device (vid, pid) as h:
	print (f'Device manufacturer: {h.manufacturer}')
	print (f'Product: {h.product}')
	print (f'Serial Number: {h.serial}')

	# Read conf
	h.write (bytes ([0x80] + [0x00] * 15))
	rep = h.read (16)
	if rep[0] != 0x80:
		print ("Bad reply: %s" % str (rep))
	else:
		ioBmap = rep[4]
		confAltPins = rep[5]
		ioDefVal = rep[6]
		confAltOpts = rep[7]
		div = (rep[8] << 8) | rep[9]
		baud = CLOCK_HZ / (div + 1)
		ioPortVal = rep[10]

		print ("Hardware Flow Control: %s" % ("Enabled" if confAltOpts & (1 << CAO_HWFLOW) else "Disabled"))
		print ("Level Inversion: %s" % ("Enabled" if confAltOpts & (1 << CAO_INVERT) else "Disabled"))
		print ("GP0 Function: %s" % ("USB Suspend Signal" if confAltPins & (1 << CAP_SSPND) else "GPIO"))
		print ("GP1 Function: %s" % ("USB Configured Signal" if confAltPins & (1 << CAP_USBCFG) else "GPIO"))
		print ("GP6 Function: %s" % ("RXLED" if confAltPins & (1 << CAP_RXLED) else "GPIO"))
		print ("GP7 Function: %s" % ("TXLED" if confAltPins & (1 << CAP_TXLED) else "GPIO"))
		print ("GPIO Bitmap (0 = out, 1 = in): {0:08b}".format (ioBmap))
		print ("Default GPIO Values (0 = low, 1 = high): {0:08b}".format (ioDefVal))
		print ("Current GPIO Values (0 = low, 1 = high): {0:08b}".format (ioPortVal))
		print ("RX Led: %s" % ("Toggle" if confAltOpts & (1 << CAO_RXTGL) else "Blink %s" % ("slow" if confAltOpts & (1 << CAO_LEDX) else "fast")))
		print ("TX Led: %s" % ("Toggle" if confAltOpts & (1 << CAO_TXTGL) else "Blink %s" % ("slow" if confAltOpts & (1 << CAO_LEDX) else "fast")))
		print ("Baud Rate: %u bps" % baud)


	newIoBmap = ioBmap
	newConfAltPins = confAltPins
	newIoDefVal = ioDefVal
	newConfAltOpts = confAltOpts
	newDiv = div
	
	if args.flow is not None:
		if val2bool (args.flow):
			newConfAltOpts |= (1 << CAO_HWFLOW)
		else:
			newConfAltOpts &= ~(1 << CAO_HWFLOW)
	
	if args.invert is not None:
		if val2bool (args.invert):
			newConfAltOpts |= (1 << CAO_INVERT)
		else:
			newConfAltOpts &= ~(1 << CAO_INVERT)
	
	if args.suspend is not None:
		if val2bool (args.suspend):
			newConfAltPins |= (1 << CAP_SSPND)
		else:
			newConfAltPins &= ~(1 << CAP_SSPND)
	
	if args.usbcfg is not None:
		if val2bool (args.usbcfg):
			newConfAltPins |= (1 << CAP_USBCFG)
		else:
			newConfAltPins &= ~(1 << CAP_USBCFG)

	if args.leds:
		leds = args.leds.lower ()
		if leds == "off":
			newConfAltPins &= ~((1 << CAP_RXLED) | (1 << CAP_TXLED))
		elif leds == "toggle":
			newConfAltPins |= ((1 << CAP_RXLED) | (1 << CAP_TXLED))
			newConfAltOpts |= ((1 << CAO_RXTGL) | (1 << CAO_TXTGL))
		elif leds == "fast":
			newConfAltPins |= ((1 << CAP_RXLED) | (1 << CAP_TXLED))
			newConfAltOpts &= ~((1 << CAO_RXTGL) | (1 << CAO_TXTGL) | (1 << CAO_LEDX))
		elif leds == "slow":
			newConfAltPins |= ((1 << CAP_RXLED) | (1 << CAP_TXLED))
			newConfAltOpts &= ~((1 << CAO_RXTGL) | (1 << CAO_TXTGL))
			newConfAltOpts |= (1 << CAO_LEDX)
		else:
			print ("Cannot parse --leds argument: %s" % args.leds, file = sys.stderr)
			sys.exit (10)

	if args.baudrate:
		newDiv = CLOCK_HZ // int (args.baudrate) - 1		

	cmd = [0x10, 0x00, 0x00, 0x00, newIoBmap, newConfAltPins, newIoDefVal, newConfAltOpts, (newDiv & 0xFF00) >> 8, (newDiv & 0xFF)]
	while len (cmd) < 16:
		cmd.append (0x00)
	print (cmd)
