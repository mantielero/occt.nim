##  Created on: 1998-05-12
##  Created by: Roman BORISOV
##  Copyright (c) 1998-1999 Matra Datavision
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
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Approx_CurvlinFunc"
type
  HandleApproxCurvlinFunc* = Handle[ApproxCurvlinFunc]

## ! defines an abstract curve with
## ! curvilinear parametrization

type
  ApproxCurvlinFunc* {.importcpp: "Approx_CurvlinFunc",
                      header: "Approx_CurvlinFunc.hxx", bycopy.} = object of StandardTransient


proc newApproxCurvlinFunc*(c: Handle[Adaptor3dHCurve]; tol: cfloat): ApproxCurvlinFunc {.
    cdecl, constructor, importcpp: "Approx_CurvlinFunc(@)", header: "Approx_CurvlinFunc.hxx".}
proc newApproxCurvlinFunc*(c2d: Handle[Adaptor2dHCurve2d];
                          s: Handle[Adaptor3dHSurface]; tol: cfloat): ApproxCurvlinFunc {.
    cdecl, constructor, importcpp: "Approx_CurvlinFunc(@)", header: "Approx_CurvlinFunc.hxx".}
proc newApproxCurvlinFunc*(c2d1: Handle[Adaptor2dHCurve2d];
                          c2d2: Handle[Adaptor2dHCurve2d];
                          s1: Handle[Adaptor3dHSurface];
                          s2: Handle[Adaptor3dHSurface]; tol: cfloat): ApproxCurvlinFunc {.
    cdecl, constructor, importcpp: "Approx_CurvlinFunc(@)", header: "Approx_CurvlinFunc.hxx".}
proc setTol*(this: var ApproxCurvlinFunc; tol: cfloat) {.cdecl, importcpp: "SetTol",
    header: "Approx_CurvlinFunc.hxx".}
proc firstParameter*(this: ApproxCurvlinFunc): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", header: "Approx_CurvlinFunc.hxx".}
proc lastParameter*(this: ApproxCurvlinFunc): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", header: "Approx_CurvlinFunc.hxx".}
proc nbIntervals*(this: ApproxCurvlinFunc; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbIntervals", header: "Approx_CurvlinFunc.hxx".}
proc intervals*(this: ApproxCurvlinFunc; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", header: "Approx_CurvlinFunc.hxx".}
proc trim*(this: var ApproxCurvlinFunc; first: cfloat; last: cfloat; tol: cfloat) {.cdecl,
    importcpp: "Trim", header: "Approx_CurvlinFunc.hxx".}
proc length*(this: var ApproxCurvlinFunc) {.cdecl, importcpp: "Length",
                                        header: "Approx_CurvlinFunc.hxx".}
proc length*(this: ApproxCurvlinFunc; c: var Adaptor3dCurve; firstU: cfloat;
            lasrU: cfloat): cfloat {.noSideEffect, cdecl, importcpp: "Length",
                                  header: "Approx_CurvlinFunc.hxx".}
proc getLength*(this: ApproxCurvlinFunc): cfloat {.noSideEffect, cdecl,
    importcpp: "GetLength", header: "Approx_CurvlinFunc.hxx".}
proc getUParameter*(this: ApproxCurvlinFunc; c: var Adaptor3dCurve; s: cfloat;
                   numberOfCurve: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "GetUParameter", header: "Approx_CurvlinFunc.hxx".}
proc getSParameter*(this: ApproxCurvlinFunc; u: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "GetSParameter", header: "Approx_CurvlinFunc.hxx".}
proc evalCase1*(this: ApproxCurvlinFunc; s: cfloat; order: cint;
               result: var TColStdArray1OfReal): bool {.noSideEffect, cdecl,
    importcpp: "EvalCase1", header: "Approx_CurvlinFunc.hxx".}
proc evalCase2*(this: ApproxCurvlinFunc; s: cfloat; order: cint;
               result: var TColStdArray1OfReal): bool {.noSideEffect, cdecl,
    importcpp: "EvalCase2", header: "Approx_CurvlinFunc.hxx".}
proc evalCase3*(this: var ApproxCurvlinFunc; s: cfloat; order: cint;
               result: var TColStdArray1OfReal): bool {.cdecl,
    importcpp: "EvalCase3", header: "Approx_CurvlinFunc.hxx".}