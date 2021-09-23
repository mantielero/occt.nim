##  Created on: 1993-06-17
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
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Edge,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real,
  ../TopAbs/TopAbs_Orientation, ../Standard/Standard_Integer,
  TopOpeBRepBuild_LoopClassifier, ../TopAbs/TopAbs_State

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepBuild_Loop"
type
  TopOpeBRepBuild_PaveClassifier* {.importcpp: "TopOpeBRepBuild_PaveClassifier", header: "TopOpeBRepBuild_PaveClassifier.hxx",
                                   bycopy.} = object of TopOpeBRepBuild_LoopClassifier ##
                                                                                  ## !
                                                                                  ## Create
                                                                                  ## a
                                                                                  ## Pave
                                                                                  ## classifier
                                                                                  ## to
                                                                                  ## compare
                                                                                  ## vertices
                                                                                  ## on
                                                                                  ## edge
                                                                                  ## <E>.


proc constructTopOpeBRepBuild_PaveClassifier*(E: TopoDS_Shape): TopOpeBRepBuild_PaveClassifier {.
    constructor, importcpp: "TopOpeBRepBuild_PaveClassifier(@)",
    header: "TopOpeBRepBuild_PaveClassifier.hxx".}
proc Compare*(this: var TopOpeBRepBuild_PaveClassifier;
             L1: handle[TopOpeBRepBuild_Loop]; L2: handle[TopOpeBRepBuild_Loop]): TopAbs_State {.
    importcpp: "Compare", header: "TopOpeBRepBuild_PaveClassifier.hxx".}
proc SetFirstParameter*(this: var TopOpeBRepBuild_PaveClassifier; P: Standard_Real) {.
    importcpp: "SetFirstParameter", header: "TopOpeBRepBuild_PaveClassifier.hxx".}
proc ClosedVertices*(this: var TopOpeBRepBuild_PaveClassifier; B: Standard_Boolean) {.
    importcpp: "ClosedVertices", header: "TopOpeBRepBuild_PaveClassifier.hxx".}
proc AdjustCase*(p1: Standard_Real; o: TopAbs_Orientation; first: Standard_Real;
                period: Standard_Real; tol: Standard_Real; cas: var Standard_Integer): Standard_Real {.
    importcpp: "TopOpeBRepBuild_PaveClassifier::AdjustCase(@)",
    header: "TopOpeBRepBuild_PaveClassifier.hxx".}