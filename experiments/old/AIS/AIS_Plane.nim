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

  AIS_PlanebaseType* = AIS_InteractiveObject

proc getTypeName*(): cstring {.importcpp: "AIS_Plane::get_type_name(@)",
                            header: "AIS_Plane.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AIS_Plane::get_type_descriptor(@)", header: "AIS_Plane.hxx".}
proc dynamicType*(this: AIS_Plane): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_Plane.hxx".}
proc constructAIS_Plane*(aComponent: Handle[GeomPlane]; aCurrentMode: bool = false): AIS_Plane {.
    constructor, importcpp: "AIS_Plane(@)", header: "AIS_Plane.hxx".}
proc constructAIS_Plane*(aComponent: Handle[GeomPlane]; aCenter: Pnt;
                        aCurrentMode: bool = false): AIS_Plane {.constructor,
    importcpp: "AIS_Plane(@)", header: "AIS_Plane.hxx".}
proc constructAIS_Plane*(aComponent: Handle[GeomPlane]; aCenter: Pnt; aPmin: Pnt;
                        aPmax: Pnt; aCurrentMode: bool = false): AIS_Plane {.
    constructor, importcpp: "AIS_Plane(@)", header: "AIS_Plane.hxx".}
proc constructAIS_Plane*(aComponent: Handle[GeomAxis2Placement];
                        aPlaneType: AIS_TypeOfPlane; aCurrentMode: bool = false): AIS_Plane {.
    constructor, importcpp: "AIS_Plane(@)", header: "AIS_Plane.hxx".}
proc setSize*(this: var AIS_Plane; aValue: cfloat) {.importcpp: "SetSize",
    header: "AIS_Plane.hxx".}
proc setSize*(this: var AIS_Plane; xval: cfloat; yVal: cfloat) {.importcpp: "SetSize",
    header: "AIS_Plane.hxx".}
proc unsetSize*(this: var AIS_Plane) {.importcpp: "UnsetSize", header: "AIS_Plane.hxx".}
proc size*(this: AIS_Plane; x: var cfloat; y: var cfloat): bool {.noSideEffect,
    importcpp: "Size", header: "AIS_Plane.hxx".}
proc hasOwnSize*(this: AIS_Plane): bool {.noSideEffect, importcpp: "HasOwnSize",
                                      header: "AIS_Plane.hxx".}
proc signature*(this: AIS_Plane): cint {.noSideEffect, importcpp: "Signature",
                                     header: "AIS_Plane.hxx".}
proc `type`*(this: AIS_Plane): AIS_KindOfInteractive {.noSideEffect,
    importcpp: "Type", header: "AIS_Plane.hxx".}
proc component*(this: var AIS_Plane): Handle[GeomPlane] {.importcpp: "Component",
    header: "AIS_Plane.hxx".}
proc setComponent*(this: var AIS_Plane; aComponent: Handle[GeomPlane]) {.
    importcpp: "SetComponent", header: "AIS_Plane.hxx".}
proc planeAttributes*(this: var AIS_Plane; aComponent: var Handle[GeomPlane];
                     aCenter: var Pnt; aPmin: var Pnt; aPmax: var Pnt): bool {.
    importcpp: "PlaneAttributes", header: "AIS_Plane.hxx".}
proc setPlaneAttributes*(this: var AIS_Plane; aComponent: Handle[GeomPlane];
                        aCenter: Pnt; aPmin: Pnt; aPmax: Pnt) {.
    importcpp: "SetPlaneAttributes", header: "AIS_Plane.hxx".}
proc center*(this: AIS_Plane): Pnt {.noSideEffect, importcpp: "Center",
                                 header: "AIS_Plane.hxx".}
proc setCenter*(this: var AIS_Plane; theCenter: Pnt) {.importcpp: "SetCenter",
    header: "AIS_Plane.hxx".}
proc setAxis2Placement*(this: var AIS_Plane; aComponent: Handle[GeomAxis2Placement];
                       aPlaneType: AIS_TypeOfPlane) {.
    importcpp: "SetAxis2Placement", header: "AIS_Plane.hxx".}
proc axis2Placement*(this: var AIS_Plane): Handle[GeomAxis2Placement] {.
    importcpp: "Axis2Placement", header: "AIS_Plane.hxx".}
proc typeOfPlane*(this: var AIS_Plane): AIS_TypeOfPlane {.importcpp: "TypeOfPlane",
    header: "AIS_Plane.hxx".}
proc isXYZPlane*(this: var AIS_Plane): bool {.importcpp: "IsXYZPlane",
    header: "AIS_Plane.hxx".}
proc currentMode*(this: var AIS_Plane): bool {.importcpp: "CurrentMode",
    header: "AIS_Plane.hxx".}
proc setCurrentMode*(this: var AIS_Plane; theCurrentMode: bool) {.
    importcpp: "SetCurrentMode", header: "AIS_Plane.hxx".}
proc acceptDisplayMode*(this: AIS_Plane; aMode: cint): bool {.noSideEffect,
    importcpp: "AcceptDisplayMode", header: "AIS_Plane.hxx".}
proc setContext*(this: var AIS_Plane; aCtx: Handle[AIS_InteractiveContext]) {.
    importcpp: "SetContext", header: "AIS_Plane.hxx".}
proc typeOfSensitivity*(this: AIS_Plane): Select3D_TypeOfSensitivity {.noSideEffect,
    importcpp: "TypeOfSensitivity", header: "AIS_Plane.hxx".}
proc setTypeOfSensitivity*(this: var AIS_Plane;
                          theTypeOfSensitivity: Select3D_TypeOfSensitivity) {.
    importcpp: "SetTypeOfSensitivity", header: "AIS_Plane.hxx".}
proc computeSelection*(this: var AIS_Plane;
                      theSelection: Handle[SelectMgrSelection]; theMode: cint) {.
    importcpp: "ComputeSelection", header: "AIS_Plane.hxx".}
proc setColor*(this: var AIS_Plane; aColor: QuantityColor) {.importcpp: "SetColor",
    header: "AIS_Plane.hxx".}
proc unsetColor*(this: var AIS_Plane) {.importcpp: "UnsetColor",
                                    header: "AIS_Plane.hxx".}
discard "forward decl of AIS_Plane"
type
  HandleC1C1* = Handle[AIS_Plane]


























