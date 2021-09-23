##  Created on: 2000-05-22
##  Created by: Peter KURNEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../TopAbs/TopAbs_State,
  ../Standard/Standard_Boolean

## ! The class is to describe the root of
## ! function of one variable  for  Edge/Edge
## ! and  Edge/Surface  algorithms.

type
  IntTools_Root* {.importcpp: "IntTools_Root", header: "IntTools_Root.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Empty
                                                                                      ## constructor


proc constructIntTools_Root*(): IntTools_Root {.constructor,
    importcpp: "IntTools_Root(@)", header: "IntTools_Root.hxx".}
proc constructIntTools_Root*(aRoot: Standard_Real; aType: Standard_Integer): IntTools_Root {.
    constructor, importcpp: "IntTools_Root(@)", header: "IntTools_Root.hxx".}
proc SetRoot*(this: var IntTools_Root; aRoot: Standard_Real) {.importcpp: "SetRoot",
    header: "IntTools_Root.hxx".}
proc SetType*(this: var IntTools_Root; aType: Standard_Integer) {.
    importcpp: "SetType", header: "IntTools_Root.hxx".}
proc SetStateBefore*(this: var IntTools_Root; aState: TopAbs_State) {.
    importcpp: "SetStateBefore", header: "IntTools_Root.hxx".}
proc SetStateAfter*(this: var IntTools_Root; aState: TopAbs_State) {.
    importcpp: "SetStateAfter", header: "IntTools_Root.hxx".}
proc SetLayerHeight*(this: var IntTools_Root; aHeight: Standard_Real) {.
    importcpp: "SetLayerHeight", header: "IntTools_Root.hxx".}
proc SetInterval*(this: var IntTools_Root; t1: Standard_Real; t2: Standard_Real;
                 f1: Standard_Real; f2: Standard_Real) {.importcpp: "SetInterval",
    header: "IntTools_Root.hxx".}
proc Root*(this: IntTools_Root): Standard_Real {.noSideEffect, importcpp: "Root",
    header: "IntTools_Root.hxx".}
proc Type*(this: IntTools_Root): Standard_Integer {.noSideEffect, importcpp: "Type",
    header: "IntTools_Root.hxx".}
proc StateBefore*(this: IntTools_Root): TopAbs_State {.noSideEffect,
    importcpp: "StateBefore", header: "IntTools_Root.hxx".}
proc StateAfter*(this: IntTools_Root): TopAbs_State {.noSideEffect,
    importcpp: "StateAfter", header: "IntTools_Root.hxx".}
proc LayerHeight*(this: IntTools_Root): Standard_Real {.noSideEffect,
    importcpp: "LayerHeight", header: "IntTools_Root.hxx".}
proc IsValid*(this: IntTools_Root): Standard_Boolean {.noSideEffect,
    importcpp: "IsValid", header: "IntTools_Root.hxx".}
proc Interval*(this: IntTools_Root; t1: var Standard_Real; t2: var Standard_Real;
              f1: var Standard_Real; f2: var Standard_Real) {.noSideEffect,
    importcpp: "Interval", header: "IntTools_Root.hxx".}