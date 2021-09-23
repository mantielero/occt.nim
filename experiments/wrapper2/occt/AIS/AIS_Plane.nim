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

import
  AIS_InteractiveObject, AIS_TypeOfPlane, ../gp/gp_Pnt,
  ../Select3D/Select3D_TypeOfSensitivity

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

  AIS_Planebase_type* = AIS_InteractiveObject

proc get_type_name*(): cstring {.importcpp: "AIS_Plane::get_type_name(@)",
                              header: "AIS_Plane.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AIS_Plane::get_type_descriptor(@)", header: "AIS_Plane.hxx".}
proc DynamicType*(this: AIS_Plane): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_Plane.hxx".}
proc constructAIS_Plane*(aComponent: handle[Geom_Plane];
                        aCurrentMode: Standard_Boolean = Standard_False): AIS_Plane {.
    constructor, importcpp: "AIS_Plane(@)", header: "AIS_Plane.hxx".}
proc constructAIS_Plane*(aComponent: handle[Geom_Plane]; aCenter: gp_Pnt;
                        aCurrentMode: Standard_Boolean = Standard_False): AIS_Plane {.
    constructor, importcpp: "AIS_Plane(@)", header: "AIS_Plane.hxx".}
proc constructAIS_Plane*(aComponent: handle[Geom_Plane]; aCenter: gp_Pnt;
                        aPmin: gp_Pnt; aPmax: gp_Pnt;
                        aCurrentMode: Standard_Boolean = Standard_False): AIS_Plane {.
    constructor, importcpp: "AIS_Plane(@)", header: "AIS_Plane.hxx".}
proc constructAIS_Plane*(aComponent: handle[Geom_Axis2Placement];
                        aPlaneType: AIS_TypeOfPlane;
                        aCurrentMode: Standard_Boolean = Standard_False): AIS_Plane {.
    constructor, importcpp: "AIS_Plane(@)", header: "AIS_Plane.hxx".}
proc SetSize*(this: var AIS_Plane; aValue: Standard_Real) {.importcpp: "SetSize",
    header: "AIS_Plane.hxx".}
proc SetSize*(this: var AIS_Plane; Xval: Standard_Real; YVal: Standard_Real) {.
    importcpp: "SetSize", header: "AIS_Plane.hxx".}
proc UnsetSize*(this: var AIS_Plane) {.importcpp: "UnsetSize", header: "AIS_Plane.hxx".}
proc Size*(this: AIS_Plane; X: var Standard_Real; Y: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "Size", header: "AIS_Plane.hxx".}
proc HasOwnSize*(this: AIS_Plane): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnSize", header: "AIS_Plane.hxx".}
proc Signature*(this: AIS_Plane): Standard_Integer {.noSideEffect,
    importcpp: "Signature", header: "AIS_Plane.hxx".}
proc Type*(this: AIS_Plane): AIS_KindOfInteractive {.noSideEffect, importcpp: "Type",
    header: "AIS_Plane.hxx".}
proc Component*(this: var AIS_Plane): handle[Geom_Plane] {.importcpp: "Component",
    header: "AIS_Plane.hxx".}
proc SetComponent*(this: var AIS_Plane; aComponent: handle[Geom_Plane]) {.
    importcpp: "SetComponent", header: "AIS_Plane.hxx".}
proc PlaneAttributes*(this: var AIS_Plane; aComponent: var handle[Geom_Plane];
                     aCenter: var gp_Pnt; aPmin: var gp_Pnt; aPmax: var gp_Pnt): Standard_Boolean {.
    importcpp: "PlaneAttributes", header: "AIS_Plane.hxx".}
proc SetPlaneAttributes*(this: var AIS_Plane; aComponent: handle[Geom_Plane];
                        aCenter: gp_Pnt; aPmin: gp_Pnt; aPmax: gp_Pnt) {.
    importcpp: "SetPlaneAttributes", header: "AIS_Plane.hxx".}
proc Center*(this: AIS_Plane): gp_Pnt {.noSideEffect, importcpp: "Center",
                                    header: "AIS_Plane.hxx".}
proc SetCenter*(this: var AIS_Plane; theCenter: gp_Pnt) {.importcpp: "SetCenter",
    header: "AIS_Plane.hxx".}
proc SetAxis2Placement*(this: var AIS_Plane;
                       aComponent: handle[Geom_Axis2Placement];
                       aPlaneType: AIS_TypeOfPlane) {.
    importcpp: "SetAxis2Placement", header: "AIS_Plane.hxx".}
proc Axis2Placement*(this: var AIS_Plane): handle[Geom_Axis2Placement] {.
    importcpp: "Axis2Placement", header: "AIS_Plane.hxx".}
proc TypeOfPlane*(this: var AIS_Plane): AIS_TypeOfPlane {.importcpp: "TypeOfPlane",
    header: "AIS_Plane.hxx".}
proc IsXYZPlane*(this: var AIS_Plane): Standard_Boolean {.importcpp: "IsXYZPlane",
    header: "AIS_Plane.hxx".}
proc CurrentMode*(this: var AIS_Plane): Standard_Boolean {.importcpp: "CurrentMode",
    header: "AIS_Plane.hxx".}
proc SetCurrentMode*(this: var AIS_Plane; theCurrentMode: Standard_Boolean) {.
    importcpp: "SetCurrentMode", header: "AIS_Plane.hxx".}
proc AcceptDisplayMode*(this: AIS_Plane; aMode: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "AcceptDisplayMode", header: "AIS_Plane.hxx".}
proc SetContext*(this: var AIS_Plane; aCtx: handle[AIS_InteractiveContext]) {.
    importcpp: "SetContext", header: "AIS_Plane.hxx".}
proc TypeOfSensitivity*(this: AIS_Plane): Select3D_TypeOfSensitivity {.noSideEffect,
    importcpp: "TypeOfSensitivity", header: "AIS_Plane.hxx".}
proc SetTypeOfSensitivity*(this: var AIS_Plane;
                          theTypeOfSensitivity: Select3D_TypeOfSensitivity) {.
    importcpp: "SetTypeOfSensitivity", header: "AIS_Plane.hxx".}
proc ComputeSelection*(this: var AIS_Plane;
                      theSelection: handle[SelectMgr_Selection];
                      theMode: Standard_Integer) {.importcpp: "ComputeSelection",
    header: "AIS_Plane.hxx".}
proc SetColor*(this: var AIS_Plane; aColor: Quantity_Color) {.importcpp: "SetColor",
    header: "AIS_Plane.hxx".}
proc UnsetColor*(this: var AIS_Plane) {.importcpp: "UnsetColor",
                                    header: "AIS_Plane.hxx".}
discard "forward decl of AIS_Plane"
type
  Handle_AIS_Plane* = handle[AIS_Plane]
