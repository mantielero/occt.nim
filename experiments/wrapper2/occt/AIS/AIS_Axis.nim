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

  AIS_AxisbaseType* = AIS_InteractiveObject

proc getTypeName*(): cstring {.importcpp: "AIS_Axis::get_type_name(@)",
                            header: "AIS_Axis.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AIS_Axis::get_type_descriptor(@)", header: "AIS_Axis.hxx".}
proc dynamicType*(this: AIS_Axis): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_Axis.hxx".}
proc constructAIS_Axis*(aComponent: Handle[GeomLine]): AIS_Axis {.constructor,
    importcpp: "AIS_Axis(@)", header: "AIS_Axis.hxx".}
proc constructAIS_Axis*(aComponent: Handle[GeomAxis2Placement];
                       anAxisType: AIS_TypeOfAxis): AIS_Axis {.constructor,
    importcpp: "AIS_Axis(@)", header: "AIS_Axis.hxx".}
proc constructAIS_Axis*(anAxis: Handle[GeomAxis1Placement]): AIS_Axis {.constructor,
    importcpp: "AIS_Axis(@)", header: "AIS_Axis.hxx".}
proc component*(this: AIS_Axis): Handle[GeomLine] {.noSideEffect,
    importcpp: "Component", header: "AIS_Axis.hxx".}
proc setComponent*(this: var AIS_Axis; aComponent: Handle[GeomLine]) {.
    importcpp: "SetComponent", header: "AIS_Axis.hxx".}
proc axis2Placement*(this: AIS_Axis): Handle[GeomAxis2Placement] {.noSideEffect,
    importcpp: "Axis2Placement", header: "AIS_Axis.hxx".}
proc setAxis2Placement*(this: var AIS_Axis; aComponent: Handle[GeomAxis2Placement];
                       anAxisType: AIS_TypeOfAxis) {.
    importcpp: "SetAxis2Placement", header: "AIS_Axis.hxx".}
proc setAxis1Placement*(this: var AIS_Axis; anAxis: Handle[GeomAxis1Placement]) {.
    importcpp: "SetAxis1Placement", header: "AIS_Axis.hxx".}
proc typeOfAxis*(this: AIS_Axis): AIS_TypeOfAxis {.noSideEffect,
    importcpp: "TypeOfAxis", header: "AIS_Axis.hxx".}
proc setTypeOfAxis*(this: var AIS_Axis; theTypeAxis: AIS_TypeOfAxis) {.
    importcpp: "SetTypeOfAxis", header: "AIS_Axis.hxx".}
proc isXYZAxis*(this: AIS_Axis): bool {.noSideEffect, importcpp: "IsXYZAxis",
                                    header: "AIS_Axis.hxx".}
proc acceptDisplayMode*(this: AIS_Axis; aMode: cint): bool {.noSideEffect,
    importcpp: "AcceptDisplayMode", header: "AIS_Axis.hxx".}
proc signature*(this: AIS_Axis): cint {.noSideEffect, importcpp: "Signature",
                                    header: "AIS_Axis.hxx".}
proc `type`*(this: AIS_Axis): AIS_KindOfInteractive {.noSideEffect,
    importcpp: "Type", header: "AIS_Axis.hxx".}
proc setColor*(this: var AIS_Axis; aColor: QuantityColor) {.importcpp: "SetColor",
    header: "AIS_Axis.hxx".}
proc setWidth*(this: var AIS_Axis; aValue: cfloat) {.importcpp: "SetWidth",
    header: "AIS_Axis.hxx".}
proc unsetColor*(this: var AIS_Axis) {.importcpp: "UnsetColor", header: "AIS_Axis.hxx".}
proc unsetWidth*(this: var AIS_Axis) {.importcpp: "UnsetWidth", header: "AIS_Axis.hxx".}
discard "forward decl of AIS_Axis"
type
  HandleC1C1* = Handle[AIS_Axis]


























