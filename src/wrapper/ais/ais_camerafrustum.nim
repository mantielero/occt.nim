import ../standard/standard_types
import ais_types
import ../graphic3d/graphic3d_types
import ../quantity/quantity_types





##  Created on: 2018-12-12
##  Created by: Olga SURYANINOVA
##  Copyright (c) 2018 OPEN CASCADE SAS
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




proc newAIS_CameraFrustum*(): AIS_CameraFrustum {.cdecl, constructor,
    importcpp: "AIS_CameraFrustum(@)", header: "AIS_CameraFrustum.hxx".}
proc setCameraFrustum*(this: var AIS_CameraFrustum;
                      theCamera: Handle[Graphic3dCamera]) {.cdecl,
    importcpp: "SetCameraFrustum", header: "AIS_CameraFrustum.hxx".}
proc setColor*(this: var AIS_CameraFrustum; theColor: QuantityColor) {.cdecl,
    importcpp: "SetColor", header: "AIS_CameraFrustum.hxx".}
proc unsetColor*(this: var AIS_CameraFrustum) {.cdecl, importcpp: "UnsetColor",
    header: "AIS_CameraFrustum.hxx".}
proc unsetTransparency*(this: var AIS_CameraFrustum) {.cdecl,
    importcpp: "UnsetTransparency", header: "AIS_CameraFrustum.hxx".}
proc acceptDisplayMode*(this: AIS_CameraFrustum; theMode: cint): bool {.noSideEffect,
    cdecl, importcpp: "AcceptDisplayMode", header: "AIS_CameraFrustum.hxx".}


