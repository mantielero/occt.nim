import ../../tkg3d/topabs/topabs_types
import ../../tkernel/standard/standard_types
import ../../tkbrep/topods/topods_types
import topopebrepbuild_types



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



proc newTopOpeBRepBuildPaveClassifier*(e: TopoDS_Shape): TopOpeBRepBuildPaveClassifier {.
    cdecl, constructor, importcpp: "TopOpeBRepBuild_PaveClassifier(@)",
    header: "TopOpeBRepBuild_PaveClassifier.hxx".}
proc compare*(this: var TopOpeBRepBuildPaveClassifier;
             l1: Handle[TopOpeBRepBuildLoop]; l2: Handle[TopOpeBRepBuildLoop]): TopAbsState {.
    cdecl, importcpp: "Compare", header: "TopOpeBRepBuild_PaveClassifier.hxx".}
proc setFirstParameter*(this: var TopOpeBRepBuildPaveClassifier; p: cfloat) {.cdecl,
    importcpp: "SetFirstParameter", header: "TopOpeBRepBuild_PaveClassifier.hxx".}
proc closedVertices*(this: var TopOpeBRepBuildPaveClassifier; b: bool) {.cdecl,
    importcpp: "ClosedVertices", header: "TopOpeBRepBuild_PaveClassifier.hxx".}
proc adjustCase*(p1: cfloat; o: TopAbsOrientation; first: cfloat; period: cfloat;
                tol: cfloat; cas: var cint): cfloat {.cdecl,
    importcpp: "TopOpeBRepBuild_PaveClassifier::AdjustCase(@)", header: "TopOpeBRepBuild_PaveClassifier.hxx".}

