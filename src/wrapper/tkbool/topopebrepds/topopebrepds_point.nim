##  Created on: 1993-06-23
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1993-1999 Matra Datavision
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
discard "forward decl of TopoDS_Shape"
type
  TopOpeBRepDS_Point* {.importcpp: "TopOpeBRepDS_Point",
                       header: "TopOpeBRepDS_Point.hxx", bycopy.} = object


proc newTopOpeBRepDS_Point*(): TopOpeBRepDS_Point {.cdecl, constructor,
    importcpp: "TopOpeBRepDS_Point(@)", dynlib: tkbool.}
proc newTopOpeBRepDS_Point*(p: Pnt; t: cfloat): TopOpeBRepDS_Point {.cdecl,
    constructor, importcpp: "TopOpeBRepDS_Point(@)", dynlib: tkbool.}
proc newTopOpeBRepDS_Point*(s: TopoDS_Shape): TopOpeBRepDS_Point {.cdecl,
    constructor, importcpp: "TopOpeBRepDS_Point(@)", dynlib: tkbool.}
proc isEqual*(this: TopOpeBRepDS_Point; other: TopOpeBRepDS_Point): bool {.
    noSideEffect, cdecl, importcpp: "IsEqual", dynlib: tkbool.}
proc point*(this: TopOpeBRepDS_Point): Pnt {.noSideEffect, cdecl, importcpp: "Point",
    dynlib: tkbool.}
proc changePoint*(this: var TopOpeBRepDS_Point): var Pnt {.cdecl,
    importcpp: "ChangePoint", dynlib: tkbool.}
proc tolerance*(this: TopOpeBRepDS_Point): cfloat {.noSideEffect, cdecl,
    importcpp: "Tolerance", dynlib: tkbool.}
proc tolerance*(this: var TopOpeBRepDS_Point; tol: cfloat) {.cdecl,
    importcpp: "Tolerance", dynlib: tkbool.}
proc keep*(this: TopOpeBRepDS_Point): bool {.noSideEffect, cdecl, importcpp: "Keep",
    dynlib: tkbool.}
proc changeKeep*(this: var TopOpeBRepDS_Point; b: bool) {.cdecl,
    importcpp: "ChangeKeep", dynlib: tkbool.}