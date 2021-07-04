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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../HLRAlgo/HLRAlgo_Intersection, ../Standard/Standard_Boolean,
  ../TopAbs/TopAbs_State, ../Standard/Standard_Transient

discard "forward decl of HLRAlgo_Intersection"
discard "forward decl of HLRBRep_AreaLimit"
discard "forward decl of HLRBRep_AreaLimit"
type
  Handle_HLRBRep_AreaLimit* = handle[HLRBRep_AreaLimit]

## ! The  private  nested class AreaLimit represents   a --
## ! vertex on  the Edge with the  state on the left and --
## ! the right.

type
  HLRBRep_AreaLimit* {.importcpp: "HLRBRep_AreaLimit",
                      header: "HLRBRep_AreaLimit.hxx", bycopy.} = object of Standard_Transient ##
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


proc constructHLRBRep_AreaLimit*(V: HLRAlgo_Intersection;
                                Boundary: Standard_Boolean;
                                Interference: Standard_Boolean;
                                StateBefore: TopAbs_State;
                                StateAfter: TopAbs_State;
                                EdgeBefore: TopAbs_State; EdgeAfter: TopAbs_State): HLRBRep_AreaLimit {.
    constructor, importcpp: "HLRBRep_AreaLimit(@)", header: "HLRBRep_AreaLimit.hxx".}
proc StateBefore*(this: var HLRBRep_AreaLimit; St: TopAbs_State) {.
    importcpp: "StateBefore", header: "HLRBRep_AreaLimit.hxx".}
proc StateAfter*(this: var HLRBRep_AreaLimit; St: TopAbs_State) {.
    importcpp: "StateAfter", header: "HLRBRep_AreaLimit.hxx".}
proc EdgeBefore*(this: var HLRBRep_AreaLimit; St: TopAbs_State) {.
    importcpp: "EdgeBefore", header: "HLRBRep_AreaLimit.hxx".}
proc EdgeAfter*(this: var HLRBRep_AreaLimit; St: TopAbs_State) {.
    importcpp: "EdgeAfter", header: "HLRBRep_AreaLimit.hxx".}
proc Previous*(this: var HLRBRep_AreaLimit; P: handle[HLRBRep_AreaLimit]) {.
    importcpp: "Previous", header: "HLRBRep_AreaLimit.hxx".}
proc Next*(this: var HLRBRep_AreaLimit; N: handle[HLRBRep_AreaLimit]) {.
    importcpp: "Next", header: "HLRBRep_AreaLimit.hxx".}
proc Vertex*(this: HLRBRep_AreaLimit): HLRAlgo_Intersection {.noSideEffect,
    importcpp: "Vertex", header: "HLRBRep_AreaLimit.hxx".}
proc IsBoundary*(this: HLRBRep_AreaLimit): Standard_Boolean {.noSideEffect,
    importcpp: "IsBoundary", header: "HLRBRep_AreaLimit.hxx".}
proc IsInterference*(this: HLRBRep_AreaLimit): Standard_Boolean {.noSideEffect,
    importcpp: "IsInterference", header: "HLRBRep_AreaLimit.hxx".}
proc StateBefore*(this: HLRBRep_AreaLimit): TopAbs_State {.noSideEffect,
    importcpp: "StateBefore", header: "HLRBRep_AreaLimit.hxx".}
proc StateAfter*(this: HLRBRep_AreaLimit): TopAbs_State {.noSideEffect,
    importcpp: "StateAfter", header: "HLRBRep_AreaLimit.hxx".}
proc EdgeBefore*(this: HLRBRep_AreaLimit): TopAbs_State {.noSideEffect,
    importcpp: "EdgeBefore", header: "HLRBRep_AreaLimit.hxx".}
proc EdgeAfter*(this: HLRBRep_AreaLimit): TopAbs_State {.noSideEffect,
    importcpp: "EdgeAfter", header: "HLRBRep_AreaLimit.hxx".}
proc Previous*(this: HLRBRep_AreaLimit): handle[HLRBRep_AreaLimit] {.noSideEffect,
    importcpp: "Previous", header: "HLRBRep_AreaLimit.hxx".}
proc Next*(this: HLRBRep_AreaLimit): handle[HLRBRep_AreaLimit] {.noSideEffect,
    importcpp: "Next", header: "HLRBRep_AreaLimit.hxx".}
proc Clear*(this: var HLRBRep_AreaLimit) {.importcpp: "Clear",
                                       header: "HLRBRep_AreaLimit.hxx".}
type
  HLRBRep_AreaLimitbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "HLRBRep_AreaLimit::get_type_name(@)",
                              header: "HLRBRep_AreaLimit.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "HLRBRep_AreaLimit::get_type_descriptor(@)",
    header: "HLRBRep_AreaLimit.hxx".}
proc DynamicType*(this: HLRBRep_AreaLimit): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "HLRBRep_AreaLimit.hxx".}