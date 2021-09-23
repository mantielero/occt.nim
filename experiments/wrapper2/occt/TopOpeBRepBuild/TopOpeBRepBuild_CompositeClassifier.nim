##  Created on: 1996-01-05
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
  ../Standard/Standard_Handle, ../Standard/Standard_Address,
  TopOpeBRepBuild_LoopClassifier, ../TopAbs/TopAbs_State,
  ../Standard/Standard_Boolean

discard "forward decl of TopOpeBRepBuild_BlockBuilder"
discard "forward decl of TopOpeBRepBuild_Loop"
discard "forward decl of TopoDS_Shape"
type
  TopOpeBRepBuild_CompositeClassifier* {.importcpp: "TopOpeBRepBuild_CompositeClassifier", header: "TopOpeBRepBuild_CompositeClassifier.hxx",
                                        bycopy.} = object of TopOpeBRepBuild_LoopClassifier


proc Compare*(this: var TopOpeBRepBuild_CompositeClassifier;
             L1: handle[TopOpeBRepBuild_Loop]; L2: handle[TopOpeBRepBuild_Loop]): TopAbs_State {.
    importcpp: "Compare", header: "TopOpeBRepBuild_CompositeClassifier.hxx".}
proc CompareShapes*(this: var TopOpeBRepBuild_CompositeClassifier; B1: TopoDS_Shape;
                   B2: TopoDS_Shape): TopAbs_State {.importcpp: "CompareShapes",
    header: "TopOpeBRepBuild_CompositeClassifier.hxx".}
proc CompareElementToShape*(this: var TopOpeBRepBuild_CompositeClassifier;
                           E: TopoDS_Shape; B: TopoDS_Shape): TopAbs_State {.
    importcpp: "CompareElementToShape",
    header: "TopOpeBRepBuild_CompositeClassifier.hxx".}
proc ResetShape*(this: var TopOpeBRepBuild_CompositeClassifier; B: TopoDS_Shape) {.
    importcpp: "ResetShape", header: "TopOpeBRepBuild_CompositeClassifier.hxx".}
proc ResetElement*(this: var TopOpeBRepBuild_CompositeClassifier; E: TopoDS_Shape) {.
    importcpp: "ResetElement", header: "TopOpeBRepBuild_CompositeClassifier.hxx".}
proc CompareElement*(this: var TopOpeBRepBuild_CompositeClassifier; E: TopoDS_Shape): Standard_Boolean {.
    importcpp: "CompareElement", header: "TopOpeBRepBuild_CompositeClassifier.hxx".}
proc State*(this: var TopOpeBRepBuild_CompositeClassifier): TopAbs_State {.
    importcpp: "State", header: "TopOpeBRepBuild_CompositeClassifier.hxx".}