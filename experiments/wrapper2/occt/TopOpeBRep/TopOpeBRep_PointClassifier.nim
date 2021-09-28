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

discard "forward decl of BRepTopAdaptor_TopolTool"
discard "forward decl of BRepAdaptor_HSurface"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt2d"
type
  TopOpeBRepPointClassifier* {.importcpp: "TopOpeBRep_PointClassifier",
                              header: "TopOpeBRep_PointClassifier.hxx", bycopy.} = object


proc constructTopOpeBRepPointClassifier*(): TopOpeBRepPointClassifier {.
    constructor, importcpp: "TopOpeBRep_PointClassifier(@)",
    header: "TopOpeBRep_PointClassifier.hxx".}
proc init*(this: var TopOpeBRepPointClassifier) {.importcpp: "Init",
    header: "TopOpeBRep_PointClassifier.hxx".}
proc load*(this: var TopOpeBRepPointClassifier; f: TopoDS_Face) {.importcpp: "Load",
    header: "TopOpeBRep_PointClassifier.hxx".}
proc classify*(this: var TopOpeBRepPointClassifier; f: TopoDS_Face; p: Pnt2d;
              tol: cfloat): TopAbsState {.importcpp: "Classify",
                                       header: "TopOpeBRep_PointClassifier.hxx".}
proc state*(this: TopOpeBRepPointClassifier): TopAbsState {.noSideEffect,
    importcpp: "State", header: "TopOpeBRep_PointClassifier.hxx".}

























