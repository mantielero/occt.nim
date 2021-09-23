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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Edge, ../TopoDS/TopoDS_Face,
  ../gp/gp_Dir, ../gp/gp_Pnt2d, ../Standard/Standard_Boolean,
  ../TopTools/TopTools_DataMapOfShapeReal, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../TopTools/TopTools_ListOfShape

discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt2d"
type
  TopOpeBRepTool_mkTondgE* {.importcpp: "TopOpeBRepTool_mkTondgE",
                            header: "TopOpeBRepTool_mkTondgE.hxx", bycopy.} = object


proc constructTopOpeBRepTool_mkTondgE*(): TopOpeBRepTool_mkTondgE {.constructor,
    importcpp: "TopOpeBRepTool_mkTondgE(@)", header: "TopOpeBRepTool_mkTondgE.hxx".}
proc Initialize*(this: var TopOpeBRepTool_mkTondgE; dgE: TopoDS_Edge; F: TopoDS_Face;
                uvi: gp_Pnt2d; Fi: TopoDS_Face): Standard_Boolean {.
    importcpp: "Initialize", header: "TopOpeBRepTool_mkTondgE.hxx".}
proc SetclE*(this: var TopOpeBRepTool_mkTondgE; clE: TopoDS_Edge): Standard_Boolean {.
    importcpp: "SetclE", header: "TopOpeBRepTool_mkTondgE.hxx".}
proc IsT2d*(this: TopOpeBRepTool_mkTondgE): Standard_Boolean {.noSideEffect,
    importcpp: "IsT2d", header: "TopOpeBRepTool_mkTondgE.hxx".}
proc SetRest*(this: var TopOpeBRepTool_mkTondgE; pari: Standard_Real; Ei: TopoDS_Edge): Standard_Boolean {.
    importcpp: "SetRest", header: "TopOpeBRepTool_mkTondgE.hxx".}
proc GetAllRest*(this: var TopOpeBRepTool_mkTondgE; lEi: var TopTools_ListOfShape): Standard_Integer {.
    importcpp: "GetAllRest", header: "TopOpeBRepTool_mkTondgE.hxx".}
proc MkTonE*(this: var TopOpeBRepTool_mkTondgE; mkT: var Standard_Integer;
            par1: var Standard_Real; par2: var Standard_Real): Standard_Boolean {.
    importcpp: "MkTonE", header: "TopOpeBRepTool_mkTondgE.hxx".}
proc MkTonE*(this: var TopOpeBRepTool_mkTondgE; Ei: TopoDS_Edge;
            mkT: var Standard_Integer; par1: var Standard_Real;
            par2: var Standard_Real): Standard_Boolean {.importcpp: "MkTonE",
    header: "TopOpeBRepTool_mkTondgE.hxx".}