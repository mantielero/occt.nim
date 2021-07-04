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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, TopOpeBRepTool_PSoClassif,
  ../TopTools/TopTools_IndexedDataMapOfShapeAddress, ../TopAbs/TopAbs_State,
  ../TopoDS/TopoDS_Shell, ../TopoDS/TopoDS_Solid, ../BRep/BRep_Builder,
  ../Standard/Standard_Real

discard "forward decl of TopoDS_Solid"
discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Shell"
type
  TopOpeBRepTool_SolidClassifier* {.importcpp: "TopOpeBRepTool_SolidClassifier", header: "TopOpeBRepTool_SolidClassifier.hxx",
                                   bycopy.} = object


proc constructTopOpeBRepTool_SolidClassifier*(): TopOpeBRepTool_SolidClassifier {.
    constructor, importcpp: "TopOpeBRepTool_SolidClassifier(@)",
    header: "TopOpeBRepTool_SolidClassifier.hxx".}
proc Clear*(this: var TopOpeBRepTool_SolidClassifier) {.importcpp: "Clear",
    header: "TopOpeBRepTool_SolidClassifier.hxx".}
proc destroyTopOpeBRepTool_SolidClassifier*(
    this: var TopOpeBRepTool_SolidClassifier) {.
    importcpp: "#.~TopOpeBRepTool_SolidClassifier()",
    header: "TopOpeBRepTool_SolidClassifier.hxx".}
proc LoadSolid*(this: var TopOpeBRepTool_SolidClassifier; S: TopoDS_Solid) {.
    importcpp: "LoadSolid", header: "TopOpeBRepTool_SolidClassifier.hxx".}
proc Classify*(this: var TopOpeBRepTool_SolidClassifier; S: TopoDS_Solid; P: gp_Pnt;
              Tol: Standard_Real): TopAbs_State {.importcpp: "Classify",
    header: "TopOpeBRepTool_SolidClassifier.hxx".}
proc LoadShell*(this: var TopOpeBRepTool_SolidClassifier; S: TopoDS_Shell) {.
    importcpp: "LoadShell", header: "TopOpeBRepTool_SolidClassifier.hxx".}
proc Classify*(this: var TopOpeBRepTool_SolidClassifier; S: TopoDS_Shell; P: gp_Pnt;
              Tol: Standard_Real): TopAbs_State {.importcpp: "Classify",
    header: "TopOpeBRepTool_SolidClassifier.hxx".}
proc State*(this: TopOpeBRepTool_SolidClassifier): TopAbs_State {.noSideEffect,
    importcpp: "State", header: "TopOpeBRepTool_SolidClassifier.hxx".}