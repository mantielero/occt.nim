##  Created on: 1995-08-02
##  Created by: Arnaud BOUZY/Odile Olivier
##  Copyright (c) 1995-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

discard "forward decl of Geom_Plane"
discard "forward decl of Geom_Axis2Placement"
discard "forward decl of gp_Pnt"
type
  AIS_Plane* {.importcpp: "AIS_Plane", header: "AIS_Plane.hxx", bycopy.} = object of AIS_InteractiveObject ##
                                                                                                 ## !
                                                                                                 ## initializes
                                                                                                 ## the
                                                                                                 ## plane
                                                                                                 ## aComponent.
                                                                                                 ## If
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## the
                                                                                                 ## mode
                                                                                                 ## aCurrentMode
                                                                                                 ## equals
                                                                                                 ## true,
                                                                                                 ## the
                                                                                                 ## drawing
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## tool,
                                                                                                 ## "Drawer"
                                                                                                 ## is
                                                                                                 ## not
                                                                                                 ## initialized.


proc newAIS_Plane*(aComponent: Handle[GeomPlane]; aCurrentMode: bool = false): AIS_Plane {.
    cdecl, constructor, importcpp: "AIS_Plane(@)", header: "AIS_Plane.hxx".}
proc newAIS_Plane*(aComponent: Handle[GeomPlane]; aCenter: PntObj;
                  aCurrentMode: bool = false): AIS_Plane {.cdecl, constructor,
    importcpp: "AIS_Plane(@)", header: "AIS_Plane.hxx".}
proc newAIS_Plane*(aComponent: Handle[GeomPlane]; aCenter: PntObj; aPmin: PntObj; aPmax: PntObj;
                  aCurrentMode: bool = false): AIS_Plane {.cdecl, constructor,
    importcpp: "AIS_Plane(@)", header: "AIS_Plane.hxx".}
proc newAIS_Plane*(aComponent: Handle[GeomAxis2Placement];
                  aPlaneType: AIS_TypeOfPlane; aCurrentMode: bool = false): AIS_Plane {.
    cdecl, constructor, importcpp: "AIS_Plane(@)", header: "AIS_Plane.hxx".}
proc setSize*(this: var AIS_Plane; aValue: cfloat) {.cdecl, importcpp: "SetSize",
    header: "AIS_Plane.hxx".}
proc setSize*(this: var AIS_Plane; xval: cfloat; yVal: cfloat) {.cdecl,
    importcpp: "SetSize", header: "AIS_Plane.hxx".}
proc unsetSize*(this: var AIS_Plane) {.cdecl, importcpp: "UnsetSize", header: "AIS_Plane.hxx".}
proc size*(this: AIS_Plane; x: var cfloat; y: var cfloat): bool {.noSideEffect, cdecl,
    importcpp: "Size", header: "AIS_Plane.hxx".}
proc hasOwnSize*(this: AIS_Plane): bool {.noSideEffect, cdecl,
                                      importcpp: "HasOwnSize", header: "AIS_Plane.hxx".}
proc signature*(this: AIS_Plane): cint {.noSideEffect, cdecl, importcpp: "Signature",
                                     header: "AIS_Plane.hxx".}
proc `type`*(this: AIS_Plane): AIS_KindOfInteractive {.noSideEffect, cdecl,
    importcpp: "Type", header: "AIS_Plane.hxx".}
proc component*(this: var AIS_Plane): Handle[GeomPlane] {.cdecl,
    importcpp: "Component", header: "AIS_Plane.hxx".}
proc setComponent*(this: var AIS_Plane; aComponent: Handle[GeomPlane]) {.cdecl,
    importcpp: "SetComponent", header: "AIS_Plane.hxx".}
proc planeAttributes*(this: var AIS_Plane; aComponent: var Handle[GeomPlane];
                     aCenter: var PntObj; aPmin: var PntObj; aPmax: var PntObj): bool {.cdecl,
    importcpp: "PlaneAttributes", header: "AIS_Plane.hxx".}
proc setPlaneAttributes*(this: var AIS_Plane; aComponent: Handle[GeomPlane];
                        aCenter: PntObj; aPmin: PntObj; aPmax: PntObj) {.cdecl,
    importcpp: "SetPlaneAttributes", header: "AIS_Plane.hxx".}
proc center*(this: AIS_Plane): PntObj {.noSideEffect, cdecl, importcpp: "Center",
                                 header: "AIS_Plane.hxx".}
proc setCenter*(this: var AIS_Plane; theCenter: PntObj) {.cdecl, importcpp: "SetCenter",
    header: "AIS_Plane.hxx".}
proc setAxis2Placement*(this: var AIS_Plane; aComponent: Handle[GeomAxis2Placement];
                       aPlaneType: AIS_TypeOfPlane) {.cdecl,
    importcpp: "SetAxis2Placement", header: "AIS_Plane.hxx".}
proc axis2Placement*(this: var AIS_Plane): Handle[GeomAxis2Placement] {.cdecl,
    importcpp: "Axis2Placement", header: "AIS_Plane.hxx".}
proc typeOfPlane*(this: var AIS_Plane): AIS_TypeOfPlane {.cdecl,
    importcpp: "TypeOfPlane", header: "AIS_Plane.hxx".}
proc isXYZPlane*(this: var AIS_Plane): bool {.cdecl, importcpp: "IsXYZPlane",
    header: "AIS_Plane.hxx".}
proc currentMode*(this: var AIS_Plane): bool {.cdecl, importcpp: "CurrentMode",
    header: "AIS_Plane.hxx".}
proc setCurrentMode*(this: var AIS_Plane; theCurrentMode: bool) {.cdecl,
    importcpp: "SetCurrentMode", header: "AIS_Plane.hxx".}
proc acceptDisplayMode*(this: AIS_Plane; aMode: cint): bool {.noSideEffect, cdecl,
    importcpp: "AcceptDisplayMode", header: "AIS_Plane.hxx".}
proc setContext*(this: var AIS_Plane; aCtx: Handle[AIS_InteractiveContext]) {.cdecl,
    importcpp: "SetContext", header: "AIS_Plane.hxx".}
proc typeOfSensitivity*(this: AIS_Plane): Select3D_TypeOfSensitivity {.noSideEffect,
    cdecl, importcpp: "TypeOfSensitivity", header: "AIS_Plane.hxx".}
proc setTypeOfSensitivity*(this: var AIS_Plane;
                          theTypeOfSensitivity: Select3D_TypeOfSensitivity) {.
    cdecl, importcpp: "SetTypeOfSensitivity", header: "AIS_Plane.hxx".}
proc computeSelection*(this: var AIS_Plane;
                      theSelection: Handle[SelectMgrSelection]; theMode: cint) {.
    cdecl, importcpp: "ComputeSelection", header: "AIS_Plane.hxx".}
proc setColor*(this: var AIS_Plane; aColor: QuantityColor) {.cdecl,
    importcpp: "SetColor", header: "AIS_Plane.hxx".}
proc unsetColor*(this: var AIS_Plane) {.cdecl, importcpp: "UnsetColor", header: "AIS_Plane.hxx".}
type
  HandleAIS_Plane* = Handle[AIS_Plane]
