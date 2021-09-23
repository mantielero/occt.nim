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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean, IntRes2d_Position,
  IntRes2d_TypeTrans, IntRes2d_Situation

discard "forward decl of Standard_DomainError"
type
  IntRes2d_Transition* {.importcpp: "IntRes2d_Transition",
                        header: "IntRes2d_Transition.hxx", bycopy.} = object ## ! Empty
                                                                        ## constructor.


proc constructIntRes2d_Transition*(): IntRes2d_Transition {.constructor,
    importcpp: "IntRes2d_Transition(@)", header: "IntRes2d_Transition.hxx".}
proc constructIntRes2d_Transition*(Tangent: Standard_Boolean;
                                  Pos: IntRes2d_Position; Type: IntRes2d_TypeTrans): IntRes2d_Transition {.
    constructor, importcpp: "IntRes2d_Transition(@)",
    header: "IntRes2d_Transition.hxx".}
proc constructIntRes2d_Transition*(Tangent: Standard_Boolean;
                                  Pos: IntRes2d_Position;
                                  Situ: IntRes2d_Situation;
                                  Oppos: Standard_Boolean): IntRes2d_Transition {.
    constructor, importcpp: "IntRes2d_Transition(@)",
    header: "IntRes2d_Transition.hxx".}
proc constructIntRes2d_Transition*(Pos: IntRes2d_Position): IntRes2d_Transition {.
    constructor, importcpp: "IntRes2d_Transition(@)",
    header: "IntRes2d_Transition.hxx".}
proc SetValue*(this: var IntRes2d_Transition; Tangent: Standard_Boolean;
              Pos: IntRes2d_Position; Type: IntRes2d_TypeTrans) {.
    importcpp: "SetValue", header: "IntRes2d_Transition.hxx".}
proc SetValue*(this: var IntRes2d_Transition; Tangent: Standard_Boolean;
              Pos: IntRes2d_Position; Situ: IntRes2d_Situation;
              Oppos: Standard_Boolean) {.importcpp: "SetValue",
                                       header: "IntRes2d_Transition.hxx".}
proc SetValue*(this: var IntRes2d_Transition; Pos: IntRes2d_Position) {.
    importcpp: "SetValue", header: "IntRes2d_Transition.hxx".}
proc SetPosition*(this: var IntRes2d_Transition; Pos: IntRes2d_Position) {.
    importcpp: "SetPosition", header: "IntRes2d_Transition.hxx".}
proc PositionOnCurve*(this: IntRes2d_Transition): IntRes2d_Position {.noSideEffect,
    importcpp: "PositionOnCurve", header: "IntRes2d_Transition.hxx".}
proc TransitionType*(this: IntRes2d_Transition): IntRes2d_TypeTrans {.noSideEffect,
    importcpp: "TransitionType", header: "IntRes2d_Transition.hxx".}
proc IsTangent*(this: IntRes2d_Transition): Standard_Boolean {.noSideEffect,
    importcpp: "IsTangent", header: "IntRes2d_Transition.hxx".}
proc Situation*(this: IntRes2d_Transition): IntRes2d_Situation {.noSideEffect,
    importcpp: "Situation", header: "IntRes2d_Transition.hxx".}
proc IsOpposite*(this: IntRes2d_Transition): Standard_Boolean {.noSideEffect,
    importcpp: "IsOpposite", header: "IntRes2d_Transition.hxx".}