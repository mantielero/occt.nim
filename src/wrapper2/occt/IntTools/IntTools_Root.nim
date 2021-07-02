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

## ! The class is to describe the root of
## ! function of one variable  for  Edge/Edge
## ! and  Edge/Surface  algorithms.

type
  IntToolsRoot* {.importcpp: "IntTools_Root", header: "IntTools_Root.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Empty
                                                                                     ## constructor


proc constructIntToolsRoot*(): IntToolsRoot {.constructor,
    importcpp: "IntTools_Root(@)", header: "IntTools_Root.hxx".}
proc constructIntToolsRoot*(aRoot: StandardReal; aType: StandardInteger): IntToolsRoot {.
    constructor, importcpp: "IntTools_Root(@)", header: "IntTools_Root.hxx".}
proc setRoot*(this: var IntToolsRoot; aRoot: StandardReal) {.importcpp: "SetRoot",
    header: "IntTools_Root.hxx".}
proc setType*(this: var IntToolsRoot; aType: StandardInteger) {.importcpp: "SetType",
    header: "IntTools_Root.hxx".}
proc setStateBefore*(this: var IntToolsRoot; aState: TopAbsState) {.
    importcpp: "SetStateBefore", header: "IntTools_Root.hxx".}
proc setStateAfter*(this: var IntToolsRoot; aState: TopAbsState) {.
    importcpp: "SetStateAfter", header: "IntTools_Root.hxx".}
proc setLayerHeight*(this: var IntToolsRoot; aHeight: StandardReal) {.
    importcpp: "SetLayerHeight", header: "IntTools_Root.hxx".}
proc setInterval*(this: var IntToolsRoot; t1: StandardReal; t2: StandardReal;
                 f1: StandardReal; f2: StandardReal) {.importcpp: "SetInterval",
    header: "IntTools_Root.hxx".}
proc root*(this: IntToolsRoot): StandardReal {.noSideEffect, importcpp: "Root",
    header: "IntTools_Root.hxx".}
proc `type`*(this: IntToolsRoot): StandardInteger {.noSideEffect, importcpp: "Type",
    header: "IntTools_Root.hxx".}
proc stateBefore*(this: IntToolsRoot): TopAbsState {.noSideEffect,
    importcpp: "StateBefore", header: "IntTools_Root.hxx".}
proc stateAfter*(this: IntToolsRoot): TopAbsState {.noSideEffect,
    importcpp: "StateAfter", header: "IntTools_Root.hxx".}
proc layerHeight*(this: IntToolsRoot): StandardReal {.noSideEffect,
    importcpp: "LayerHeight", header: "IntTools_Root.hxx".}
proc isValid*(this: IntToolsRoot): StandardBoolean {.noSideEffect,
    importcpp: "IsValid", header: "IntTools_Root.hxx".}
proc interval*(this: IntToolsRoot; t1: var StandardReal; t2: var StandardReal;
              f1: var StandardReal; f2: var StandardReal) {.noSideEffect,
    importcpp: "Interval", header: "IntTools_Root.hxx".}

