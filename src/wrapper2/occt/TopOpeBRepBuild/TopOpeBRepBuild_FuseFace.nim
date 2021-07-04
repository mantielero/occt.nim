##  Created on: 1998-07-28
##  Created by: LECLERE Florence
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TopTools/TopTools_ListOfShape,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

type
  TopOpeBRepBuild_FuseFace* {.importcpp: "TopOpeBRepBuild_FuseFace",
                             header: "TopOpeBRepBuild_FuseFace.hxx", bycopy.} = object


proc constructTopOpeBRepBuild_FuseFace*(): TopOpeBRepBuild_FuseFace {.constructor,
    importcpp: "TopOpeBRepBuild_FuseFace(@)",
    header: "TopOpeBRepBuild_FuseFace.hxx".}
proc constructTopOpeBRepBuild_FuseFace*(LIF: TopTools_ListOfShape;
                                       LRF: TopTools_ListOfShape;
                                       CXM: Standard_Integer): TopOpeBRepBuild_FuseFace {.
    constructor, importcpp: "TopOpeBRepBuild_FuseFace(@)",
    header: "TopOpeBRepBuild_FuseFace.hxx".}
proc Init*(this: var TopOpeBRepBuild_FuseFace; LIF: TopTools_ListOfShape;
          LRF: TopTools_ListOfShape; CXM: Standard_Integer) {.importcpp: "Init",
    header: "TopOpeBRepBuild_FuseFace.hxx".}
proc PerformFace*(this: var TopOpeBRepBuild_FuseFace) {.importcpp: "PerformFace",
    header: "TopOpeBRepBuild_FuseFace.hxx".}
proc PerformEdge*(this: var TopOpeBRepBuild_FuseFace) {.importcpp: "PerformEdge",
    header: "TopOpeBRepBuild_FuseFace.hxx".}
proc ClearEdge*(this: var TopOpeBRepBuild_FuseFace) {.importcpp: "ClearEdge",
    header: "TopOpeBRepBuild_FuseFace.hxx".}
proc ClearVertex*(this: var TopOpeBRepBuild_FuseFace) {.importcpp: "ClearVertex",
    header: "TopOpeBRepBuild_FuseFace.hxx".}
proc IsDone*(this: TopOpeBRepBuild_FuseFace): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "TopOpeBRepBuild_FuseFace.hxx".}
proc IsModified*(this: TopOpeBRepBuild_FuseFace): Standard_Boolean {.noSideEffect,
    importcpp: "IsModified", header: "TopOpeBRepBuild_FuseFace.hxx".}
proc LFuseFace*(this: TopOpeBRepBuild_FuseFace): TopTools_ListOfShape {.
    noSideEffect, importcpp: "LFuseFace", header: "TopOpeBRepBuild_FuseFace.hxx".}
proc LInternEdge*(this: TopOpeBRepBuild_FuseFace): TopTools_ListOfShape {.
    noSideEffect, importcpp: "LInternEdge", header: "TopOpeBRepBuild_FuseFace.hxx".}
proc LExternEdge*(this: TopOpeBRepBuild_FuseFace): TopTools_ListOfShape {.
    noSideEffect, importcpp: "LExternEdge", header: "TopOpeBRepBuild_FuseFace.hxx".}
proc LModifEdge*(this: TopOpeBRepBuild_FuseFace): TopTools_ListOfShape {.
    noSideEffect, importcpp: "LModifEdge", header: "TopOpeBRepBuild_FuseFace.hxx".}
proc LInternVertex*(this: TopOpeBRepBuild_FuseFace): TopTools_ListOfShape {.
    noSideEffect, importcpp: "LInternVertex",
    header: "TopOpeBRepBuild_FuseFace.hxx".}
proc LExternVertex*(this: TopOpeBRepBuild_FuseFace): TopTools_ListOfShape {.
    noSideEffect, importcpp: "LExternVertex",
    header: "TopOpeBRepBuild_FuseFace.hxx".}
proc LModifVertex*(this: TopOpeBRepBuild_FuseFace): TopTools_ListOfShape {.
    noSideEffect, importcpp: "LModifVertex", header: "TopOpeBRepBuild_FuseFace.hxx".}