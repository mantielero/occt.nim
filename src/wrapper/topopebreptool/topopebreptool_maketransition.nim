import ../gp/gp_types
import ../topabs/topabs_types
import topopebreptool_types
import ../topods/topods_types





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



proc newTopOpeBRepToolMakeTransition*(): TopOpeBRepToolMakeTransition {.cdecl,
    constructor, importcpp: "TopOpeBRepTool_makeTransition(@)", header: "TopOpeBRepTool_makeTransition.hxx".}
proc initialize*(this: var TopOpeBRepToolMakeTransition; e: TopoDS_Edge; pbef: cfloat;
                paft: cfloat; parE: cfloat; fs: TopoDS_Face; uv: gp_Pnt2d; factor: cfloat): bool {.
    cdecl, importcpp: "Initialize", header: "TopOpeBRepTool_makeTransition.hxx".}
proc setfactor*(this: var TopOpeBRepToolMakeTransition; factor: cfloat) {.cdecl,
    importcpp: "Setfactor", header: "TopOpeBRepTool_makeTransition.hxx".}
proc getfactor*(this: TopOpeBRepToolMakeTransition): cfloat {.noSideEffect, cdecl,
    importcpp: "Getfactor", header: "TopOpeBRepTool_makeTransition.hxx".}
proc isT2d*(this: TopOpeBRepToolMakeTransition): bool {.noSideEffect, cdecl,
    importcpp: "IsT2d", header: "TopOpeBRepTool_makeTransition.hxx".}
proc setRest*(this: var TopOpeBRepToolMakeTransition; es: TopoDS_Edge; parES: cfloat): bool {.
    cdecl, importcpp: "SetRest", header: "TopOpeBRepTool_makeTransition.hxx".}
proc hasRest*(this: TopOpeBRepToolMakeTransition): bool {.noSideEffect, cdecl,
    importcpp: "HasRest", header: "TopOpeBRepTool_makeTransition.hxx".}
proc mkT2donE*(this: TopOpeBRepToolMakeTransition; stb: var TopAbsState;
              sta: var TopAbsState): bool {.noSideEffect, cdecl,
                                        importcpp: "MkT2donE", header: "TopOpeBRepTool_makeTransition.hxx".}
proc mkT3onE*(this: TopOpeBRepToolMakeTransition; stb: var TopAbsState;
             sta: var TopAbsState): bool {.noSideEffect, cdecl, importcpp: "MkT3onE",
                                       header: "TopOpeBRepTool_makeTransition.hxx".}
proc mkT3dproj*(this: TopOpeBRepToolMakeTransition; stb: var TopAbsState;
               sta: var TopAbsState): bool {.noSideEffect, cdecl,
    importcpp: "MkT3dproj", header: "TopOpeBRepTool_makeTransition.hxx".}
proc mkTonE*(this: var TopOpeBRepToolMakeTransition; stb: var TopAbsState;
            sta: var TopAbsState): bool {.cdecl, importcpp: "MkTonE", header: "TopOpeBRepTool_makeTransition.hxx".}


