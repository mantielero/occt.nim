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

discard "forward decl of HLRAlgo_Intersection"
discard "forward decl of HLRBRep_AreaLimit"
discard "forward decl of HLRBRep_AreaLimit"
type
  HandleHLRBRepAreaLimit* = Handle[HLRBRepAreaLimit]

## ! The  private  nested class AreaLimit represents   a --
## ! vertex on  the Edge with the  state on the left and --
## ! the right.

type
  HLRBRepAreaLimit* {.importcpp: "HLRBRep_AreaLimit",
                     header: "HLRBRep_AreaLimit.hxx", bycopy.} = object of StandardTransient ##
                                                                                      ## !
                                                                                      ## The
                                                                                      ## previous
                                                                                      ## and
                                                                                      ## next
                                                                                      ## field
                                                                                      ## are
                                                                                      ## set
                                                                                      ## to
                                                                                      ## NULL.


proc constructHLRBRepAreaLimit*(v: HLRAlgoIntersection; boundary: bool;
                               interference: bool; stateBefore: TopAbsState;
                               stateAfter: TopAbsState; edgeBefore: TopAbsState;
                               edgeAfter: TopAbsState): HLRBRepAreaLimit {.
    constructor, importcpp: "HLRBRep_AreaLimit(@)", header: "HLRBRep_AreaLimit.hxx".}
proc stateBefore*(this: var HLRBRepAreaLimit; st: TopAbsState) {.
    importcpp: "StateBefore", header: "HLRBRep_AreaLimit.hxx".}
proc stateAfter*(this: var HLRBRepAreaLimit; st: TopAbsState) {.
    importcpp: "StateAfter", header: "HLRBRep_AreaLimit.hxx".}
proc edgeBefore*(this: var HLRBRepAreaLimit; st: TopAbsState) {.
    importcpp: "EdgeBefore", header: "HLRBRep_AreaLimit.hxx".}
proc edgeAfter*(this: var HLRBRepAreaLimit; st: TopAbsState) {.importcpp: "EdgeAfter",
    header: "HLRBRep_AreaLimit.hxx".}
proc previous*(this: var HLRBRepAreaLimit; p: Handle[HLRBRepAreaLimit]) {.
    importcpp: "Previous", header: "HLRBRep_AreaLimit.hxx".}
proc next*(this: var HLRBRepAreaLimit; n: Handle[HLRBRepAreaLimit]) {.
    importcpp: "Next", header: "HLRBRep_AreaLimit.hxx".}
proc vertex*(this: HLRBRepAreaLimit): HLRAlgoIntersection {.noSideEffect,
    importcpp: "Vertex", header: "HLRBRep_AreaLimit.hxx".}
proc isBoundary*(this: HLRBRepAreaLimit): bool {.noSideEffect,
    importcpp: "IsBoundary", header: "HLRBRep_AreaLimit.hxx".}
proc isInterference*(this: HLRBRepAreaLimit): bool {.noSideEffect,
    importcpp: "IsInterference", header: "HLRBRep_AreaLimit.hxx".}
proc stateBefore*(this: HLRBRepAreaLimit): TopAbsState {.noSideEffect,
    importcpp: "StateBefore", header: "HLRBRep_AreaLimit.hxx".}
proc stateAfter*(this: HLRBRepAreaLimit): TopAbsState {.noSideEffect,
    importcpp: "StateAfter", header: "HLRBRep_AreaLimit.hxx".}
proc edgeBefore*(this: HLRBRepAreaLimit): TopAbsState {.noSideEffect,
    importcpp: "EdgeBefore", header: "HLRBRep_AreaLimit.hxx".}
proc edgeAfter*(this: HLRBRepAreaLimit): TopAbsState {.noSideEffect,
    importcpp: "EdgeAfter", header: "HLRBRep_AreaLimit.hxx".}
proc previous*(this: HLRBRepAreaLimit): Handle[HLRBRepAreaLimit] {.noSideEffect,
    importcpp: "Previous", header: "HLRBRep_AreaLimit.hxx".}
proc next*(this: HLRBRepAreaLimit): Handle[HLRBRepAreaLimit] {.noSideEffect,
    importcpp: "Next", header: "HLRBRep_AreaLimit.hxx".}
proc clear*(this: var HLRBRepAreaLimit) {.importcpp: "Clear",
                                      header: "HLRBRep_AreaLimit.hxx".}
type
  HLRBRepAreaLimitbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "HLRBRep_AreaLimit::get_type_name(@)",
                            header: "HLRBRep_AreaLimit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "HLRBRep_AreaLimit::get_type_descriptor(@)",
    header: "HLRBRep_AreaLimit.hxx".}
proc dynamicType*(this: HLRBRepAreaLimit): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "HLRBRep_AreaLimit.hxx".}
