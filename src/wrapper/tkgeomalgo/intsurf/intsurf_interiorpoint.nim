##  Created on: 1992-05-15
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
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
type
  IntSurfInteriorPoint* {.importcpp: "IntSurf_InteriorPoint",
                         header: "IntSurf_InteriorPoint.hxx", bycopy.} = object


proc newIntSurfInteriorPoint*(): IntSurfInteriorPoint {.cdecl, constructor,
    importcpp: "IntSurf_InteriorPoint(@)", dynlib: tkgeomalgo.}
proc newIntSurfInteriorPoint*(p: Pnt; u: cfloat; v: cfloat; direc: Vec; direc2d: Vec2d): IntSurfInteriorPoint {.
    cdecl, constructor, importcpp: "IntSurf_InteriorPoint(@)", dynlib: tkgeomalgo.}
proc setValue*(this: var IntSurfInteriorPoint; p: Pnt; u: cfloat; v: cfloat; direc: Vec;
              direc2d: Vec2d) {.cdecl, importcpp: "SetValue", dynlib: tkgeomalgo.}
proc value*(this: IntSurfInteriorPoint): Pnt {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkgeomalgo.}
proc parameters*(this: IntSurfInteriorPoint; u: var cfloat; v: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Parameters", dynlib: tkgeomalgo.}
proc uParameter*(this: IntSurfInteriorPoint): cfloat {.noSideEffect, cdecl,
    importcpp: "UParameter", dynlib: tkgeomalgo.}
proc vParameter*(this: IntSurfInteriorPoint): cfloat {.noSideEffect, cdecl,
    importcpp: "VParameter", dynlib: tkgeomalgo.}
proc direction*(this: IntSurfInteriorPoint): Vec {.noSideEffect, cdecl,
    importcpp: "Direction", dynlib: tkgeomalgo.}
proc direction2d*(this: IntSurfInteriorPoint): Vec2d {.noSideEffect, cdecl,
    importcpp: "Direction2d", dynlib: tkgeomalgo.}