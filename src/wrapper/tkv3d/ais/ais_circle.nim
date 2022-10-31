import ../../tkernel/standard/standard_types
import ais_types
import ../../tkernel/quantity/quantity_types
import ../../tkg3d/geom/geom_types





##  Created on: 1997-01-21
##  Created by: Prestataire Christiane ARMAND
##  Copyright (c) 1997-1999 Matra Datavision
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



proc newAIS_Circle*(aCircle: Handle[GeomCircle]): AIS_Circle {.cdecl, constructor,
    importcpp: "AIS_Circle(@)", header: "AIS_Circle.hxx".}
proc newAIS_Circle*(theCircle: Handle[GeomCircle]; theUStart: cfloat;
                   theUEnd: cfloat; theIsFilledCircleSens: bool = false): AIS_Circle {.
    cdecl, constructor, importcpp: "AIS_Circle(@)", header: "AIS_Circle.hxx".}
proc signature*(this: AIS_Circle): cint {.noSideEffect, cdecl, importcpp: "Signature",
                                      header: "AIS_Circle.hxx".}
proc `type`*(this: AIS_Circle): AIS_KindOfInteractive {.noSideEffect, cdecl,
    importcpp: "Type", header: "AIS_Circle.hxx".}
proc circle*(this: AIS_Circle): Handle[GeomCircle] {.noSideEffect, cdecl,
    importcpp: "Circle", header: "AIS_Circle.hxx".}
proc parameters*(this: AIS_Circle; theU1: var cfloat; theU2: var cfloat) {.noSideEffect,
    cdecl, importcpp: "Parameters", header: "AIS_Circle.hxx".}
proc setCircle*(this: var AIS_Circle; theCircle: Handle[GeomCircle]) {.cdecl,
    importcpp: "SetCircle", header: "AIS_Circle.hxx".}
proc setFirstParam*(this: var AIS_Circle; theU: cfloat) {.cdecl,
    importcpp: "SetFirstParam", header: "AIS_Circle.hxx".}
proc setLastParam*(this: var AIS_Circle; theU: cfloat) {.cdecl,
    importcpp: "SetLastParam", header: "AIS_Circle.hxx".}
proc setColor*(this: var AIS_Circle; aColor: QuantityColor) {.cdecl,
    importcpp: "SetColor", header: "AIS_Circle.hxx".}
proc setWidth*(this: var AIS_Circle; aValue: cfloat) {.cdecl, importcpp: "SetWidth",
    header: "AIS_Circle.hxx".}
proc unsetColor*(this: var AIS_Circle) {.cdecl, importcpp: "UnsetColor", header: "AIS_Circle.hxx".}
proc unsetWidth*(this: var AIS_Circle) {.cdecl, importcpp: "UnsetWidth", header: "AIS_Circle.hxx".}
proc isFilledCircleSens*(this: AIS_Circle): bool {.noSideEffect, cdecl,
    importcpp: "IsFilledCircleSens", header: "AIS_Circle.hxx".}
proc setFilledCircleSens*(this: var AIS_Circle; theIsFilledCircleSens: bool) {.cdecl,
    importcpp: "SetFilledCircleSens", header: "AIS_Circle.hxx".}



