##  Created on: 1997-12-02
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

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NotImplemented"
discard "forward decl of gp_Vec"
discard "forward decl of GeomFill_TrihedronLaw"
discard "forward decl of GeomFill_TrihedronLaw"
type
  HandleGeomFillTrihedronLaw* = Handle[GeomFillTrihedronLaw]

## ! To define Trihedron along one Curve

type
  GeomFillTrihedronLaw* {.importcpp: "GeomFill_TrihedronLaw",
                         header: "GeomFill_TrihedronLaw.hxx", bycopy.} = object of StandardTransient


proc setCurve*(this: var GeomFillTrihedronLaw; c: Handle[Adaptor3dHCurve]) {.
    importcpp: "SetCurve", header: "GeomFill_TrihedronLaw.hxx".}
proc copy*(this: GeomFillTrihedronLaw): Handle[GeomFillTrihedronLaw] {.noSideEffect,
    importcpp: "Copy", header: "GeomFill_TrihedronLaw.hxx".}
proc errorStatus*(this: GeomFillTrihedronLaw): GeomFillPipeError {.noSideEffect,
    importcpp: "ErrorStatus", header: "GeomFill_TrihedronLaw.hxx".}
proc d0*(this: var GeomFillTrihedronLaw; param: float; tangent: var Vec; normal: var Vec;
        biNormal: var Vec): bool {.importcpp: "D0",
                               header: "GeomFill_TrihedronLaw.hxx".}
proc d1*(this: var GeomFillTrihedronLaw; param: float; tangent: var Vec;
        dTangent: var Vec; normal: var Vec; dNormal: var Vec; biNormal: var Vec;
        dBiNormal: var Vec): bool {.importcpp: "D1",
                                header: "GeomFill_TrihedronLaw.hxx".}
proc d2*(this: var GeomFillTrihedronLaw; param: float; tangent: var Vec;
        dTangent: var Vec; d2Tangent: var Vec; normal: var Vec; dNormal: var Vec;
        d2Normal: var Vec; biNormal: var Vec; dBiNormal: var Vec; d2BiNormal: var Vec): bool {.
    importcpp: "D2", header: "GeomFill_TrihedronLaw.hxx".}
proc nbIntervals*(this: GeomFillTrihedronLaw; s: GeomAbsShape): int {.noSideEffect,
    importcpp: "NbIntervals", header: "GeomFill_TrihedronLaw.hxx".}
proc intervals*(this: GeomFillTrihedronLaw; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, importcpp: "Intervals",
                                header: "GeomFill_TrihedronLaw.hxx".}
proc setInterval*(this: var GeomFillTrihedronLaw; first: float; last: float) {.
    importcpp: "SetInterval", header: "GeomFill_TrihedronLaw.hxx".}
proc getInterval*(this: var GeomFillTrihedronLaw; first: var float; last: var float) {.
    importcpp: "GetInterval", header: "GeomFill_TrihedronLaw.hxx".}
proc getAverageLaw*(this: var GeomFillTrihedronLaw; aTangent: var Vec;
                   aNormal: var Vec; aBiNormal: var Vec) {.importcpp: "GetAverageLaw",
    header: "GeomFill_TrihedronLaw.hxx".}
proc isConstant*(this: GeomFillTrihedronLaw): bool {.noSideEffect,
    importcpp: "IsConstant", header: "GeomFill_TrihedronLaw.hxx".}
proc isOnlyBy3dCurve*(this: GeomFillTrihedronLaw): bool {.noSideEffect,
    importcpp: "IsOnlyBy3dCurve", header: "GeomFill_TrihedronLaw.hxx".}
type
  GeomFillTrihedronLawbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "GeomFill_TrihedronLaw::get_type_name(@)",
                            header: "GeomFill_TrihedronLaw.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GeomFill_TrihedronLaw::get_type_descriptor(@)",
    header: "GeomFill_TrihedronLaw.hxx".}
proc dynamicType*(this: GeomFillTrihedronLaw): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "GeomFill_TrihedronLaw.hxx".}
