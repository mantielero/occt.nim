##  Created on: 1998-03-23
##  Created by: Jean Yves LEBEY
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

discard "forward decl of Geom2d_Curve"
discard "forward decl of TopoDS_Face"
type
  TopOpeBRepToolC2DF* {.importcpp: "TopOpeBRepTool_C2DF",
                       header: "TopOpeBRepTool_C2DF.hxx", bycopy.} = object


proc constructTopOpeBRepToolC2DF*(): TopOpeBRepToolC2DF {.constructor,
    importcpp: "TopOpeBRepTool_C2DF(@)", header: "TopOpeBRepTool_C2DF.hxx".}
proc constructTopOpeBRepToolC2DF*(pc: Handle[Geom2dCurve]; f2d: float; l2d: float;
                                 tol: float; f: TopoDS_Face): TopOpeBRepToolC2DF {.
    constructor, importcpp: "TopOpeBRepTool_C2DF(@)",
    header: "TopOpeBRepTool_C2DF.hxx".}
proc setPC*(this: var TopOpeBRepToolC2DF; pc: Handle[Geom2dCurve]; f2d: float;
           l2d: float; tol: float) {.importcpp: "SetPC",
                                 header: "TopOpeBRepTool_C2DF.hxx".}
proc setFace*(this: var TopOpeBRepToolC2DF; f: TopoDS_Face) {.importcpp: "SetFace",
    header: "TopOpeBRepTool_C2DF.hxx".}
proc pc*(this: TopOpeBRepToolC2DF; f2d: var float; l2d: var float; tol: var float): Handle[
    Geom2dCurve] {.noSideEffect, importcpp: "PC", header: "TopOpeBRepTool_C2DF.hxx".}
proc face*(this: TopOpeBRepToolC2DF): TopoDS_Face {.noSideEffect, importcpp: "Face",
    header: "TopOpeBRepTool_C2DF.hxx".}
proc isPC*(this: TopOpeBRepToolC2DF; pc: Handle[Geom2dCurve]): bool {.noSideEffect,
    importcpp: "IsPC", header: "TopOpeBRepTool_C2DF.hxx".}
proc isFace*(this: TopOpeBRepToolC2DF; f: TopoDS_Face): bool {.noSideEffect,
    importcpp: "IsFace", header: "TopOpeBRepTool_C2DF.hxx".}
