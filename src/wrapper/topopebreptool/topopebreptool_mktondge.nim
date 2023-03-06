import ../gp/gp_types
import topopebreptool_types
import ../toptools/toptools_types
import ../topods/topods_types





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



proc newTopOpeBRepToolMkTondgE*(): TopOpeBRepToolMkTondgE {.cdecl, constructor,
    importcpp: "TopOpeBRepTool_mkTondgE(@)", header: "TopOpeBRepTool_mkTondgE.hxx".}
proc initialize*(this: var TopOpeBRepToolMkTondgE; dgE: TopoDS_Edge; f: TopoDS_Face;
                uvi: gp_Pnt2d; fi: TopoDS_Face): bool {.cdecl, importcpp: "Initialize",
    header: "TopOpeBRepTool_mkTondgE.hxx".}
proc setclE*(this: var TopOpeBRepToolMkTondgE; clE: TopoDS_Edge): bool {.cdecl,
    importcpp: "SetclE", header: "TopOpeBRepTool_mkTondgE.hxx".}
proc isT2d*(this: TopOpeBRepToolMkTondgE): bool {.noSideEffect, cdecl,
    importcpp: "IsT2d", header: "TopOpeBRepTool_mkTondgE.hxx".}
proc setRest*(this: var TopOpeBRepToolMkTondgE; pari: cfloat; ei: TopoDS_Edge): bool {.
    cdecl, importcpp: "SetRest", header: "TopOpeBRepTool_mkTondgE.hxx".}
proc getAllRest*(this: var TopOpeBRepToolMkTondgE; lEi: var TopToolsListOfShape): cint {.
    cdecl, importcpp: "GetAllRest", header: "TopOpeBRepTool_mkTondgE.hxx".}
proc mkTonE*(this: var TopOpeBRepToolMkTondgE; mkT: var cint; par1: var cfloat;
            par2: var cfloat): bool {.cdecl, importcpp: "MkTonE", header: "TopOpeBRepTool_mkTondgE.hxx".}
proc mkTonE*(this: var TopOpeBRepToolMkTondgE; ei: TopoDS_Edge; mkT: var cint;
            par1: var cfloat; par2: var cfloat): bool {.cdecl, importcpp: "MkTonE",
    header: "TopOpeBRepTool_mkTondgE.hxx".}


