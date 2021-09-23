##  Copyright (c) 2019-2020 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

import
  ../Aspect/Aspect_VKey, ../Graphic3d/Graphic3d_Vec

## ! Wrapper over Space Mouse data chunk within WM_INPUT event (known also as Raw Input in WinAPI).
## ! This class predefines specific list of supported devices, which does not depend on 3rdparty library provided by mouse vendor.
## ! Supported input chunks:
## ! - Rotation (3 directions);
## ! - Translation (3 directions);
## ! - Pressed buttons.
## !
## ! To use the class, register Raw Input device:
## ! @code
## !  Handle(WNT_Window) theWindow;
## !  RAWINPUTDEVICE aRawInDevList[1];
## !  RAWINPUTDEVICE& aRawSpace = aRawInDevList[0];
## !  aRawSpace.usUsagePage = HID_USAGE_PAGE_GENERIC;
## !  aRawSpace.usUsage     = HID_USAGE_GENERIC_MULTI_AXIS_CONTROLLER;
## !  aRawSpace.dwFlags     = 0; // RIDEV_DEVNOTIFY
## !  aRawSpace.hwndTarget  = (HWND )theWindow->NativeHandle();
## !  if (!::RegisterRawInputDevices (aRawInDevList, 1, sizeof(aRawInDevList[0]))) { Error; }
## ! @endcode
## !
## ! Then handle WM_INPUT events within window message loop.
## ! @code
## !  AIS_ViewController theViewCtrl;
## !  case WM_INPUT:
## !  {
## !    UINT aSize = 0;
## !    ::GetRawInputData ((HRAWINPUT )theLParam, RID_INPUT, NULL, &aSize, sizeof(RAWINPUTHEADER));
## !    NCollection_LocalArray<BYTE> aRawData (aSize); // receive Raw Input for any device and process known devices
## !    if (aSize == 0 || ::GetRawInputData ((HRAWINPUT )theLParam, RID_INPUT, aRawData, &aSize, sizeof(RAWINPUTHEADER)) != aSize)
## !    {
## !      break;
## !    }
## !    const RAWINPUT* aRawInput = (RAWINPUT* )(BYTE* )aRawData;
## !    if (aRawInput->header.dwType != RIM_TYPEHID)
## !    {
## !      break;
## !    }
## !
## !    RID_DEVICE_INFO aDevInfo; aDevInfo.cbSize = sizeof(RID_DEVICE_INFO);
## !    UINT aDevInfoSize = sizeof(RID_DEVICE_INFO);
## !    if (::GetRawInputDeviceInfoW (aRawInput->header.hDevice, RIDI_DEVICEINFO, &aDevInfo, &aDevInfoSize) != sizeof(RID_DEVICE_INFO)
## !     || (aDevInfo.hid.dwVendorId != WNT_HIDSpaceMouse::VENDOR_ID_LOGITECH
## !      && aDevInfo.hid.dwVendorId != WNT_HIDSpaceMouse::VENDOR_ID_3DCONNEXION))
## !    {
## !      break;
## !    }
## !
## !    Aspect_VKeySet& aKeys = theViewCtrl.ChangeKeys();
## !    const double aTimeStamp = theViewCtrl.EventTime();
## !    WNT_HIDSpaceMouse aSpaceData (aDevInfo.hid.dwProductId, aRawInput->data.hid.bRawData, aRawInput->data.hid.dwSizeHid);
## !    if (aSpaceData.IsTranslation())
## !    {
## !      // process translation input
## !      bool isIdle = true, isQuadric = true;
## !      const Graphic3d_Vec3d aTrans = aSpaceData.Translation (isIdle, isQuadric);
## !      aKeys.KeyFromAxis (Aspect_VKey_NavSlideLeft, Aspect_VKey_NavSlideRight, aTimeStamp, aTrans.x());
## !      aKeys.KeyFromAxis (Aspect_VKey_NavForward,   Aspect_VKey_NavBackward,   aTimeStamp, aTrans.y());
## !      aKeys.KeyFromAxis (Aspect_VKey_NavSlideUp,   Aspect_VKey_NavSlideDown,  aTimeStamp, aTrans.z());
## !    }
## !    if (aSpaceData.IsRotation()) {} // process rotation input
## !    if (aSpaceData.IsKeyState()) {} // process keys input
## !    break;
## !  }
## ! @endcode

type
  WNT_HIDSpaceMouse* {.importcpp: "WNT_HIDSpaceMouse",
                      header: "WNT_HIDSpaceMouse.hxx", bycopy.} = object ## ! Vendor HID identifier.
                                                                    ## ! Main constructor.
                                                                    ## ! Translate raw data chunk of 3 int16 values into normalized vec3.
                                                                    ## ! The values are considered within the range [-350; 350], with 0 as neutral state.
    ## !< RAW data chunk
    ## !< size of RAW data chunk
    ## !< product id
    ## !< RAW value range


const
  WNT_HIDSpaceMouseVENDOR_ID_LOGITECH* = 0x46D
  WNT_HIDSpaceMouseVENDOR_ID_3DCONNEXION* = 0x256F

proc IsKnownProduct*(theProductId: culong): bool {.
    importcpp: "WNT_HIDSpaceMouse::IsKnownProduct(@)",
    header: "WNT_HIDSpaceMouse.hxx".}
proc constructWNT_HIDSpaceMouse*(theProductId: culong; theData: ptr Standard_Byte;
                                theSize: Standard_Size): WNT_HIDSpaceMouse {.
    constructor, importcpp: "WNT_HIDSpaceMouse(@)", header: "WNT_HIDSpaceMouse.hxx".}
proc RawValueRange*(this: WNT_HIDSpaceMouse): int16_t {.noSideEffect,
    importcpp: "RawValueRange", header: "WNT_HIDSpaceMouse.hxx".}
proc SetRawValueRange*(this: var WNT_HIDSpaceMouse; theRange: int16_t) {.
    importcpp: "SetRawValueRange", header: "WNT_HIDSpaceMouse.hxx".}
proc IsTranslation*(this: WNT_HIDSpaceMouse): bool {.noSideEffect,
    importcpp: "IsTranslation", header: "WNT_HIDSpaceMouse.hxx".}
proc Translation*(this: WNT_HIDSpaceMouse; theIsIdle: var bool; theIsQuadric: bool): Graphic3d_Vec3d {.
    noSideEffect, importcpp: "Translation", header: "WNT_HIDSpaceMouse.hxx".}
proc IsRotation*(this: WNT_HIDSpaceMouse): bool {.noSideEffect,
    importcpp: "IsRotation", header: "WNT_HIDSpaceMouse.hxx".}
proc Rotation*(this: WNT_HIDSpaceMouse; theIsIdle: var bool; theIsQuadric: bool): Graphic3d_Vec3d {.
    noSideEffect, importcpp: "Rotation", header: "WNT_HIDSpaceMouse.hxx".}
proc IsKeyState*(this: WNT_HIDSpaceMouse): bool {.noSideEffect,
    importcpp: "IsKeyState", header: "WNT_HIDSpaceMouse.hxx".}
proc KeyState*(this: WNT_HIDSpaceMouse): uint32_t {.noSideEffect,
    importcpp: "KeyState", header: "WNT_HIDSpaceMouse.hxx".}
proc HidToSpaceKey*(this: WNT_HIDSpaceMouse; theKeyBit: cushort): Aspect_VKey {.
    noSideEffect, importcpp: "HidToSpaceKey", header: "WNT_HIDSpaceMouse.hxx".}