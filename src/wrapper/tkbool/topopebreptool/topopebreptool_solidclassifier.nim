import ../../tkmath/gp/gp_types
import ../../tkg3d/topabs/topabs_types
import topopebreptool_types
import ../../tkbrep/topods/topods_types





##  Created on: 1996-08-27
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1996-1999 Matra Datavision
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



proc newTopOpeBRepToolSolidClassifier*(): TopOpeBRepToolSolidClassifier {.cdecl,
    constructor, importcpp: "TopOpeBRepTool_SolidClassifier(@)", header: "TopOpeBRepTool_SolidClassifier.hxx".}
proc clear*(this: var TopOpeBRepToolSolidClassifier) {.cdecl, importcpp: "Clear",
    header: "TopOpeBRepTool_SolidClassifier.hxx".}
proc destroyTopOpeBRepToolSolidClassifier*(
    this: var TopOpeBRepToolSolidClassifier) {.cdecl,
    importcpp: "#.~TopOpeBRepTool_SolidClassifier()", header: "TopOpeBRepTool_SolidClassifier.hxx".}
proc loadSolid*(this: var TopOpeBRepToolSolidClassifier; s: TopoDS_Solid) {.cdecl,
    importcpp: "LoadSolid", header: "TopOpeBRepTool_SolidClassifier.hxx".}
proc classify*(this: var TopOpeBRepToolSolidClassifier; s: TopoDS_Solid; p: PntObj;
              tol: cfloat): TopAbsState {.cdecl, importcpp: "Classify", header: "TopOpeBRepTool_SolidClassifier.hxx".}
proc loadShell*(this: var TopOpeBRepToolSolidClassifier; s: TopoDS_Shell) {.cdecl,
    importcpp: "LoadShell", header: "TopOpeBRepTool_SolidClassifier.hxx".}
proc classify*(this: var TopOpeBRepToolSolidClassifier; s: TopoDS_Shell; p: PntObj;
              tol: cfloat): TopAbsState {.cdecl, importcpp: "Classify", header: "TopOpeBRepTool_SolidClassifier.hxx".}
proc state*(this: TopOpeBRepToolSolidClassifier): TopAbsState {.noSideEffect, cdecl,
    importcpp: "State", header: "TopOpeBRepTool_SolidClassifier.hxx".}


