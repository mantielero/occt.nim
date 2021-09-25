##  Created on: 1997-12-09
##  Created by: Philippe MANGIN
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Vec"
discard "forward decl of GeomFill_TrihedronLaw"
discard "forward decl of GeomFill_Fixed"
discard "forward decl of GeomFill_Fixed"
type
  HandleGeomFillFixed* = Handle[GeomFillFixed]

## ! Defined an constant TrihedronLaw

type
  GeomFillFixed* {.importcpp: "GeomFill_Fixed", header: "GeomFill_Fixed.hxx", bycopy.} = object of GeomFillTrihedronLaw


proc constructGeomFillFixed*(tangent: Vec; normal: Vec): GeomFillFixed {.constructor,
    importcpp: "GeomFill_Fixed(@)", header: "GeomFill_Fixed.hxx".}
proc copy*(this: GeomFillFixed): Handle[GeomFillTrihedronLaw] {.noSideEffect,
    importcpp: "Copy", header: "GeomFill_Fixed.hxx".}
proc d0*(this: var GeomFillFixed; param: float; tangent: var Vec; normal: var Vec;
        biNormal: var Vec): bool {.importcpp: "D0", header: "GeomFill_Fixed.hxx".}
proc d1*(this: var GeomFillFixed; param: float; tangent: var Vec; dTangent: var Vec;
        normal: var Vec; dNormal: var Vec; biNormal: var Vec; dBiNormal: var Vec): bool {.
    importcpp: "D1", header: "GeomFill_Fixed.hxx".}
proc d2*(this: var GeomFillFixed; param: float; tangent: var Vec; dTangent: var Vec;
        d2Tangent: var Vec; normal: var Vec; dNormal: var Vec; d2Normal: var Vec;
        biNormal: var Vec; dBiNormal: var Vec; d2BiNormal: var Vec): bool {.
    importcpp: "D2", header: "GeomFill_Fixed.hxx".}
proc nbIntervals*(this: GeomFillFixed; s: GeomAbsShape): int {.noSideEffect,
    importcpp: "NbIntervals", header: "GeomFill_Fixed.hxx".}
proc intervals*(this: GeomFillFixed; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "Intervals", header: "GeomFill_Fixed.hxx".}
proc getAverageLaw*(this: var GeomFillFixed; aTangent: var Vec; aNormal: var Vec;
                   aBiNormal: var Vec) {.importcpp: "GetAverageLaw",
                                      header: "GeomFill_Fixed.hxx".}
proc isConstant*(this: GeomFillFixed): bool {.noSideEffect, importcpp: "IsConstant",
    header: "GeomFill_Fixed.hxx".}
type
  GeomFillFixedbaseType* = GeomFillTrihedronLaw

proc getTypeName*(): cstring {.importcpp: "GeomFill_Fixed::get_type_name(@)",
                            header: "GeomFill_Fixed.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GeomFill_Fixed::get_type_descriptor(@)",
    header: "GeomFill_Fixed.hxx".}
proc dynamicType*(this: GeomFillFixed): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "GeomFill_Fixed.hxx".}
