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

## !!!Ignored construct:  # _HLRAlgo_Interference_HeaderFile [NewLine] # _HLRAlgo_Interference_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < HLRAlgo_Intersection . hxx > [NewLine] # < HLRAlgo_Coincidence . hxx > [NewLine] # < TopAbs_Orientation . hxx > [NewLine] class HLRAlgo_Intersection ;
## Error: did not expect <!!!

discard "forward decl of HLRAlgo_Coincidence"
type
  HLRAlgoInterference* {.importcpp: "HLRAlgo_Interference",
                        header: "HLRAlgo_Interference.hxx", bycopy.} = object


proc constructHLRAlgoInterference*(): HLRAlgoInterference {.constructor,
    importcpp: "HLRAlgo_Interference(@)", header: "HLRAlgo_Interference.hxx".}
proc constructHLRAlgoInterference*(inters: HLRAlgoIntersection;
                                  bound: HLRAlgoCoincidence;
                                  orient: TopAbsOrientation;
                                  trans: TopAbsOrientation;
                                  bTrans: TopAbsOrientation): HLRAlgoInterference {.
    constructor, importcpp: "HLRAlgo_Interference(@)",
    header: "HLRAlgo_Interference.hxx".}
proc intersection*(this: var HLRAlgoInterference; i: HLRAlgoIntersection) {.
    importcpp: "Intersection", header: "HLRAlgo_Interference.hxx".}
proc boundary*(this: var HLRAlgoInterference; b: HLRAlgoCoincidence) {.
    importcpp: "Boundary", header: "HLRAlgo_Interference.hxx".}
proc orientation*(this: var HLRAlgoInterference; o: TopAbsOrientation) {.
    importcpp: "Orientation", header: "HLRAlgo_Interference.hxx".}
proc transition*(this: var HLRAlgoInterference; tr: TopAbsOrientation) {.
    importcpp: "Transition", header: "HLRAlgo_Interference.hxx".}
proc boundaryTransition*(this: var HLRAlgoInterference; bTr: TopAbsOrientation) {.
    importcpp: "BoundaryTransition", header: "HLRAlgo_Interference.hxx".}
proc intersection*(this: HLRAlgoInterference): HLRAlgoIntersection {.noSideEffect,
    importcpp: "Intersection", header: "HLRAlgo_Interference.hxx".}
proc changeIntersection*(this: var HLRAlgoInterference): var HLRAlgoIntersection {.
    importcpp: "ChangeIntersection", header: "HLRAlgo_Interference.hxx".}
proc boundary*(this: HLRAlgoInterference): HLRAlgoCoincidence {.noSideEffect,
    importcpp: "Boundary", header: "HLRAlgo_Interference.hxx".}
proc changeBoundary*(this: var HLRAlgoInterference): var HLRAlgoCoincidence {.
    importcpp: "ChangeBoundary", header: "HLRAlgo_Interference.hxx".}
proc orientation*(this: HLRAlgoInterference): TopAbsOrientation {.noSideEffect,
    importcpp: "Orientation", header: "HLRAlgo_Interference.hxx".}
proc transition*(this: HLRAlgoInterference): TopAbsOrientation {.noSideEffect,
    importcpp: "Transition", header: "HLRAlgo_Interference.hxx".}
proc boundaryTransition*(this: HLRAlgoInterference): TopAbsOrientation {.
    noSideEffect, importcpp: "BoundaryTransition",
    header: "HLRAlgo_Interference.hxx".}
## !!!Ignored construct:  # TheSubShape HLRAlgo_Intersection [NewLine] # TheSubShape_hxx < HLRAlgo_Intersection . hxx > [NewLine] # TheShape HLRAlgo_Coincidence [NewLine] # TheShape_hxx < HLRAlgo_Coincidence . hxx > [NewLine] # TopBas_Interference HLRAlgo_Interference [NewLine] # TopBas_Interference_hxx < HLRAlgo_Interference . hxx > [NewLine] # < TopBas_Interference . lxx > [NewLine] # TheSubShape [NewLine] # TheSubShape_hxx [NewLine] # TheShape [NewLine] # TheShape_hxx [NewLine] # TopBas_Interference [NewLine] # TopBas_Interference_hxx [NewLine] #  _HLRAlgo_Interference_HeaderFile
## Error: did not expect <!!!


