##  Created on: 1992-05-06
##  Created by: Jacques GOUSSARD
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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean, IntSurf_TypeTrans,
  IntSurf_Situation

discard "forward decl of Standard_DomainError"
type
  IntSurf_Transition* {.importcpp: "IntSurf_Transition",
                       header: "IntSurf_Transition.hxx", bycopy.} = object ## ! Empty
                                                                      ## constructor. Creates an UNDECIDED
                                                                      ## transition.


proc constructIntSurf_Transition*(): IntSurf_Transition {.constructor,
    importcpp: "IntSurf_Transition(@)", header: "IntSurf_Transition.hxx".}
proc constructIntSurf_Transition*(Tangent: Standard_Boolean;
                                 Type: IntSurf_TypeTrans): IntSurf_Transition {.
    constructor, importcpp: "IntSurf_Transition(@)",
    header: "IntSurf_Transition.hxx".}
proc constructIntSurf_Transition*(Tangent: Standard_Boolean;
                                 Situ: IntSurf_Situation; Oppos: Standard_Boolean): IntSurf_Transition {.
    constructor, importcpp: "IntSurf_Transition(@)",
    header: "IntSurf_Transition.hxx".}
proc SetValue*(this: var IntSurf_Transition; Tangent: Standard_Boolean;
              Type: IntSurf_TypeTrans) {.importcpp: "SetValue",
                                       header: "IntSurf_Transition.hxx".}
proc SetValue*(this: var IntSurf_Transition; Tangent: Standard_Boolean;
              Situ: IntSurf_Situation; Oppos: Standard_Boolean) {.
    importcpp: "SetValue", header: "IntSurf_Transition.hxx".}
proc SetValue*(this: var IntSurf_Transition) {.importcpp: "SetValue",
    header: "IntSurf_Transition.hxx".}
proc TransitionType*(this: IntSurf_Transition): IntSurf_TypeTrans {.noSideEffect,
    importcpp: "TransitionType", header: "IntSurf_Transition.hxx".}
proc IsTangent*(this: IntSurf_Transition): Standard_Boolean {.noSideEffect,
    importcpp: "IsTangent", header: "IntSurf_Transition.hxx".}
proc Situation*(this: IntSurf_Transition): IntSurf_Situation {.noSideEffect,
    importcpp: "Situation", header: "IntSurf_Transition.hxx".}
proc IsOpposite*(this: IntSurf_Transition): Standard_Boolean {.noSideEffect,
    importcpp: "IsOpposite", header: "IntSurf_Transition.hxx".}