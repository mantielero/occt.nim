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
proc setTrsf*(this: var GeomFillLocationLaw; transfo: GpMat) {.importcpp: "SetTrsf",
    header: "GeomFill_LocationLaw.hxx".}
proc copy*(this: GeomFillLocationLaw): Handle[GeomFillLocationLaw] {.noSideEffect,
    importcpp: "Copy", header: "GeomFill_LocationLaw.hxx".}
proc d0*(this: var GeomFillLocationLaw; param: StandardReal; m: var GpMat; v: var GpVec): StandardBoolean {.
    importcpp: "D0", header: "GeomFill_LocationLaw.hxx".}
proc d0*(this: var GeomFillLocationLaw; param: StandardReal; m: var GpMat; v: var GpVec;
        poles2d: var TColgpArray1OfPnt2d): StandardBoolean {.importcpp: "D0",
    header: "GeomFill_LocationLaw.hxx".}
proc d1*(this: var GeomFillLocationLaw; param: StandardReal; m: var GpMat; v: var GpVec;
        dm: var GpMat; dv: var GpVec; poles2d: var TColgpArray1OfPnt2d;
        dPoles2d: var TColgpArray1OfVec2d): StandardBoolean {.importcpp: "D1",
    header: "GeomFill_LocationLaw.hxx".}
proc d2*(this: var GeomFillLocationLaw; param: StandardReal; m: var GpMat; v: var GpVec;
        dm: var GpMat; dv: var GpVec; d2m: var GpMat; d2v: var GpVec;
        poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
        d2Poles2d: var TColgpArray1OfVec2d): StandardBoolean {.importcpp: "D2",
    header: "GeomFill_LocationLaw.hxx".}
proc nb2dCurves*(this: GeomFillLocationLaw): StandardInteger {.noSideEffect,
    importcpp: "Nb2dCurves", header: "GeomFill_LocationLaw.hxx".}
proc hasFirstRestriction*(this: GeomFillLocationLaw): StandardBoolean {.
    noSideEffect, importcpp: "HasFirstRestriction",
    header: "GeomFill_LocationLaw.hxx".}
proc hasLastRestriction*(this: GeomFillLocationLaw): StandardBoolean {.noSideEffect,
    importcpp: "HasLastRestriction", header: "GeomFill_LocationLaw.hxx".}
proc traceNumber*(this: GeomFillLocationLaw): StandardInteger {.noSideEffect,
    importcpp: "TraceNumber", header: "GeomFill_LocationLaw.hxx".}
proc errorStatus*(this: GeomFillLocationLaw): GeomFillPipeError {.noSideEffect,
    importcpp: "ErrorStatus", header: "GeomFill_LocationLaw.hxx".}
proc nbIntervals*(this: GeomFillLocationLaw; s: GeomAbsShape): StandardInteger {.
    noSideEffect, importcpp: "NbIntervals", header: "GeomFill_LocationLaw.hxx".}
proc intervals*(this: GeomFillLocationLaw; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "Intervals", header: "GeomFill_LocationLaw.hxx".}
proc setInterval*(this: var GeomFillLocationLaw; first: StandardReal;
                 last: StandardReal) {.importcpp: "SetInterval",
                                     header: "GeomFill_LocationLaw.hxx".}
proc getInterval*(this: GeomFillLocationLaw; first: var StandardReal;
                 last: var StandardReal) {.noSideEffect, importcpp: "GetInterval",
                                        header: "GeomFill_LocationLaw.hxx".}
proc getDomain*(this: GeomFillLocationLaw; first: var StandardReal;
               last: var StandardReal) {.noSideEffect, importcpp: "GetDomain",
                                      header: "GeomFill_LocationLaw.hxx".}
proc resolution*(this: GeomFillLocationLaw; index: StandardInteger;
                tol: StandardReal; tolU: var StandardReal; tolV: var StandardReal) {.
    noSideEffect, importcpp: "Resolution", header: "GeomFill_LocationLaw.hxx".}
proc setTolerance*(this: var GeomFillLocationLaw; tol3d: StandardReal;
                  tol2d: StandardReal) {.importcpp: "SetTolerance",
                                       header: "GeomFill_LocationLaw.hxx".}
proc getMaximalNorm*(this: var GeomFillLocationLaw): StandardReal {.
    importcpp: "GetMaximalNorm", header: "GeomFill_LocationLaw.hxx".}
proc getAverageLaw*(this: var GeomFillLocationLaw; am: var GpMat; av: var GpVec) {.
    importcpp: "GetAverageLaw", header: "GeomFill_LocationLaw.hxx".}
proc isTranslation*(this: GeomFillLocationLaw; error: var StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsTranslation", header: "GeomFill_LocationLaw.hxx".}
proc isRotation*(this: GeomFillLocationLaw; error: var StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsRotation", header: "GeomFill_LocationLaw.hxx".}
proc rotation*(this: GeomFillLocationLaw; center: var GpPnt) {.noSideEffect,
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

