##  Created on: 1993-03-03
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

discard "forward decl of TopOpeBRepBuild_Loop"
type
  TopOpeBRepBuildLoopClassifier* {.importcpp: "TopOpeBRepBuild_LoopClassifier",
                                  header: "TopOpeBRepBuild_LoopClassifier.hxx",
                                  bycopy.} = object


proc `new`*(this: var TopOpeBRepBuildLoopClassifier; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepBuild_LoopClassifier::operator new",
    header: "TopOpeBRepBuild_LoopClassifier.hxx".}
proc `delete`*(this: var TopOpeBRepBuildLoopClassifier; theAddress: pointer) {.
    importcpp: "TopOpeBRepBuild_LoopClassifier::operator delete",
    header: "TopOpeBRepBuild_LoopClassifier.hxx".}
proc `new[]`*(this: var TopOpeBRepBuildLoopClassifier; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepBuild_LoopClassifier::operator new[]",
    header: "TopOpeBRepBuild_LoopClassifier.hxx".}
proc `delete[]`*(this: var TopOpeBRepBuildLoopClassifier; theAddress: pointer) {.
    importcpp: "TopOpeBRepBuild_LoopClassifier::operator delete[]",
    header: "TopOpeBRepBuild_LoopClassifier.hxx".}
proc `new`*(this: var TopOpeBRepBuildLoopClassifier; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRepBuild_LoopClassifier::operator new",
    header: "TopOpeBRepBuild_LoopClassifier.hxx".}
proc `delete`*(this: var TopOpeBRepBuildLoopClassifier; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepBuild_LoopClassifier::operator delete",
    header: "TopOpeBRepBuild_LoopClassifier.hxx".}
proc destroyTopOpeBRepBuildLoopClassifier*(
    this: var TopOpeBRepBuildLoopClassifier) {.
    importcpp: "#.~TopOpeBRepBuild_LoopClassifier()",
    header: "TopOpeBRepBuild_LoopClassifier.hxx".}
proc compare*(this: var TopOpeBRepBuildLoopClassifier;
             l1: Handle[TopOpeBRepBuildLoop]; l2: Handle[TopOpeBRepBuildLoop]): TopAbsState {.
    importcpp: "Compare", header: "TopOpeBRepBuild_LoopClassifier.hxx".}