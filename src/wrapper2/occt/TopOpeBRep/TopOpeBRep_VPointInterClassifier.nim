##  Created on: 1993-11-17
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../BRepClass/BRepClass_FaceClassifier,
  ../TopAbs/TopAbs_State, ../TopoDS/TopoDS_Shape, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRep_VPointInter"
discard "forward decl of TopOpeBRep_PointClassifier"
type
  TopOpeBRep_VPointInterClassifier* {.importcpp: "TopOpeBRep_VPointInterClassifier", header: "TopOpeBRep_VPointInterClassifier.hxx",
                                     bycopy.} = object


proc constructTopOpeBRep_VPointInterClassifier*(): TopOpeBRep_VPointInterClassifier {.
    constructor, importcpp: "TopOpeBRep_VPointInterClassifier(@)",
    header: "TopOpeBRep_VPointInterClassifier.hxx".}
proc VPointPosition*(this: var TopOpeBRep_VPointInterClassifier; F: TopoDS_Shape;
                    VP: var TopOpeBRep_VPointInter; ShapeIndex: Standard_Integer;
                    PC: var TopOpeBRep_PointClassifier;
                    AssumeINON: Standard_Boolean; Tol: Standard_Real): TopAbs_State {.
    importcpp: "VPointPosition", header: "TopOpeBRep_VPointInterClassifier.hxx".}
proc Edge*(this: TopOpeBRep_VPointInterClassifier): TopoDS_Shape {.noSideEffect,
    importcpp: "Edge", header: "TopOpeBRep_VPointInterClassifier.hxx".}
proc EdgeParameter*(this: TopOpeBRep_VPointInterClassifier): Standard_Real {.
    noSideEffect, importcpp: "EdgeParameter",
    header: "TopOpeBRep_VPointInterClassifier.hxx".}