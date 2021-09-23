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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../gp/gp_Pnt, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean

discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Shape"
type
  TopOpeBRepDS_Point* {.importcpp: "TopOpeBRepDS_Point",
                       header: "TopOpeBRepDS_Point.hxx", bycopy.} = object


proc constructTopOpeBRepDS_Point*(): TopOpeBRepDS_Point {.constructor,
    importcpp: "TopOpeBRepDS_Point(@)", header: "TopOpeBRepDS_Point.hxx".}
proc constructTopOpeBRepDS_Point*(P: gp_Pnt; T: Standard_Real): TopOpeBRepDS_Point {.
    constructor, importcpp: "TopOpeBRepDS_Point(@)",
    header: "TopOpeBRepDS_Point.hxx".}
proc constructTopOpeBRepDS_Point*(S: TopoDS_Shape): TopOpeBRepDS_Point {.
    constructor, importcpp: "TopOpeBRepDS_Point(@)",
    header: "TopOpeBRepDS_Point.hxx".}
proc IsEqual*(this: TopOpeBRepDS_Point; other: TopOpeBRepDS_Point): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "TopOpeBRepDS_Point.hxx".}
proc Point*(this: TopOpeBRepDS_Point): gp_Pnt {.noSideEffect, importcpp: "Point",
    header: "TopOpeBRepDS_Point.hxx".}
proc ChangePoint*(this: var TopOpeBRepDS_Point): var gp_Pnt {.
    importcpp: "ChangePoint", header: "TopOpeBRepDS_Point.hxx".}
proc Tolerance*(this: TopOpeBRepDS_Point): Standard_Real {.noSideEffect,
    importcpp: "Tolerance", header: "TopOpeBRepDS_Point.hxx".}
proc Tolerance*(this: var TopOpeBRepDS_Point; Tol: Standard_Real) {.
    importcpp: "Tolerance", header: "TopOpeBRepDS_Point.hxx".}
proc Keep*(this: TopOpeBRepDS_Point): Standard_Boolean {.noSideEffect,
    importcpp: "Keep", header: "TopOpeBRepDS_Point.hxx".}
proc ChangeKeep*(this: var TopOpeBRepDS_Point; B: Standard_Boolean) {.
    importcpp: "ChangeKeep", header: "TopOpeBRepDS_Point.hxx".}