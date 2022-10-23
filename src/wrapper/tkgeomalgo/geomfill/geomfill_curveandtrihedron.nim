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

discard "forward decl of GeomFill_TrihedronLaw"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Mat"
discard "forward decl of GeomFill_LocationLaw"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt"
discard "forward decl of GeomFill_CurveAndTrihedron"
type
  HandleGeomFillCurveAndTrihedron* = Handle[GeomFillCurveAndTrihedron]

## ! Define location law with an TrihedronLaw and an
## ! curve
## ! Definition Location is :
## ! transformed  section   coordinates  in  (Curve(v)),
## ! (Normal(v),   BiNormal(v), Tangente(v))) systeme are
## ! the  same like section  shape coordinates in
## ! (O,(OX, OY, OZ)) systeme.

type
  GeomFillCurveAndTrihedron* {.importcpp: "GeomFill_CurveAndTrihedron",
                              header: "GeomFill_CurveAndTrihedron.hxx", bycopy.} = object of GeomFillLocationLaw


proc newGeomFillCurveAndTrihedron*(trihedron: Handle[GeomFillTrihedronLaw]): GeomFillCurveAndTrihedron {.
    cdecl, constructor, importcpp: "GeomFill_CurveAndTrihedron(@)",
    header: "GeomFill_CurveAndTrihedron.hxx".}
proc setCurve*(this: var GeomFillCurveAndTrihedron; c: Handle[Adaptor3dHCurve]) {.
    cdecl, importcpp: "SetCurve", header: "GeomFill_CurveAndTrihedron.hxx".}
proc getCurve*(this: GeomFillCurveAndTrihedron): Handle[Adaptor3dHCurve] {.
    noSideEffect, cdecl, importcpp: "GetCurve", header: "GeomFill_CurveAndTrihedron.hxx".}
proc setTrsf*(this: var GeomFillCurveAndTrihedron; transfo: MatObj) {.cdecl,
    importcpp: "SetTrsf", header: "GeomFill_CurveAndTrihedron.hxx".}
proc copy*(this: GeomFillCurveAndTrihedron): Handle[GeomFillLocationLaw] {.
    noSideEffect, cdecl, importcpp: "Copy", header: "GeomFill_CurveAndTrihedron.hxx".}
proc d0*(this: var GeomFillCurveAndTrihedron; param: cfloat; m: var MatObj; v: var VecObj): bool {.
    cdecl, importcpp: "D0", header: "GeomFill_CurveAndTrihedron.hxx".}
proc d0*(this: var GeomFillCurveAndTrihedron; param: cfloat; m: var MatObj; v: var VecObj;
        poles2d: var TColgpArray1OfPnt2d): bool {.cdecl, importcpp: "D0",
    header: "GeomFill_CurveAndTrihedron.hxx".}
proc d1*(this: var GeomFillCurveAndTrihedron; param: cfloat; m: var MatObj; v: var VecObj;
        dm: var MatObj; dv: var VecObj; poles2d: var TColgpArray1OfPnt2d;
        dPoles2d: var TColgpArray1OfVec2d): bool {.cdecl, importcpp: "D1",
    header: "GeomFill_CurveAndTrihedron.hxx".}
proc d2*(this: var GeomFillCurveAndTrihedron; param: cfloat; m: var MatObj; v: var VecObj;
        dm: var MatObj; dv: var VecObj; d2m: var MatObj; d2v: var VecObj;
        poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
        d2Poles2d: var TColgpArray1OfVec2d): bool {.cdecl, importcpp: "D2",
    header: "GeomFill_CurveAndTrihedron.hxx".}
proc nbIntervals*(this: GeomFillCurveAndTrihedron; s: GeomAbsShape): cint {.
    noSideEffect, cdecl, importcpp: "NbIntervals", header: "GeomFill_CurveAndTrihedron.hxx".}
proc intervals*(this: GeomFillCurveAndTrihedron; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "Intervals",
                                header: "GeomFill_CurveAndTrihedron.hxx".}
proc setInterval*(this: var GeomFillCurveAndTrihedron; first: cfloat; last: cfloat) {.
    cdecl, importcpp: "SetInterval", header: "GeomFill_CurveAndTrihedron.hxx".}
proc getInterval*(this: GeomFillCurveAndTrihedron; first: var cfloat; last: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetInterval", header: "GeomFill_CurveAndTrihedron.hxx".}
proc getDomain*(this: GeomFillCurveAndTrihedron; first: var cfloat; last: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetDomain", header: "GeomFill_CurveAndTrihedron.hxx".}
proc getMaximalNorm*(this: var GeomFillCurveAndTrihedron): cfloat {.cdecl,
    importcpp: "GetMaximalNorm", header: "GeomFill_CurveAndTrihedron.hxx".}
proc getAverageLaw*(this: var GeomFillCurveAndTrihedron; am: var MatObj; av: var VecObj) {.
    cdecl, importcpp: "GetAverageLaw", header: "GeomFill_CurveAndTrihedron.hxx".}
proc isTranslation*(this: GeomFillCurveAndTrihedron; error: var cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsTranslation", header: "GeomFill_CurveAndTrihedron.hxx".}
proc isRotation*(this: GeomFillCurveAndTrihedron; error: var cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsRotation", header: "GeomFill_CurveAndTrihedron.hxx".}
proc rotation*(this: GeomFillCurveAndTrihedron; center: var PntObj) {.noSideEffect, cdecl,
    importcpp: "Rotation", header: "GeomFill_CurveAndTrihedron.hxx".}