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

discard "forward decl of HLRAlgo_WiresBlock"
discard "forward decl of HLRAlgo_EdgesBlock"
discard "forward decl of HLRBRep_FaceData"
type
  HLRBRepFaceIterator* {.importcpp: "HLRBRep_FaceIterator",
                        header: "HLRBRep_FaceIterator.hxx", bycopy.} = object


proc constructHLRBRepFaceIterator*(): HLRBRepFaceIterator {.constructor,
    importcpp: "HLRBRep_FaceIterator(@)", header: "HLRBRep_FaceIterator.hxx".}
proc initEdge*(this: var HLRBRepFaceIterator; fd: var HLRBRepFaceData) {.
    importcpp: "InitEdge", header: "HLRBRep_FaceIterator.hxx".}
proc moreEdge*(this: HLRBRepFaceIterator): bool {.noSideEffect,
    importcpp: "MoreEdge", header: "HLRBRep_FaceIterator.hxx".}
proc nextEdge*(this: var HLRBRepFaceIterator) {.importcpp: "NextEdge",
    header: "HLRBRep_FaceIterator.hxx".}
proc beginningOfWire*(this: HLRBRepFaceIterator): bool {.noSideEffect,
    importcpp: "BeginningOfWire", header: "HLRBRep_FaceIterator.hxx".}
proc endOfWire*(this: HLRBRepFaceIterator): bool {.noSideEffect,
    importcpp: "EndOfWire", header: "HLRBRep_FaceIterator.hxx".}
proc skipWire*(this: var HLRBRepFaceIterator) {.importcpp: "SkipWire",
    header: "HLRBRep_FaceIterator.hxx".}
proc wire*(this: HLRBRepFaceIterator): Handle[HLRAlgoEdgesBlock] {.noSideEffect,
    importcpp: "Wire", header: "HLRBRep_FaceIterator.hxx".}
proc edge*(this: HLRBRepFaceIterator): int {.noSideEffect, importcpp: "Edge",
    header: "HLRBRep_FaceIterator.hxx".}
proc orientation*(this: HLRBRepFaceIterator): TopAbsOrientation {.noSideEffect,
    importcpp: "Orientation", header: "HLRBRep_FaceIterator.hxx".}
proc outLine*(this: HLRBRepFaceIterator): bool {.noSideEffect, importcpp: "OutLine",
    header: "HLRBRep_FaceIterator.hxx".}
proc internal*(this: HLRBRepFaceIterator): bool {.noSideEffect,
    importcpp: "Internal", header: "HLRBRep_FaceIterator.hxx".}
proc double*(this: HLRBRepFaceIterator): bool {.noSideEffect, importcpp: "Double",
    header: "HLRBRep_FaceIterator.hxx".}
proc isoLine*(this: HLRBRepFaceIterator): bool {.noSideEffect, importcpp: "IsoLine",
    header: "HLRBRep_FaceIterator.hxx".}
