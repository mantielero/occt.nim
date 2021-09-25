##  Created on: 1997-11-20
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

discard "forward decl of Standard_NotImplemented"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of gp_Mat"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt"
discard "forward decl of GeomFill_LocationLaw"
discard "forward decl of GeomFill_LocationLaw"
type
  HandleGeomFillLocationLaw* = Handle[GeomFillLocationLaw]

## ! To define location  law in Sweeping location is --
## ! defined   by an  Matrix  M and  an Vector  V,  and
## ! transform an point P in MP+V.

type
  GeomFillLocationLaw* {.importcpp: "GeomFill_LocationLaw",
                        header: "GeomFill_LocationLaw.hxx", bycopy.} = object of StandardTransient


proc setCurve*(this: var GeomFillLocationLaw; c: Handle[Adaptor3dHCurve]) {.
    importcpp: "SetCurve", header: "GeomFill_LocationLaw.hxx".}
proc getCurve*(this: GeomFillLocationLaw): Handle[Adaptor3dHCurve] {.noSideEffect,
    importcpp: "GetCurve", header: "GeomFill_LocationLaw.hxx".}
proc setTrsf*(this: var GeomFillLocationLaw; transfo: Mat) {.importcpp: "SetTrsf",
    header: "GeomFill_LocationLaw.hxx".}
proc copy*(this: GeomFillLocationLaw): Handle[GeomFillLocationLaw] {.noSideEffect,
    importcpp: "Copy", header: "GeomFill_LocationLaw.hxx".}
proc d0*(this: var GeomFillLocationLaw; param: float; m: var Mat; v: var Vec): bool {.
    importcpp: "D0", header: "GeomFill_LocationLaw.hxx".}
proc d0*(this: var GeomFillLocationLaw; param: float; m: var Mat; v: var Vec;
        poles2d: var TColgpArray1OfPnt2d): bool {.importcpp: "D0",
    header: "GeomFill_LocationLaw.hxx".}
proc d1*(this: var GeomFillLocationLaw; param: float; m: var Mat; v: var Vec; dm: var Mat;
        dv: var Vec; poles2d: var TColgpArray1OfPnt2d;
        dPoles2d: var TColgpArray1OfVec2d): bool {.importcpp: "D1",
    header: "GeomFill_LocationLaw.hxx".}
proc d2*(this: var GeomFillLocationLaw; param: float; m: var Mat; v: var Vec; dm: var Mat;
        dv: var Vec; d2m: var Mat; d2v: var Vec; poles2d: var TColgpArray1OfPnt2d;
        dPoles2d: var TColgpArray1OfVec2d; d2Poles2d: var TColgpArray1OfVec2d): bool {.
    importcpp: "D2", header: "GeomFill_LocationLaw.hxx".}
proc nb2dCurves*(this: GeomFillLocationLaw): int {.noSideEffect,
    importcpp: "Nb2dCurves", header: "GeomFill_LocationLaw.hxx".}
proc hasFirstRestriction*(this: GeomFillLocationLaw): bool {.noSideEffect,
    importcpp: "HasFirstRestriction", header: "GeomFill_LocationLaw.hxx".}
proc hasLastRestriction*(this: GeomFillLocationLaw): bool {.noSideEffect,
    importcpp: "HasLastRestriction", header: "GeomFill_LocationLaw.hxx".}
proc traceNumber*(this: GeomFillLocationLaw): int {.noSideEffect,
    importcpp: "TraceNumber", header: "GeomFill_LocationLaw.hxx".}
proc errorStatus*(this: GeomFillLocationLaw): GeomFillPipeError {.noSideEffect,
    importcpp: "ErrorStatus", header: "GeomFill_LocationLaw.hxx".}
proc nbIntervals*(this: GeomFillLocationLaw; s: GeomAbsShape): int {.noSideEffect,
    importcpp: "NbIntervals", header: "GeomFill_LocationLaw.hxx".}
proc intervals*(this: GeomFillLocationLaw; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "Intervals", header: "GeomFill_LocationLaw.hxx".}
proc setInterval*(this: var GeomFillLocationLaw; first: float; last: float) {.
    importcpp: "SetInterval", header: "GeomFill_LocationLaw.hxx".}
proc getInterval*(this: GeomFillLocationLaw; first: var float; last: var float) {.
    noSideEffect, importcpp: "GetInterval", header: "GeomFill_LocationLaw.hxx".}
proc getDomain*(this: GeomFillLocationLaw; first: var float; last: var float) {.
    noSideEffect, importcpp: "GetDomain", header: "GeomFill_LocationLaw.hxx".}
proc resolution*(this: GeomFillLocationLaw; index: int; tol: float; tolU: var float;
                tolV: var float) {.noSideEffect, importcpp: "Resolution",
                                header: "GeomFill_LocationLaw.hxx".}
proc setTolerance*(this: var GeomFillLocationLaw; tol3d: float; tol2d: float) {.
    importcpp: "SetTolerance", header: "GeomFill_LocationLaw.hxx".}
proc getMaximalNorm*(this: var GeomFillLocationLaw): float {.
    importcpp: "GetMaximalNorm", header: "GeomFill_LocationLaw.hxx".}
proc getAverageLaw*(this: var GeomFillLocationLaw; am: var Mat; av: var Vec) {.
    importcpp: "GetAverageLaw", header: "GeomFill_LocationLaw.hxx".}
proc isTranslation*(this: GeomFillLocationLaw; error: var float): bool {.noSideEffect,
    importcpp: "IsTranslation", header: "GeomFill_LocationLaw.hxx".}
proc isRotation*(this: GeomFillLocationLaw; error: var float): bool {.noSideEffect,
    importcpp: "IsRotation", header: "GeomFill_LocationLaw.hxx".}
proc rotation*(this: GeomFillLocationLaw; center: var Pnt) {.noSideEffect,
    importcpp: "Rotation", header: "GeomFill_LocationLaw.hxx".}
type
  GeomFillLocationLawbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "GeomFill_LocationLaw::get_type_name(@)",
                            header: "GeomFill_LocationLaw.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GeomFill_LocationLaw::get_type_descriptor(@)",
    header: "GeomFill_LocationLaw.hxx".}
proc dynamicType*(this: GeomFillLocationLaw): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "GeomFill_LocationLaw.hxx".}
