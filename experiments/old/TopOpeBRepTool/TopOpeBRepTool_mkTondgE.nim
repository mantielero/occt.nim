##  Created on: 1999-03-22
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
  TopOpeBRepToolMkTondgE* {.importcpp: "TopOpeBRepTool_mkTondgE",
                           header: "TopOpeBRepTool_mkTondgE.hxx", bycopy.} = object


proc `new`*(this: var TopOpeBRepToolMkTondgE; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepTool_mkTondgE::operator new",
    header: "TopOpeBRepTool_mkTondgE.hxx".}
proc `delete`*(this: var TopOpeBRepToolMkTondgE; theAddress: pointer) {.
    importcpp: "TopOpeBRepTool_mkTondgE::operator delete",
    header: "TopOpeBRepTool_mkTondgE.hxx".}
proc `new[]`*(this: var TopOpeBRepToolMkTondgE; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepTool_mkTondgE::operator new[]",
    header: "TopOpeBRepTool_mkTondgE.hxx".}
proc `delete[]`*(this: var TopOpeBRepToolMkTondgE; theAddress: pointer) {.
    importcpp: "TopOpeBRepTool_mkTondgE::operator delete[]",
    header: "TopOpeBRepTool_mkTondgE.hxx".}
proc `new`*(this: var TopOpeBRepToolMkTondgE; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRepTool_mkTondgE::operator new",
    header: "TopOpeBRepTool_mkTondgE.hxx".}
proc `delete`*(this: var TopOpeBRepToolMkTondgE; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepTool_mkTondgE::operator delete",
    header: "TopOpeBRepTool_mkTondgE.hxx".}
proc constructTopOpeBRepToolMkTondgE*(): TopOpeBRepToolMkTondgE {.constructor,
    importcpp: "TopOpeBRepTool_mkTondgE(@)", header: "TopOpeBRepTool_mkTondgE.hxx".}
proc initialize*(this: var TopOpeBRepToolMkTondgE; dgE: TopoDS_Edge; f: TopoDS_Face;
                uvi: Pnt2d; fi: TopoDS_Face): StandardBoolean {.
    importcpp: "Initialize", header: "TopOpeBRepTool_mkTondgE.hxx".}
proc setclE*(this: var TopOpeBRepToolMkTondgE; clE: TopoDS_Edge): StandardBoolean {.
    importcpp: "SetclE", header: "TopOpeBRepTool_mkTondgE.hxx".}
proc isT2d*(this: TopOpeBRepToolMkTondgE): StandardBoolean {.noSideEffect,
    importcpp: "IsT2d", header: "TopOpeBRepTool_mkTondgE.hxx".}
proc setRest*(this: var TopOpeBRepToolMkTondgE; pari: StandardReal; ei: TopoDS_Edge): StandardBoolean {.
    importcpp: "SetRest", header: "TopOpeBRepTool_mkTondgE.hxx".}
proc getAllRest*(this: var TopOpeBRepToolMkTondgE; lEi: var TopToolsListOfShape): int {.
    importcpp: "GetAllRest", header: "TopOpeBRepTool_mkTondgE.hxx".}
proc mkTonE*(this: var TopOpeBRepToolMkTondgE; mkT: var int; par1: var StandardReal;
            par2: var StandardReal): StandardBoolean {.importcpp: "MkTonE",
    header: "TopOpeBRepTool_mkTondgE.hxx".}
proc mkTonE*(this: var TopOpeBRepToolMkTondgE; ei: TopoDS_Edge; mkT: var int;
            par1: var StandardReal; par2: var StandardReal): StandardBoolean {.
    importcpp: "MkTonE", header: "TopOpeBRepTool_mkTondgE.hxx".}