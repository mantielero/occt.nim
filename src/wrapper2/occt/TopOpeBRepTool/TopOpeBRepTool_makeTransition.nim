##  Created on: 1999-02-11
##  Created by: Xuan PHAM PHU
##  Copyright (c) 1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Edge, ../Standard/Standard_Real,
  ../TopoDS/TopoDS_Face, ../gp/gp_Pnt2d, ../Standard/Standard_Boolean,
  ../TopAbs/TopAbs_State

discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt2d"
type
  TopOpeBRepTool_makeTransition* {.importcpp: "TopOpeBRepTool_makeTransition",
                                  header: "TopOpeBRepTool_makeTransition.hxx",
                                  bycopy.} = object


proc constructTopOpeBRepTool_makeTransition*(): TopOpeBRepTool_makeTransition {.
    constructor, importcpp: "TopOpeBRepTool_makeTransition(@)",
    header: "TopOpeBRepTool_makeTransition.hxx".}
proc Initialize*(this: var TopOpeBRepTool_makeTransition; E: TopoDS_Edge;
                pbef: Standard_Real; paft: Standard_Real; parE: Standard_Real;
                FS: TopoDS_Face; uv: gp_Pnt2d; factor: Standard_Real): Standard_Boolean {.
    importcpp: "Initialize", header: "TopOpeBRepTool_makeTransition.hxx".}
proc Setfactor*(this: var TopOpeBRepTool_makeTransition; factor: Standard_Real) {.
    importcpp: "Setfactor", header: "TopOpeBRepTool_makeTransition.hxx".}
proc Getfactor*(this: TopOpeBRepTool_makeTransition): Standard_Real {.noSideEffect,
    importcpp: "Getfactor", header: "TopOpeBRepTool_makeTransition.hxx".}
proc IsT2d*(this: TopOpeBRepTool_makeTransition): Standard_Boolean {.noSideEffect,
    importcpp: "IsT2d", header: "TopOpeBRepTool_makeTransition.hxx".}
proc SetRest*(this: var TopOpeBRepTool_makeTransition; ES: TopoDS_Edge;
             parES: Standard_Real): Standard_Boolean {.importcpp: "SetRest",
    header: "TopOpeBRepTool_makeTransition.hxx".}
proc HasRest*(this: TopOpeBRepTool_makeTransition): Standard_Boolean {.noSideEffect,
    importcpp: "HasRest", header: "TopOpeBRepTool_makeTransition.hxx".}
proc MkT2donE*(this: TopOpeBRepTool_makeTransition; stb: var TopAbs_State;
              sta: var TopAbs_State): Standard_Boolean {.noSideEffect,
    importcpp: "MkT2donE", header: "TopOpeBRepTool_makeTransition.hxx".}
proc MkT3onE*(this: TopOpeBRepTool_makeTransition; stb: var TopAbs_State;
             sta: var TopAbs_State): Standard_Boolean {.noSideEffect,
    importcpp: "MkT3onE", header: "TopOpeBRepTool_makeTransition.hxx".}
proc MkT3dproj*(this: TopOpeBRepTool_makeTransition; stb: var TopAbs_State;
               sta: var TopAbs_State): Standard_Boolean {.noSideEffect,
    importcpp: "MkT3dproj", header: "TopOpeBRepTool_makeTransition.hxx".}
proc MkTonE*(this: var TopOpeBRepTool_makeTransition; stb: var TopAbs_State;
            sta: var TopAbs_State): Standard_Boolean {.importcpp: "MkTonE",
    header: "TopOpeBRepTool_makeTransition.hxx".}