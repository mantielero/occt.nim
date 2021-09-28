##  Created on: 2013-02-05
##  Created by: Julia GERASIMOVA
##  Copyright (c) 2001-2013 OPEN CASCADE SAS
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

discard "forward decl of GeomFill_Frenet"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of GeomFill_TrihedronLaw"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of gp_Vec"
discard "forward decl of GeomFill_DiscreteTrihedron"
discard "forward decl of GeomFill_DiscreteTrihedron"
type
  HandleC1C1* = Handle[GeomFillDiscreteTrihedron]

## ! Defined Discrete Trihedron Law.
## ! The requirement for path curve is only G1.
## ! The result is C0-continuous surface
## ! that can be later approximated to C1.

type
  GeomFillDiscreteTrihedron* {.importcpp: "GeomFill_DiscreteTrihedron",
                              header: "GeomFill_DiscreteTrihedron.hxx", bycopy.} = object of GeomFillTrihedronLaw


proc constructGeomFillDiscreteTrihedron*(): GeomFillDiscreteTrihedron {.
    constructor, importcpp: "GeomFill_DiscreteTrihedron(@)",
    header: "GeomFill_DiscreteTrihedron.hxx".}
proc copy*(this: GeomFillDiscreteTrihedron): Handle[GeomFillTrihedronLaw] {.
    noSideEffect, importcpp: "Copy", header: "GeomFill_DiscreteTrihedron.hxx".}
proc init*(this: var GeomFillDiscreteTrihedron) {.importcpp: "Init",
    header: "GeomFill_DiscreteTrihedron.hxx".}
proc setCurve*(this: var GeomFillDiscreteTrihedron; c: Handle[Adaptor3dHCurve]) {.
    importcpp: "SetCurve", header: "GeomFill_DiscreteTrihedron.hxx".}
proc d0*(this: var GeomFillDiscreteTrihedron; param: StandardReal; tangent: var Vec;
        normal: var Vec; biNormal: var Vec): StandardBoolean {.importcpp: "D0",
    header: "GeomFill_DiscreteTrihedron.hxx".}
proc d1*(this: var GeomFillDiscreteTrihedron; param: StandardReal; tangent: var Vec;
        dTangent: var Vec; normal: var Vec; dNormal: var Vec; biNormal: var Vec;
        dBiNormal: var Vec): StandardBoolean {.importcpp: "D1",
    header: "GeomFill_DiscreteTrihedron.hxx".}
proc d2*(this: var GeomFillDiscreteTrihedron; param: StandardReal; tangent: var Vec;
        dTangent: var Vec; d2Tangent: var Vec; normal: var Vec; dNormal: var Vec;
        d2Normal: var Vec; biNormal: var Vec; dBiNormal: var Vec; d2BiNormal: var Vec): StandardBoolean {.
    importcpp: "D2", header: "GeomFill_DiscreteTrihedron.hxx".}
proc nbIntervals*(this: GeomFillDiscreteTrihedron; s: GeomAbsShape): int {.
    noSideEffect, importcpp: "NbIntervals",
    header: "GeomFill_DiscreteTrihedron.hxx".}
proc intervals*(this: GeomFillDiscreteTrihedron; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, importcpp: "Intervals",
                                header: "GeomFill_DiscreteTrihedron.hxx".}
proc getAverageLaw*(this: var GeomFillDiscreteTrihedron; aTangent: var Vec;
                   aNormal: var Vec; aBiNormal: var Vec) {.importcpp: "GetAverageLaw",
    header: "GeomFill_DiscreteTrihedron.hxx".}
proc isConstant*(this: GeomFillDiscreteTrihedron): StandardBoolean {.noSideEffect,
    importcpp: "IsConstant", header: "GeomFill_DiscreteTrihedron.hxx".}
proc isOnlyBy3dCurve*(this: GeomFillDiscreteTrihedron): StandardBoolean {.
    noSideEffect, importcpp: "IsOnlyBy3dCurve",
    header: "GeomFill_DiscreteTrihedron.hxx".}
type
  GeomFillDiscreteTrihedronbaseType* = GeomFillTrihedronLaw

proc getTypeName*(): cstring {.importcpp: "GeomFill_DiscreteTrihedron::get_type_name(@)",
                            header: "GeomFill_DiscreteTrihedron.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GeomFill_DiscreteTrihedron::get_type_descriptor(@)",
    header: "GeomFill_DiscreteTrihedron.hxx".}
proc dynamicType*(this: GeomFillDiscreteTrihedron): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "GeomFill_DiscreteTrihedron.hxx".}