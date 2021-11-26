##  Created on: 1992-05-06
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
type
  IntSurfPntOn2S* {.importcpp: "IntSurf_PntOn2S", header: "IntSurf_PntOn2S.hxx",
                   bycopy.} = object ## ! Empty constructor.


proc newIntSurfPntOn2S*(): IntSurfPntOn2S {.cdecl, constructor,
    importcpp: "IntSurf_PntOn2S(@)", dynlib: tkgeomalgo.}
proc setValue*(this: var IntSurfPntOn2S; pt: Pnt) {.cdecl, importcpp: "SetValue",
    dynlib: tkgeomalgo.}
proc setValue*(this: var IntSurfPntOn2S; pt: Pnt; onFirst: bool; u: cfloat; v: cfloat) {.
    cdecl, importcpp: "SetValue", dynlib: tkgeomalgo.}
proc setValue*(this: var IntSurfPntOn2S; pt: Pnt; u1: cfloat; v1: cfloat; u2: cfloat;
              v2: cfloat) {.cdecl, importcpp: "SetValue", dynlib: tkgeomalgo.}
proc setValue*(this: var IntSurfPntOn2S; onFirst: bool; u: cfloat; v: cfloat) {.cdecl,
    importcpp: "SetValue", dynlib: tkgeomalgo.}
proc setValue*(this: var IntSurfPntOn2S; u1: cfloat; v1: cfloat; u2: cfloat; v2: cfloat) {.
    cdecl, importcpp: "SetValue", dynlib: tkgeomalgo.}
proc value*(this: IntSurfPntOn2S): Pnt {.noSideEffect, cdecl, importcpp: "Value",
                                     dynlib: tkgeomalgo.}
proc valueOnSurface*(this: IntSurfPntOn2S; onFirst: bool): Pnt2d {.noSideEffect, cdecl,
    importcpp: "ValueOnSurface", dynlib: tkgeomalgo.}
proc parametersOnS1*(this: IntSurfPntOn2S; u1: var cfloat; v1: var cfloat) {.
    noSideEffect, cdecl, importcpp: "ParametersOnS1", dynlib: tkgeomalgo.}
proc parametersOnS2*(this: IntSurfPntOn2S; u2: var cfloat; v2: var cfloat) {.
    noSideEffect, cdecl, importcpp: "ParametersOnS2", dynlib: tkgeomalgo.}
proc parametersOnSurface*(this: IntSurfPntOn2S; onFirst: bool; u: var cfloat;
                         v: var cfloat) {.noSideEffect, cdecl,
                                       importcpp: "ParametersOnSurface",
                                       dynlib: tkgeomalgo.}
proc parameters*(this: IntSurfPntOn2S; u1: var cfloat; v1: var cfloat; u2: var cfloat;
                v2: var cfloat) {.noSideEffect, cdecl, importcpp: "Parameters",
                               dynlib: tkgeomalgo.}
proc isSame*(this: IntSurfPntOn2S; theOtherPoint: IntSurfPntOn2S;
            theTol3D: cfloat = 0.0; theTol2D: cfloat = -1.0): bool {.noSideEffect, cdecl,
    importcpp: "IsSame", dynlib: tkgeomalgo.}