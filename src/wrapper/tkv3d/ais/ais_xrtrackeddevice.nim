import ../tkv3d/graphic3d/graphic3d_types
import ../../tkservice/aspect/aspect_types
import ../../tkernel/standard/standard_types
import ais_types
import ../../tkernel/quantity/quantity_types



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



proc newAIS_XRTrackedDevice*(theTris: Handle[Graphic3dArrayOfTriangles];
                            theTexture: Handle[ImageTexture]): AIS_XRTrackedDevice {.
    cdecl, constructor, importcpp: "AIS_XRTrackedDevice(@)", header: "AIS_XRTrackedDevice.hxx".}
proc newAIS_XRTrackedDevice*(): AIS_XRTrackedDevice {.cdecl, constructor,
    importcpp: "AIS_XRTrackedDevice(@)", header: "AIS_XRTrackedDevice.hxx".}
proc role*(this: AIS_XRTrackedDevice): AspectXRTrackedDeviceRole {.noSideEffect,
    cdecl, importcpp: "Role", header: "AIS_XRTrackedDevice.hxx".}
proc setRole*(this: var AIS_XRTrackedDevice; theRole: AspectXRTrackedDeviceRole) {.
    cdecl, importcpp: "SetRole", header: "AIS_XRTrackedDevice.hxx".}
proc laserColor*(this: AIS_XRTrackedDevice): QuantityColor {.noSideEffect, cdecl,
    importcpp: "LaserColor", header: "AIS_XRTrackedDevice.hxx".}
proc setLaserColor*(this: var AIS_XRTrackedDevice; theColor: QuantityColor) {.cdecl,
    importcpp: "SetLaserColor", header: "AIS_XRTrackedDevice.hxx".}
proc laserLength*(this: AIS_XRTrackedDevice): StandardShortReal {.noSideEffect,
    cdecl, importcpp: "LaserLength", header: "AIS_XRTrackedDevice.hxx".}
proc setLaserLength*(this: var AIS_XRTrackedDevice; theLength: StandardShortReal) {.
    cdecl, importcpp: "SetLaserLength", header: "AIS_XRTrackedDevice.hxx".}
proc unitFactor*(this: AIS_XRTrackedDevice): StandardShortReal {.noSideEffect, cdecl,
    importcpp: "UnitFactor", header: "AIS_XRTrackedDevice.hxx".}
proc setUnitFactor*(this: var AIS_XRTrackedDevice; theFactor: StandardShortReal) {.
    cdecl, importcpp: "SetUnitFactor", header: "AIS_XRTrackedDevice.hxx".}

