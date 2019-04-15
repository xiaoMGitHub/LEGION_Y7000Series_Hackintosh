
DefinitionBlock("", "SSDT", 2, "legion", "_RMCF", 0)
{
    External(_SB.PCI0.PEG0.PEGP._OFF, MethodObj)
    External(_SB.PCI0.LPCB, DeviceObj)
    External(_SB.PCI0.LPCB.EC, DeviceObj)
    External(_SB.PCI0.SATA, DeviceObj)
    External(_SB.PCI0.PEG0.PEGP._ON, MethodObj)
    External(_SB.PCI0.PEG0.PEGP._OFF, MethodObj)
    External(_SB.PCI0.PEGP.DGFX._ON, MethodObj)
    External(_SB.PCI0.PEGP.DGFX._OFF, MethodObj)
    External(_SB.PCI0.XHC.PMEE, FieldUnitObj)
    External(XPRW, MethodObj)
    External(RMCF.DWOU, IntObj)
    External(ZPTS, MethodObj)
    External(ZWAK, MethodObj)   
    External(RMCF.DPTS, IntObj)
    External(RMCF.SHUT, IntObj)
    External(RMCF.XPEE, IntObj)
    External(RMCF.SSTF, IntObj)
    External(_SI._SST, MethodObj)
    
    Device(RMCF)
    {
        Name(_ADR, 0)   // do not remove

        // DWOU: Disable wake on USB
        // 1: Disable wake on USB
        // 0: Do not disable wake on USB
        Name(DWOU, 1)
    }
    
    Device(RMD1)
    {
        Name(_HID, "RMD10000")
        Method(_INI)
        {
            // disable discrete graphics (Nvidia/Radeon) if it is present
            If (CondRefOf(\_SB.PCI0.PEG0.PEGP._OFF)) { \_SB.PCI0.PEG0.PEGP._OFF() }
        }
    }
    
     // For backlight control
    Device(_SB.PCI0.IGPU.PNLF)
    {
        Name(_ADR, Zero)
        Name(_HID, EisaId("APP0002"))
        Name(_CID, "backlight")
        // _UID is set depending on PWMMax to match profiles in AppleBacklightFixup.kext Info.plist
        // 14: Sandy/Ivy 0x710
        // 15: Haswell/Broadwell 0xad9
        // 16: Skylake/KabyLake 0x56c (and some Haswell, example 0xa2e0008)
        // 17: custom LMAX=0x7a1
        // 18: custom LMAX=0x1499
        // 19: CoffeeLake 0xffff
        // 99: Other (requires custom AppleBacklightInjector.kext/AppleBackightFixup.kext)
        Name(_UID, 19)
        Name(_STA, 0x0B)
    }
    
    Scope(_SB.PCI0.LPCB)
	{
          Device (PS2M)  // For ApplePS2SmartTouchPad.kext (by EMlyDinEsH)
        {
            Name (_HID, "MSFT0002")  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0F13"))
            Method(_STA, 0, NotSerialized)
            {
                Return (0x0F)
            }
            Name (_CRS, ResourceTemplate ()
            {
                IO (Decode16,
                   0x0060,             // Range Minimum
                   0x0060,             // Range Maximum
                   0x00,               // Alignment
                   0x01,               // Length
                   )
                IO (Decode16,
                   0x0064,             // Range Minimum
                   0x0064,             // Range Maximum
                   0x00,               // Alignment
                   0x01,               // Length
                   )
                IRQNoFlags ()
                   {12}
            })
            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                StartDependentFn (0x00, 0x00)
                {
                    IRQNoFlags ()
                        {12}
                }
                EndDependentFn ()
            })
        }
        
		OperationRegion(RMP0, PCI_Config, 2, 2)
		Field(RMP0, AnyAcc, NoLock, Preserve)
		{
			LDID,16
		}

		Name(LPDL, Package()
		{
             // and 300-series...
			0xa30d, 0,
			Package()
			{
				"device-id", Buffer() { 0xc3, 0x9c, 0, 0 },
				"compatible", Buffer() { "pci8086,9cc3" },
			},

		})

		Method(_DSM, 4)
		{
			If (!Arg2) { Return (Buffer() { 0x03 } ) }

			// search for matching device-id in device-id list, LPDL
			Local0 = Match(LPDL, MEQ, ^LDID, MTR, 0, 0)
			If (Ones != Local0)
			{
				// start search for zero-terminator (prefix to injection package)
				Local0 = Match(LPDL, MEQ, 0, MTR, 0, Local0+1)
				Return (DerefOf(LPDL[Local0+1]))
			}

			// if no match, assume it is supported natively... no inject
			Return (Package() { })
		}
	}

    Scope(_SB.PCI0.LPCB.EC) // brightness buttons
    {
        External(^PS2K, DeviceObj)
        Method (_Q11) // Brightness down
        {
           Notify (PS2K, 0x0405) // For VoodooPS2Controller.kext (by RehabMan)
           Notify (PS2K, 0x20) // For ApplePS2SmartTouchPad.kext (by EMlyDinEsH)
        }
        
        Method (_Q12) // Btightness up
        {
            Notify (PS2K, 0x0406) // For VoodooPS2Controller.kext (by RehabMan)
            Notify (PS2K, 0x10) // For ApplePS2SmartTouchPad.kext (by EMlyDinEsH)
        }
    }

    Scope(_SB.PCI0.LPCB.PS2K)
    {
        Name(RMCF, Package()
        {
            "Keyboard", Package()
            {
                "Custom PS2 Map", Package()
                {
                    "e037=64",
                    "1d=e038", 
                    "38=e01d", 
                },
            },
        })
    }
    
    Scope(_SB.PCI0.SATA)
    {
        OperationRegion(RMP1, PCI_Config, 2, 2)
        Field(RMP1, AnyAcc, NoLock, Preserve)
        {
            SDID,16
        }
        Name(SDDL, Package()
        {
            // 8086:282a is RAID mode, remap to supported 8086:2829
            // 8086:2822 is RAID mode on others
            0x282a, 0x2822, 0,
            Package()
            {
                "device-id", Buffer() { 0x29, 0x28, 0, 0 },
                "compatible", Buffer() { "pci8086,2829" },
            },
            // Skylake 8086:a103 not supported currently, remap to supported 8086:a102
            // same with Skylake 8086:9d03
            0xa103, 0x9d03,
            // same with 200-series 8086:a282
            0xa282, 0,
            Package()
            {
                "device-id", Buffer() { 0x02, 0xa1, 0, 0 },
                "compatible", Buffer() { "pci8086,a102" },
            }
        })
        Method(_DSM, 4)
        {
            If (!Arg2) { Return (Buffer() { 0x03 } ) }
            // search for matching device-id in device-id list, SDDL
            Local0 = Match(SDDL, MEQ, ^SDID, MTR, 0, 0)
            If (Ones != Local0)
            {
                // start search for zero-terminator (prefix to injection package)
                Local0 = Match(SDDL, MEQ, 0, MTR, 0, Local0+1)
                Return (DerefOf(SDDL[Local0+1]))
            }
            // if no match, assume it is supported natively... no inject
            Return (Package() { })
        }
    }

    Device(_SB.USBX)
    {
        Name(_ADR, 0)
        Method (_DSM, 4)
        {
            If (!Arg2) { Return (Buffer() { 0x03 } ) }
            Return (Package()
            {
                "kUSBSleepPortCurrentLimit", 3000,
                "kUSBSleepPowerSupply", 2600,
                "kUSBWakePortCurrentLimit", 3000,
                "kUSBWakePowerSupply", 3200,
            })
        }
    }
    
    // inject properties for XHCI
    Method(_SB.PCI0.XHC._DSM, 4)
    {
        If (!Arg2) { Return (Buffer() { 0x03 } ) }
        Local0 = Package()
        {
            "RM,disable_FakePCIID", 0,
            "subsystem-id", Buffer() { 0x70, 0x72, 0x00, 0x00 },
            "subsystem-vendor-id", Buffer() { 0x86, 0x80, 0x00, 0x00 },
            "AAPL,current-available", Buffer() { 0x34, 0x08, 0, 0 },
            "AAPL,current-extra", Buffer() { 0x98, 0x08, 0, 0, },
            "AAPL,current-extra-in-sleep", Buffer() { 0x40, 0x06, 0, 0, },
            "AAPL,max-port-current-in-sleep", Buffer() { 0x34, 0x08, 0, 0 },
        }
        // force USB2 on XHC if EHCI is disabled
        If (CondRefOf(\_SB.PCI0.RMD2) || CondRefOf(\_SB.PCI0.RMD3) || CondRefOf(\_SB.PCI0.RMD4)) { Local0[1] = 1 }
        Return(Local0)
    }
    
    Method(_SB.PR00._DSM, 4)
    {
        If (!Arg2) { Return (Buffer() { 0x03 } ) }
        Return (Package()
        {
            "plugin-type", 1
        })
    }

    // In DSDT, native GPRW is renamed to XPRW with Clover binpatch.
    // As a result, calls to GPRW land here.
    // The purpose of this implementation is to avoid "instant wake"
    // by returning 0 in the second position (sleep state supported)
    // of the return package.
    Method(GPRW, 2)
    {
        For (,,)
        {
            // when RMCF.DWOU is provided and is zero, patch disabled
            If (CondRefOf(\RMCF.DWOU)) { If (!\RMCF.DWOU) { Break }}
            // either RMCF.DWOU not provided, or is non-zero, patch is enabled
            If (0x6d == Arg0) { Return (Package() { 0x6d, 0, }) }
            If (0x0d == Arg0) { Return (Package() { 0x0d, 0, }) }
            Break
        }
        Return (XPRW(Arg0, Arg1))
    }

    // In DSDT, native _PTS and _WAK are renamed ZPTS/ZWAK
    // As a result, calls to these methods land here.
    Method(_PTS, 1)
    {
        if (5 == Arg0)
        {
            // Shutdown fix, if enabled
            If (CondRefOf(\RMCF.SHUT))
            {
                If (\RMCF.SHUT & 1) { Return }
                If (\RMCF.SHUT & 2)
                {
                    OperationRegion(PMRS, SystemIO, 0x1830, 1)
                    Field(PMRS, ByteAcc, NoLock, Preserve)
                    {
                        ,4,
                        SLPE, 1,
                    }
                    // alternate shutdown fix using SLPE (mostly provided as an example)
                    // likely very specific to certain motherboards
                    Store(0, SLPE)
                    Sleep(16)
                }
            }
        }

        If (CondRefOf(\RMCF.DPTS))
        {
            If (\RMCF.DPTS)
            {
                // enable discrete graphics
                If (CondRefOf(\_SB.PCI0.PEG0.PEGP._ON)) { \_SB.PCI0.PEG0.PEGP._ON() }
                If (CondRefOf(\_SB.PCI0.PEGP.DGFX._ON)) { \_SB.PCI0.PEGP.DGFX._ON() }
            }
        }

        // call into original _PTS method
        ZPTS(Arg0)

        If (5 == Arg0)
        {
            // XHC.PMEE fix, if enabled
            If (CondRefOf(\RMCF.XPEE)) { If (\RMCF.XPEE && CondRefOf(\_SB.PCI0.XHC.PMEE)) { \_SB.PCI0.XHC.PMEE = 0 } }
        }
    }
    Method(_WAK, 1)
    {
        // Take care of bug regarding Arg0 in certain versions of OS X...
        // (starting at 10.8.5, confirmed fixed 10.10.2)
        If (Arg0 < 1 || Arg0 > 5) { Arg0 = 3 }

        // call into original _WAK method
        Local0 = ZWAK(Arg0)

        If (CondRefOf(\RMCF.DPTS))
        {
            If (\RMCF.DPTS)
            {
                // disable discrete graphics
                If (CondRefOf(\_SB.PCI0.PEG0.PEGP._OFF)) { \_SB.PCI0.PEG0.PEGP._OFF() }
                If (CondRefOf(\_SB.PCI0.PEGP.DGFX._OFF)) { \_SB.PCI0.PEGP.DGFX._OFF() }
            }
        }

        If (CondRefOf(\RMCF.SSTF))
        {
            If (\RMCF.SSTF)
            {
                // call _SI._SST to indicate system "working"
                // for more info, read ACPI specification
                If (3 == Arg0 && CondRefOf(\_SI._SST)) { \_SI._SST(1) }
            }
        }
        // return value from original _WAK
        Return (Local0)
    }
    
    // All _OSI calls in DSDT are routed to XOSI...
    // As written, this XOSI simulates "Windows 2015" (which is Windows 10)
    // Note: According to ACPI spec, _OSI("Windows") must also return true
    //  Also, it should return true for all previous versions of Windows.
    Method(XOSI, 1)
    {
        // simulation targets
        // source: (google 'Microsoft Windows _OSI')
        //  https://docs.microsoft.com/en-us/windows-hardware/drivers/acpi/winacpi-osi
        Local0 = Package()
        {
            "Windows",              // generic Windows query
            "Windows 2001",         // Windows XP
            "Windows 2001 SP2",     // Windows XP SP2
            //"Windows 2001.1",     // Windows Server 2003
            //"Windows 2001.1 SP1", // Windows Server 2003 SP1
            "Windows 2006",         // Windows Vista
            "Windows 2006 SP1",     // Windows Vista SP1
            "Windows 2006.1",       // Windows Server 2008
            "Windows 2009",         // Windows 7/Windows Server 2008 R2
            "Windows 2012",         // Windows 8/Windows Server 2012
            "Windows 2013",         // Windows 8.1/Windows Server 2012 R2
            "Windows 2015",         // Windows 10/Windows Server TP
            //"Windows 2016",       // Windows 10, version 1607
            //"Windows 2017",       // Windows 10, version 1703
            //"Windows 2017.2",     // Windows 10, version 1709
            //"Windows 2018",       // Windows 10, version 1803
        }
        Return (Ones != Match(Local0, MEQ, Arg0, MTR, 0, 0))
    }
}

