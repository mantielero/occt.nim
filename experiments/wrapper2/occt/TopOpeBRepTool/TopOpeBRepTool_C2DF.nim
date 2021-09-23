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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real, ../TopoDS/TopoDS_Face,
  ../Standard/Standard_Boolean

discard "forward decl of Geom2d_Curve"
discard "forward decl of TopoDS_Face"
type
  TopOpeBRepTool_C2DF* {.importcpp: "TopOpeBRepTool_C2DF",
                        header: "TopOpeBRepTool_C2DF.hxx", bycopy.} = object


proc constructTopOpeBRepTool_C2DF*(): TopOpeBRepTool_C2DF {.constructor,
    importcpp: "TopOpeBRepTool_C2DF(@)", header: "TopOpeBRepTool_C2DF.hxx".}
proc constructTopOpeBRepTool_C2DF*(PC: handle[Geom2d_Curve]; f2d: Standard_Real;
                                  l2d: Standard_Real; tol: Standard_Real;
                                  F: TopoDS_Face): TopOpeBRepTool_C2DF {.
    constructor, importcpp: "TopOpeBRepTool_C2DF(@)",
    header: "TopOpeBRepTool_C2DF.hxx".}
proc SetPC*(this: var TopOpeBRepTool_C2DF; PC: handle[Geom2d_Curve];
           f2d: Standard_Real; l2d: Standard_Real; tol: Standard_Real) {.
    importcpp: "SetPC", header: "TopOpeBRepTool_C2DF.hxx".}
proc SetFace*(this: var TopOpeBRepTool_C2DF; F: TopoDS_Face) {.importcpp: "SetFace",
    header: "TopOpeBRepTool_C2DF.hxx".}
proc PC*(this: TopOpeBRepTool_C2DF; f2d: var Standard_Real; l2d: var Standard_Real;
        tol: var Standard_Real): handle[Geom2d_Curve] {.noSideEffect,
    importcpp: "PC", header: "TopOpeBRepTool_C2DF.hxx".}
proc Face*(this: TopOpeBRepTool_C2DF): TopoDS_Face {.noSideEffect, importcpp: "Face",
    header: "TopOpeBRepTool_C2DF.hxx".}
proc IsPC*(this: TopOpeBRepTool_C2DF; PC: handle[Geom2d_Curve]): Standard_Boolean {.
    noSideEffect, importcpp: "IsPC", header: "TopOpeBRepTool_C2DF.hxx".}
proc IsFace*(this: TopOpeBRepTool_C2DF; F: TopoDS_Face): Standard_Boolean {.
    noSideEffect, importcpp: "IsFace", header: "TopOpeBRepTool_C2DF.hxx".}