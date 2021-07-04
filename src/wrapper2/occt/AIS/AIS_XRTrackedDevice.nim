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

import
  AIS_InteractiveObject, ../Aspect/Aspect_XRTrackedDeviceRole

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

  AIS_XRTrackedDevicebase_type* = AIS_InteractiveObject

proc get_type_name*(): cstring {.importcpp: "AIS_XRTrackedDevice::get_type_name(@)",
                              header: "AIS_XRTrackedDevice.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AIS_XRTrackedDevice::get_type_descriptor(@)",
    header: "AIS_XRTrackedDevice.hxx".}
proc DynamicType*(this: AIS_XRTrackedDevice): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_XRTrackedDevice.hxx".}
proc constructAIS_XRTrackedDevice*(theTris: handle[Graphic3d_ArrayOfTriangles];
                                  theTexture: handle[Image_Texture]): AIS_XRTrackedDevice {.
    constructor, importcpp: "AIS_XRTrackedDevice(@)",
    header: "AIS_XRTrackedDevice.hxx".}
proc constructAIS_XRTrackedDevice*(): AIS_XRTrackedDevice {.constructor,
    importcpp: "AIS_XRTrackedDevice(@)", header: "AIS_XRTrackedDevice.hxx".}
proc Role*(this: AIS_XRTrackedDevice): Aspect_XRTrackedDeviceRole {.noSideEffect,
    importcpp: "Role", header: "AIS_XRTrackedDevice.hxx".}
proc SetRole*(this: var AIS_XRTrackedDevice; theRole: Aspect_XRTrackedDeviceRole) {.
    importcpp: "SetRole", header: "AIS_XRTrackedDevice.hxx".}
proc LaserColor*(this: AIS_XRTrackedDevice): Quantity_Color {.noSideEffect,
    importcpp: "LaserColor", header: "AIS_XRTrackedDevice.hxx".}
proc SetLaserColor*(this: var AIS_XRTrackedDevice; theColor: Quantity_Color) {.
    importcpp: "SetLaserColor", header: "AIS_XRTrackedDevice.hxx".}
proc LaserLength*(this: AIS_XRTrackedDevice): Standard_ShortReal {.noSideEffect,
    importcpp: "LaserLength", header: "AIS_XRTrackedDevice.hxx".}
proc SetLaserLength*(this: var AIS_XRTrackedDevice; theLength: Standard_ShortReal) {.
    importcpp: "SetLaserLength", header: "AIS_XRTrackedDevice.hxx".}
proc UnitFactor*(this: AIS_XRTrackedDevice): Standard_ShortReal {.noSideEffect,
    importcpp: "UnitFactor", header: "AIS_XRTrackedDevice.hxx".}
proc SetUnitFactor*(this: var AIS_XRTrackedDevice; theFactor: Standard_ShortReal) {.
    importcpp: "SetUnitFactor", header: "AIS_XRTrackedDevice.hxx".}