##  Created on: 1992-04-03
##  Created by: Laurent BUCHARD
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

discard "forward decl of Standard_DomainError"
type
  IntRes2dTransition* {.importcpp: "IntRes2d_Transition",
                       header: "IntRes2d_Transition.hxx", bycopy.} = object ## ! Empty
                                                                       ## constructor.


proc constructIntRes2dTransition*(): IntRes2dTransition {.constructor,
    importcpp: "IntRes2d_Transition(@)", header: "IntRes2d_Transition.hxx".}
proc constructIntRes2dTransition*(tangent: StandardBoolean; pos: IntRes2dPosition;
                                 `type`: IntRes2dTypeTrans): IntRes2dTransition {.
    constructor, importcpp: "IntRes2d_Transition(@)",
    header: "IntRes2d_Transition.hxx".}
proc constructIntRes2dTransition*(tangent: StandardBoolean; pos: IntRes2dPosition;
                                 situ: IntRes2dSituation; oppos: StandardBoolean): IntRes2dTransition {.
    constructor, importcpp: "IntRes2d_Transition(@)",
    header: "IntRes2d_Transition.hxx".}
proc constructIntRes2dTransition*(pos: IntRes2dPosition): IntRes2dTransition {.
    constructor, importcpp: "IntRes2d_Transition(@)",
    header: "IntRes2d_Transition.hxx".}
proc setValue*(this: var IntRes2dTransition; tangent: StandardBoolean;
              pos: IntRes2dPosition; `type`: IntRes2dTypeTrans) {.
    importcpp: "SetValue", header: "IntRes2d_Transition.hxx".}
proc setValue*(this: var IntRes2dTransition; tangent: StandardBoolean;
              pos: IntRes2dPosition; situ: IntRes2dSituation; oppos: StandardBoolean) {.
    importcpp: "SetValue", header: "IntRes2d_Transition.hxx".}
proc setValue*(this: var IntRes2dTransition; pos: IntRes2dPosition) {.
    importcpp: "SetValue", header: "IntRes2d_Transition.hxx".}
proc setPosition*(this: var IntRes2dTransition; pos: IntRes2dPosition) {.
    importcpp: "SetPosition", header: "IntRes2d_Transition.hxx".}
proc positionOnCurve*(this: IntRes2dTransition): IntRes2dPosition {.noSideEffect,
    importcpp: "PositionOnCurve", header: "IntRes2d_Transition.hxx".}
proc transitionType*(this: IntRes2dTransition): IntRes2dTypeTrans {.noSideEffect,
    importcpp: "TransitionType", header: "IntRes2d_Transition.hxx".}
proc isTangent*(this: IntRes2dTransition): StandardBoolean {.noSideEffect,
    importcpp: "IsTangent", header: "IntRes2d_Transition.hxx".}
proc situation*(this: IntRes2dTransition): IntRes2dSituation {.noSideEffect,
    importcpp: "Situation", header: "IntRes2d_Transition.hxx".}
proc isOpposite*(this: IntRes2dTransition): StandardBoolean {.noSideEffect,
    importcpp: "IsOpposite", header: "IntRes2d_Transition.hxx".}

