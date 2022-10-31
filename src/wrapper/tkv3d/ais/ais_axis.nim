import ../../tkernel/standard/standard_types
import ais_types
import ../../tkernel/quantity/quantity_types
import ../../tkg3d/geom/geom_types



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



proc newAIS_Axis*(aComponent: Handle[GeomLine]): AIS_Axis {.cdecl, constructor,
    importcpp: "AIS_Axis(@)", header: "AIS_Axis.hxx".}
proc newAIS_Axis*(aComponent: Handle[GeomAxis2Placement];
                 anAxisType: AIS_TypeOfAxis): AIS_Axis {.cdecl, constructor,
    importcpp: "AIS_Axis(@)", header: "AIS_Axis.hxx".}
proc newAIS_Axis*(anAxis: Handle[GeomAxis1Placement]): AIS_Axis {.cdecl, constructor,
    importcpp: "AIS_Axis(@)", header: "AIS_Axis.hxx".}
proc component*(this: AIS_Axis): Handle[GeomLine] {.noSideEffect, cdecl,
    importcpp: "Component", header: "AIS_Axis.hxx".}
proc setComponent*(this: var AIS_Axis; aComponent: Handle[GeomLine]) {.cdecl,
    importcpp: "SetComponent", header: "AIS_Axis.hxx".}
proc axis2Placement*(this: AIS_Axis): Handle[GeomAxis2Placement] {.noSideEffect,
    cdecl, importcpp: "Axis2Placement", header: "AIS_Axis.hxx".}
proc setAxis2Placement*(this: var AIS_Axis; aComponent: Handle[GeomAxis2Placement];
                       anAxisType: AIS_TypeOfAxis) {.cdecl,
    importcpp: "SetAxis2Placement", header: "AIS_Axis.hxx".}
proc setAxis1Placement*(this: var AIS_Axis; anAxis: Handle[GeomAxis1Placement]) {.
    cdecl, importcpp: "SetAxis1Placement", header: "AIS_Axis.hxx".}
proc typeOfAxis*(this: AIS_Axis): AIS_TypeOfAxis {.noSideEffect, cdecl,
    importcpp: "TypeOfAxis", header: "AIS_Axis.hxx".}
proc setTypeOfAxis*(this: var AIS_Axis; theTypeAxis: AIS_TypeOfAxis) {.cdecl,
    importcpp: "SetTypeOfAxis", header: "AIS_Axis.hxx".}
proc isXYZAxis*(this: AIS_Axis): bool {.noSideEffect, cdecl, importcpp: "IsXYZAxis",
                                    header: "AIS_Axis.hxx".}
proc acceptDisplayMode*(this: AIS_Axis; aMode: cint): bool {.noSideEffect, cdecl,
    importcpp: "AcceptDisplayMode", header: "AIS_Axis.hxx".}
proc signature*(this: AIS_Axis): cint {.noSideEffect, cdecl, importcpp: "Signature",
                                    header: "AIS_Axis.hxx".}
proc `type`*(this: AIS_Axis): AIS_KindOfInteractive {.noSideEffect, cdecl,
    importcpp: "Type", header: "AIS_Axis.hxx".}
proc setColor*(this: var AIS_Axis; aColor: QuantityColor) {.cdecl,
    importcpp: "SetColor", header: "AIS_Axis.hxx".}
proc setWidth*(this: var AIS_Axis; aValue: cfloat) {.cdecl, importcpp: "SetWidth",
    header: "AIS_Axis.hxx".}
proc unsetColor*(this: var AIS_Axis) {.cdecl, importcpp: "UnsetColor", header: "AIS_Axis.hxx".}
proc unsetWidth*(this: var AIS_Axis) {.cdecl, importcpp: "UnsetWidth", header: "AIS_Axis.hxx".}


