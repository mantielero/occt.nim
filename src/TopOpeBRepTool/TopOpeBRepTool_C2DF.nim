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


proc `new`*(this: var TopOpeBRepToolC2DF; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepTool_C2DF::operator new",
    header: "TopOpeBRepTool_C2DF.hxx".}
proc `delete`*(this: var TopOpeBRepToolC2DF; theAddress: pointer) {.
    importcpp: "TopOpeBRepTool_C2DF::operator delete",
    header: "TopOpeBRepTool_C2DF.hxx".}
proc `new[]`*(this: var TopOpeBRepToolC2DF; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepTool_C2DF::operator new[]",
    header: "TopOpeBRepTool_C2DF.hxx".}
proc `delete[]`*(this: var TopOpeBRepToolC2DF; theAddress: pointer) {.
    importcpp: "TopOpeBRepTool_C2DF::operator delete[]",
    header: "TopOpeBRepTool_C2DF.hxx".}
proc `new`*(this: var TopOpeBRepToolC2DF; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRepTool_C2DF::operator new",
    header: "TopOpeBRepTool_C2DF.hxx".}
proc `delete`*(this: var TopOpeBRepToolC2DF; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepTool_C2DF::operator delete",
    header: "TopOpeBRepTool_C2DF.hxx".}
proc constructTopOpeBRepToolC2DF*(): TopOpeBRepToolC2DF {.constructor,
    importcpp: "TopOpeBRepTool_C2DF(@)", header: "TopOpeBRepTool_C2DF.hxx".}
proc constructTopOpeBRepToolC2DF*(pc: Handle[Geom2dCurve]; f2d: StandardReal;
                                 l2d: StandardReal; tol: StandardReal;
                                 f: TopoDS_Face): TopOpeBRepToolC2DF {.constructor,
    importcpp: "TopOpeBRepTool_C2DF(@)", header: "TopOpeBRepTool_C2DF.hxx".}
proc setPC*(this: var TopOpeBRepToolC2DF; pc: Handle[Geom2dCurve]; f2d: StandardReal;
           l2d: StandardReal; tol: StandardReal) {.importcpp: "SetPC",
    header: "TopOpeBRepTool_C2DF.hxx".}
proc setFace*(this: var TopOpeBRepToolC2DF; f: TopoDS_Face) {.importcpp: "SetFace",
    header: "TopOpeBRepTool_C2DF.hxx".}
proc pc*(this: TopOpeBRepToolC2DF; f2d: var StandardReal; l2d: var StandardReal;
        tol: var StandardReal): Handle[Geom2dCurve] {.noSideEffect, importcpp: "PC",
    header: "TopOpeBRepTool_C2DF.hxx".}
proc face*(this: TopOpeBRepToolC2DF): TopoDS_Face {.noSideEffect, importcpp: "Face",
    header: "TopOpeBRepTool_C2DF.hxx".}
proc isPC*(this: TopOpeBRepToolC2DF; pc: Handle[Geom2dCurve]): StandardBoolean {.
    noSideEffect, importcpp: "IsPC", header: "TopOpeBRepTool_C2DF.hxx".}
proc isFace*(this: TopOpeBRepToolC2DF; f: TopoDS_Face): StandardBoolean {.
    noSideEffect, importcpp: "IsFace", header: "TopOpeBRepTool_C2DF.hxx".}