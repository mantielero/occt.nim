##  Created on: 1997-04-17
##  Created by: Christophe MARION
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../TopAbs/TopAbs_Orientation

discard "forward decl of HLRAlgo_WiresBlock"
discard "forward decl of HLRAlgo_EdgesBlock"
discard "forward decl of HLRBRep_FaceData"
type
  HLRBRep_FaceIterator* {.importcpp: "HLRBRep_FaceIterator",
                         header: "HLRBRep_FaceIterator.hxx", bycopy.} = object


proc constructHLRBRep_FaceIterator*(): HLRBRep_FaceIterator {.constructor,
    importcpp: "HLRBRep_FaceIterator(@)", header: "HLRBRep_FaceIterator.hxx".}
proc InitEdge*(this: var HLRBRep_FaceIterator; fd: var HLRBRep_FaceData) {.
    importcpp: "InitEdge", header: "HLRBRep_FaceIterator.hxx".}
proc MoreEdge*(this: HLRBRep_FaceIterator): Standard_Boolean {.noSideEffect,
    importcpp: "MoreEdge", header: "HLRBRep_FaceIterator.hxx".}
proc NextEdge*(this: var HLRBRep_FaceIterator) {.importcpp: "NextEdge",
    header: "HLRBRep_FaceIterator.hxx".}
proc BeginningOfWire*(this: HLRBRep_FaceIterator): Standard_Boolean {.noSideEffect,
    importcpp: "BeginningOfWire", header: "HLRBRep_FaceIterator.hxx".}
proc EndOfWire*(this: HLRBRep_FaceIterator): Standard_Boolean {.noSideEffect,
    importcpp: "EndOfWire", header: "HLRBRep_FaceIterator.hxx".}
proc SkipWire*(this: var HLRBRep_FaceIterator) {.importcpp: "SkipWire",
    header: "HLRBRep_FaceIterator.hxx".}
proc Wire*(this: HLRBRep_FaceIterator): handle[HLRAlgo_EdgesBlock] {.noSideEffect,
    importcpp: "Wire", header: "HLRBRep_FaceIterator.hxx".}
proc Edge*(this: HLRBRep_FaceIterator): Standard_Integer {.noSideEffect,
    importcpp: "Edge", header: "HLRBRep_FaceIterator.hxx".}
proc Orientation*(this: HLRBRep_FaceIterator): TopAbs_Orientation {.noSideEffect,
    importcpp: "Orientation", header: "HLRBRep_FaceIterator.hxx".}
proc OutLine*(this: HLRBRep_FaceIterator): Standard_Boolean {.noSideEffect,
    importcpp: "OutLine", header: "HLRBRep_FaceIterator.hxx".}
proc Internal*(this: HLRBRep_FaceIterator): Standard_Boolean {.noSideEffect,
    importcpp: "Internal", header: "HLRBRep_FaceIterator.hxx".}
proc Double*(this: HLRBRep_FaceIterator): Standard_Boolean {.noSideEffect,
    importcpp: "Double", header: "HLRBRep_FaceIterator.hxx".}
proc IsoLine*(this: HLRBRep_FaceIterator): Standard_Boolean {.noSideEffect,
    importcpp: "IsoLine", header: "HLRBRep_FaceIterator.hxx".}