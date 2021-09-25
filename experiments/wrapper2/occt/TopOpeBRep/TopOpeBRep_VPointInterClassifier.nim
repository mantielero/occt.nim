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

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRep_VPointInter"
discard "forward decl of TopOpeBRep_PointClassifier"
type
  TopOpeBRepVPointInterClassifier* {.importcpp: "TopOpeBRep_VPointInterClassifier", header: "TopOpeBRep_VPointInterClassifier.hxx",
                                    bycopy.} = object


proc constructTopOpeBRepVPointInterClassifier*(): TopOpeBRepVPointInterClassifier {.
    constructor, importcpp: "TopOpeBRep_VPointInterClassifier(@)",
    header: "TopOpeBRep_VPointInterClassifier.hxx".}
proc vPointPosition*(this: var TopOpeBRepVPointInterClassifier; f: TopoDS_Shape;
                    vp: var TopOpeBRepVPointInter; shapeIndex: int;
                    pc: var TopOpeBRepPointClassifier; assumeINON: bool; tol: float): TopAbsState {.
    importcpp: "VPointPosition", header: "TopOpeBRep_VPointInterClassifier.hxx".}
proc edge*(this: TopOpeBRepVPointInterClassifier): TopoDS_Shape {.noSideEffect,
    importcpp: "Edge", header: "TopOpeBRep_VPointInterClassifier.hxx".}
proc edgeParameter*(this: TopOpeBRepVPointInterClassifier): float {.noSideEffect,
    importcpp: "EdgeParameter", header: "TopOpeBRep_VPointInterClassifier.hxx".}
