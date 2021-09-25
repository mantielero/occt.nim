##  Copyright (c) 2020 OPEN CASCADE SAS
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

discard "forward decl of Graphic3d_ArrayOfTriangles"
discard "forward decl of Image_Texture"
type
  AIS_XRTrackedDevice* {.importcpp: "AIS_XRTrackedDevice",
                        header: "AIS_XRTrackedDevice.hxx", bycopy.} = object of AIS_InteractiveObject ##
                                                                                               ## !
                                                                                               ## Main
                                                                                               ## constructor.
                                                                                               ##
                                                                                               ## !
                                                                                               ## Returns
                                                                                               ## true
                                                                                               ## for
                                                                                               ## 0
                                                                                               ## mode.
                                                                                               ##
                                                                                               ## !
                                                                                               ## Texture
                                                                                               ## holder.

  AIS_XRTrackedDevicebaseType* = AIS_InteractiveObject

proc getTypeName*(): cstring {.importcpp: "AIS_XRTrackedDevice::get_type_name(@)",
                            header: "AIS_XRTrackedDevice.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AIS_XRTrackedDevice::get_type_descriptor(@)",
    header: "AIS_XRTrackedDevice.hxx".}
proc dynamicType*(this: AIS_XRTrackedDevice): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_XRTrackedDevice.hxx".}
proc constructAIS_XRTrackedDevice*(theTris: Handle[Graphic3dArrayOfTriangles];
                                  theTexture: Handle[ImageTexture]): AIS_XRTrackedDevice {.
    constructor, importcpp: "AIS_XRTrackedDevice(@)",
    header: "AIS_XRTrackedDevice.hxx".}
proc constructAIS_XRTrackedDevice*(): AIS_XRTrackedDevice {.constructor,
    importcpp: "AIS_XRTrackedDevice(@)", header: "AIS_XRTrackedDevice.hxx".}
proc role*(this: AIS_XRTrackedDevice): AspectXRTrackedDeviceRole {.noSideEffect,
    importcpp: "Role", header: "AIS_XRTrackedDevice.hxx".}
proc setRole*(this: var AIS_XRTrackedDevice; theRole: AspectXRTrackedDeviceRole) {.
    importcpp: "SetRole", header: "AIS_XRTrackedDevice.hxx".}
proc laserColor*(this: AIS_XRTrackedDevice): QuantityColor {.noSideEffect,
    importcpp: "LaserColor", header: "AIS_XRTrackedDevice.hxx".}
proc setLaserColor*(this: var AIS_XRTrackedDevice; theColor: QuantityColor) {.
    importcpp: "SetLaserColor", header: "AIS_XRTrackedDevice.hxx".}
proc laserLength*(this: AIS_XRTrackedDevice): StandardShortReal {.noSideEffect,
    importcpp: "LaserLength", header: "AIS_XRTrackedDevice.hxx".}
proc setLaserLength*(this: var AIS_XRTrackedDevice; theLength: StandardShortReal) {.
    importcpp: "SetLaserLength", header: "AIS_XRTrackedDevice.hxx".}
proc unitFactor*(this: AIS_XRTrackedDevice): StandardShortReal {.noSideEffect,
    importcpp: "UnitFactor", header: "AIS_XRTrackedDevice.hxx".}
proc setUnitFactor*(this: var AIS_XRTrackedDevice; theFactor: StandardShortReal) {.
    importcpp: "SetUnitFactor", header: "AIS_XRTrackedDevice.hxx".}
