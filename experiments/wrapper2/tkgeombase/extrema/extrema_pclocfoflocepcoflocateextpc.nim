##  Created on: 1991-02-26
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1991-1999 Matra Datavision
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
discard "forward decl of Standard_TypeMismatch"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Extrema_CurveTool"
discard "forward decl of Extrema_POnCurv"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
type
  ExtremaPCLocFOfLocEPCOfLocateExtPC* {.importcpp: "Extrema_PCLocFOfLocEPCOfLocateExtPC", header: "Extrema_PCLocFOfLocEPCOfLocateExtPC.hxx",
                                       bycopy.} = object of MathFunctionWithDerivative


proc newExtremaPCLocFOfLocEPCOfLocateExtPC*(): ExtremaPCLocFOfLocEPCOfLocateExtPC {.
    cdecl, constructor, importcpp: "Extrema_PCLocFOfLocEPCOfLocateExtPC(@)",
    dynlib: tkgeombase.}
proc newExtremaPCLocFOfLocEPCOfLocateExtPC*(p: Pnt; c: Adaptor3dCurve): ExtremaPCLocFOfLocEPCOfLocateExtPC {.
    cdecl, constructor, importcpp: "Extrema_PCLocFOfLocEPCOfLocateExtPC(@)",
    dynlib: tkgeombase.}
proc initialize*(this: var ExtremaPCLocFOfLocEPCOfLocateExtPC; c: Adaptor3dCurve) {.
    cdecl, importcpp: "Initialize", dynlib: tkgeombase.}
proc setPoint*(this: var ExtremaPCLocFOfLocEPCOfLocateExtPC; p: Pnt) {.cdecl,
    importcpp: "SetPoint", dynlib: tkgeombase.}
proc value*(this: var ExtremaPCLocFOfLocEPCOfLocateExtPC; u: cfloat; f: var cfloat): bool {.
    cdecl, importcpp: "Value", dynlib: tkgeombase.}
proc derivative*(this: var ExtremaPCLocFOfLocEPCOfLocateExtPC; u: cfloat;
                df: var cfloat): bool {.cdecl, importcpp: "Derivative",
                                    dynlib: tkgeombase.}
proc values*(this: var ExtremaPCLocFOfLocEPCOfLocateExtPC; u: cfloat; f: var cfloat;
            df: var cfloat): bool {.cdecl, importcpp: "Values", dynlib: tkgeombase.}
proc getStateNumber*(this: var ExtremaPCLocFOfLocEPCOfLocateExtPC): cint {.cdecl,
    importcpp: "GetStateNumber", dynlib: tkgeombase.}
proc nbExt*(this: ExtremaPCLocFOfLocEPCOfLocateExtPC): cint {.noSideEffect, cdecl,
    importcpp: "NbExt", dynlib: tkgeombase.}
proc squareDistance*(this: ExtremaPCLocFOfLocEPCOfLocateExtPC; n: cint): cfloat {.
    noSideEffect, cdecl, importcpp: "SquareDistance", dynlib: tkgeombase.}
proc isMin*(this: ExtremaPCLocFOfLocEPCOfLocateExtPC; n: cint): bool {.noSideEffect,
    cdecl, importcpp: "IsMin", dynlib: tkgeombase.}
proc point*(this: ExtremaPCLocFOfLocEPCOfLocateExtPC; n: cint): ExtremaPOnCurv {.
    noSideEffect, cdecl, importcpp: "Point", dynlib: tkgeombase.}
proc subIntervalInitialize*(this: var ExtremaPCLocFOfLocEPCOfLocateExtPC;
                           theUfirst: cfloat; theUlast: cfloat) {.cdecl,
    importcpp: "SubIntervalInitialize", dynlib: tkgeombase.}
proc searchOfTolerance*(this: var ExtremaPCLocFOfLocEPCOfLocateExtPC): cfloat {.
    cdecl, importcpp: "SearchOfTolerance", dynlib: tkgeombase.}