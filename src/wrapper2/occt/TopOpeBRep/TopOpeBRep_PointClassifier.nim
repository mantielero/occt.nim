##  Created on: 1995-12-07
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard_Handle, TopOpeBRep_DataMapOfTopolTool,
  ../TopAbs/TopAbs_State, ../Standard/Standard_Real

discard "forward decl of BRepTopAdaptor_TopolTool"
discard "forward decl of BRepAdaptor_HSurface"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt2d"
type
  TopOpeBRep_PointClassifier* {.importcpp: "TopOpeBRep_PointClassifier",
                               header: "TopOpeBRep_PointClassifier.hxx", bycopy.} = object


proc constructTopOpeBRep_PointClassifier*(): TopOpeBRep_PointClassifier {.
    constructor, importcpp: "TopOpeBRep_PointClassifier(@)",
    header: "TopOpeBRep_PointClassifier.hxx".}
proc Init*(this: var TopOpeBRep_PointClassifier) {.importcpp: "Init",
    header: "TopOpeBRep_PointClassifier.hxx".}
proc Load*(this: var TopOpeBRep_PointClassifier; F: TopoDS_Face) {.importcpp: "Load",
    header: "TopOpeBRep_PointClassifier.hxx".}
proc Classify*(this: var TopOpeBRep_PointClassifier; F: TopoDS_Face; P: gp_Pnt2d;
              Tol: Standard_Real): TopAbs_State {.importcpp: "Classify",
    header: "TopOpeBRep_PointClassifier.hxx".}
proc State*(this: TopOpeBRep_PointClassifier): TopAbs_State {.noSideEffect,
    importcpp: "State", header: "TopOpeBRep_PointClassifier.hxx".}