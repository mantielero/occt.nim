##  Created on: 1992-08-20
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../TopAbs/TopAbs_State

## ! The Coincidence class is used in an Inteference to
## ! store informations on the "hiding" edge.
## !
## ! 2D  Data : The  tangent  and the  curvature of the
## ! projection of the edge  at the intersection point.
## ! This is necesserary  when the intersection  is  at
## ! the extremity of the edge.
## !
## ! 3D   Data  :  The   state of  the   edge  near the
## ! intersection   with  the face (before  and after).
## ! This is necessary  when the  intersection is  "ON"
## ! the face.

type
  HLRAlgo_Coincidence* {.importcpp: "HLRAlgo_Coincidence",
                        header: "HLRAlgo_Coincidence.hxx", bycopy.} = object


proc constructHLRAlgo_Coincidence*(): HLRAlgo_Coincidence {.constructor,
    importcpp: "HLRAlgo_Coincidence(@)", header: "HLRAlgo_Coincidence.hxx".}
proc Set2D*(this: var HLRAlgo_Coincidence; FE: Standard_Integer; Param: Standard_Real) {.
    importcpp: "Set2D", header: "HLRAlgo_Coincidence.hxx".}
proc SetState3D*(this: var HLRAlgo_Coincidence; stbef: TopAbs_State;
                staft: TopAbs_State) {.importcpp: "SetState3D",
                                     header: "HLRAlgo_Coincidence.hxx".}
proc Value2D*(this: HLRAlgo_Coincidence; FE: var Standard_Integer;
             Param: var Standard_Real) {.noSideEffect, importcpp: "Value2D",
                                      header: "HLRAlgo_Coincidence.hxx".}
proc State3D*(this: HLRAlgo_Coincidence; stbef: var TopAbs_State;
             staft: var TopAbs_State) {.noSideEffect, importcpp: "State3D",
                                     header: "HLRAlgo_Coincidence.hxx".}