##  Created on: 1995-08-09
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
  AIS_InteractiveObject, AIS_TypeOfAxis, ../gp/gp_Dir, ../gp/gp_Pnt,
  ../SelectMgr/SelectMgr_Selection

discard "forward decl of Geom_Line"
discard "forward decl of Geom_Axis1Placement"
discard "forward decl of Geom_Axis2Placement"
discard "forward decl of Prs3d_LineAspect"
type
  AIS_Axis* {.importcpp: "AIS_Axis", header: "AIS_Axis.hxx", bycopy.} = object of AIS_InteractiveObject ##
                                                                                              ## !
                                                                                              ## Initializes
                                                                                              ## the
                                                                                              ## line
                                                                                              ## aComponent

  AIS_Axisbase_type* = AIS_InteractiveObject

proc get_type_name*(): cstring {.importcpp: "AIS_Axis::get_type_name(@)",
                              header: "AIS_Axis.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AIS_Axis::get_type_descriptor(@)", header: "AIS_Axis.hxx".}
proc DynamicType*(this: AIS_Axis): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_Axis.hxx".}
proc constructAIS_Axis*(aComponent: handle[Geom_Line]): AIS_Axis {.constructor,
    importcpp: "AIS_Axis(@)", header: "AIS_Axis.hxx".}
proc constructAIS_Axis*(aComponent: handle[Geom_Axis2Placement];
                       anAxisType: AIS_TypeOfAxis): AIS_Axis {.constructor,
    importcpp: "AIS_Axis(@)", header: "AIS_Axis.hxx".}
proc constructAIS_Axis*(anAxis: handle[Geom_Axis1Placement]): AIS_Axis {.
    constructor, importcpp: "AIS_Axis(@)", header: "AIS_Axis.hxx".}
proc Component*(this: AIS_Axis): handle[Geom_Line] {.noSideEffect,
    importcpp: "Component", header: "AIS_Axis.hxx".}
proc SetComponent*(this: var AIS_Axis; aComponent: handle[Geom_Line]) {.
    importcpp: "SetComponent", header: "AIS_Axis.hxx".}
proc Axis2Placement*(this: AIS_Axis): handle[Geom_Axis2Placement] {.noSideEffect,
    importcpp: "Axis2Placement", header: "AIS_Axis.hxx".}
proc SetAxis2Placement*(this: var AIS_Axis; aComponent: handle[Geom_Axis2Placement];
                       anAxisType: AIS_TypeOfAxis) {.
    importcpp: "SetAxis2Placement", header: "AIS_Axis.hxx".}
proc SetAxis1Placement*(this: var AIS_Axis; anAxis: handle[Geom_Axis1Placement]) {.
    importcpp: "SetAxis1Placement", header: "AIS_Axis.hxx".}
proc TypeOfAxis*(this: AIS_Axis): AIS_TypeOfAxis {.noSideEffect,
    importcpp: "TypeOfAxis", header: "AIS_Axis.hxx".}
proc SetTypeOfAxis*(this: var AIS_Axis; theTypeAxis: AIS_TypeOfAxis) {.
    importcpp: "SetTypeOfAxis", header: "AIS_Axis.hxx".}
proc IsXYZAxis*(this: AIS_Axis): Standard_Boolean {.noSideEffect,
    importcpp: "IsXYZAxis", header: "AIS_Axis.hxx".}
proc AcceptDisplayMode*(this: AIS_Axis; aMode: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "AcceptDisplayMode", header: "AIS_Axis.hxx".}
proc Signature*(this: AIS_Axis): Standard_Integer {.noSideEffect,
    importcpp: "Signature", header: "AIS_Axis.hxx".}
proc Type*(this: AIS_Axis): AIS_KindOfInteractive {.noSideEffect, importcpp: "Type",
    header: "AIS_Axis.hxx".}
proc SetColor*(this: var AIS_Axis; aColor: Quantity_Color) {.importcpp: "SetColor",
    header: "AIS_Axis.hxx".}
proc SetWidth*(this: var AIS_Axis; aValue: Standard_Real) {.importcpp: "SetWidth",
    header: "AIS_Axis.hxx".}
proc UnsetColor*(this: var AIS_Axis) {.importcpp: "UnsetColor", header: "AIS_Axis.hxx".}
proc UnsetWidth*(this: var AIS_Axis) {.importcpp: "UnsetWidth", header: "AIS_Axis.hxx".}
discard "forward decl of AIS_Axis"
type
  Handle_AIS_Axis* = handle[AIS_Axis]
