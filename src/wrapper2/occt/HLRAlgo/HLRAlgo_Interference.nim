##  Created on: 1992-02-18
##  Created by: Christophe MARION
##  Copyright (c) 1992-1999 Matra Datavision
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

## !!!Ignored construct:  # _HLRAlgo_Interference_HeaderFile [NewLine] # _HLRAlgo_Interference_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # HLRAlgo_Intersection.hxx [NewLine] # HLRAlgo_Coincidence.hxx [NewLine] # ../TopAbs/TopAbs_Orientation.hxx [NewLine] class HLRAlgo_Intersection ;
## Error: did not expect <!!!

discard "forward decl of HLRAlgo_Coincidence"
type
  HLRAlgo_Interference* {.importcpp: "HLRAlgo_Interference",
                         header: "HLRAlgo_Interference.hxx", bycopy.} = object


proc constructHLRAlgo_Interference*(): HLRAlgo_Interference {.constructor,
    importcpp: "HLRAlgo_Interference(@)", header: "HLRAlgo_Interference.hxx".}
proc constructHLRAlgo_Interference*(Inters: HLRAlgo_Intersection;
                                   Bound: HLRAlgo_Coincidence;
                                   Orient: TopAbs_Orientation;
                                   Trans: TopAbs_Orientation;
                                   BTrans: TopAbs_Orientation): HLRAlgo_Interference {.
    constructor, importcpp: "HLRAlgo_Interference(@)",
    header: "HLRAlgo_Interference.hxx".}
proc Intersection*(this: var HLRAlgo_Interference; I: HLRAlgo_Intersection) {.
    importcpp: "Intersection", header: "HLRAlgo_Interference.hxx".}
proc Boundary*(this: var HLRAlgo_Interference; B: HLRAlgo_Coincidence) {.
    importcpp: "Boundary", header: "HLRAlgo_Interference.hxx".}
proc Orientation*(this: var HLRAlgo_Interference; O: TopAbs_Orientation) {.
    importcpp: "Orientation", header: "HLRAlgo_Interference.hxx".}
proc Transition*(this: var HLRAlgo_Interference; Tr: TopAbs_Orientation) {.
    importcpp: "Transition", header: "HLRAlgo_Interference.hxx".}
proc BoundaryTransition*(this: var HLRAlgo_Interference; BTr: TopAbs_Orientation) {.
    importcpp: "BoundaryTransition", header: "HLRAlgo_Interference.hxx".}
proc Intersection*(this: HLRAlgo_Interference): HLRAlgo_Intersection {.noSideEffect,
    importcpp: "Intersection", header: "HLRAlgo_Interference.hxx".}
proc ChangeIntersection*(this: var HLRAlgo_Interference): var HLRAlgo_Intersection {.
    importcpp: "ChangeIntersection", header: "HLRAlgo_Interference.hxx".}
proc Boundary*(this: HLRAlgo_Interference): HLRAlgo_Coincidence {.noSideEffect,
    importcpp: "Boundary", header: "HLRAlgo_Interference.hxx".}
proc ChangeBoundary*(this: var HLRAlgo_Interference): var HLRAlgo_Coincidence {.
    importcpp: "ChangeBoundary", header: "HLRAlgo_Interference.hxx".}
proc Orientation*(this: HLRAlgo_Interference): TopAbs_Orientation {.noSideEffect,
    importcpp: "Orientation", header: "HLRAlgo_Interference.hxx".}
proc Transition*(this: HLRAlgo_Interference): TopAbs_Orientation {.noSideEffect,
    importcpp: "Transition", header: "HLRAlgo_Interference.hxx".}
proc BoundaryTransition*(this: HLRAlgo_Interference): TopAbs_Orientation {.
    noSideEffect, importcpp: "BoundaryTransition",
    header: "HLRAlgo_Interference.hxx".}
## !!!Ignored construct:  # TheSubShape HLRAlgo_Intersection [NewLine] # TheSubShape_hxx < HLRAlgo_Intersection . hxx > [NewLine] # TheShape HLRAlgo_Coincidence [NewLine] # TheShape_hxx < HLRAlgo_Coincidence . hxx > [NewLine] # TopBas_Interference HLRAlgo_Interference [NewLine] # TopBas_Interference_hxx < HLRAlgo_Interference . hxx > [NewLine] # < TopBas_Interference . lxx > [NewLine] # TheSubShape [NewLine] # TheSubShape_hxx [NewLine] # TheShape [NewLine] # TheShape_hxx [NewLine] # TopBas_Interference [NewLine] # TopBas_Interference_hxx [NewLine] #  _HLRAlgo_Interference_HeaderFile [NewLine]
## Error: did not expect <!!!
