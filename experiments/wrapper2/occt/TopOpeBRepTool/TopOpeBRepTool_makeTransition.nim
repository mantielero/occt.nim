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

discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt2d"
type
  TopOpeBRepToolMakeTransition* {.importcpp: "TopOpeBRepTool_makeTransition",
                                 header: "TopOpeBRepTool_makeTransition.hxx",
                                 bycopy.} = object


proc constructTopOpeBRepToolMakeTransition*(): TopOpeBRepToolMakeTransition {.
    constructor, importcpp: "TopOpeBRepTool_makeTransition(@)",
    header: "TopOpeBRepTool_makeTransition.hxx".}
proc initialize*(this: var TopOpeBRepToolMakeTransition; e: TopoDS_Edge; pbef: float;
                paft: float; parE: float; fs: TopoDS_Face; uv: Pnt2d; factor: float): bool {.
    importcpp: "Initialize", header: "TopOpeBRepTool_makeTransition.hxx".}
proc setfactor*(this: var TopOpeBRepToolMakeTransition; factor: float) {.
    importcpp: "Setfactor", header: "TopOpeBRepTool_makeTransition.hxx".}
proc getfactor*(this: TopOpeBRepToolMakeTransition): float {.noSideEffect,
    importcpp: "Getfactor", header: "TopOpeBRepTool_makeTransition.hxx".}
proc isT2d*(this: TopOpeBRepToolMakeTransition): bool {.noSideEffect,
    importcpp: "IsT2d", header: "TopOpeBRepTool_makeTransition.hxx".}
proc setRest*(this: var TopOpeBRepToolMakeTransition; es: TopoDS_Edge; parES: float): bool {.
    importcpp: "SetRest", header: "TopOpeBRepTool_makeTransition.hxx".}
proc hasRest*(this: TopOpeBRepToolMakeTransition): bool {.noSideEffect,
    importcpp: "HasRest", header: "TopOpeBRepTool_makeTransition.hxx".}
proc mkT2donE*(this: TopOpeBRepToolMakeTransition; stb: var TopAbsState;
              sta: var TopAbsState): bool {.noSideEffect, importcpp: "MkT2donE", header: "TopOpeBRepTool_makeTransition.hxx".}
proc mkT3onE*(this: TopOpeBRepToolMakeTransition; stb: var TopAbsState;
             sta: var TopAbsState): bool {.noSideEffect, importcpp: "MkT3onE", header: "TopOpeBRepTool_makeTransition.hxx".}
proc mkT3dproj*(this: TopOpeBRepToolMakeTransition; stb: var TopAbsState;
               sta: var TopAbsState): bool {.noSideEffect, importcpp: "MkT3dproj",
    header: "TopOpeBRepTool_makeTransition.hxx".}
proc mkTonE*(this: var TopOpeBRepToolMakeTransition; stb: var TopAbsState;
            sta: var TopAbsState): bool {.importcpp: "MkTonE", header: "TopOpeBRepTool_makeTransition.hxx".}
