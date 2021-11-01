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

discard "forward decl of Standard_DomainError"
type
  IntSurfTransition* {.importcpp: "IntSurf_Transition",
                      header: "IntSurf_Transition.hxx", bycopy.} = object ## ! Empty
                                                                     ## constructor. Creates an UNDECIDED transition.


proc newIntSurfTransition*(): IntSurfTransition {.cdecl, constructor,
    importcpp: "IntSurf_Transition(@)", dynlib: tkgeomalgo.}
proc newIntSurfTransition*(tangent: bool; `type`: IntSurfTypeTrans): IntSurfTransition {.
    cdecl, constructor, importcpp: "IntSurf_Transition(@)", dynlib: tkgeomalgo.}
proc newIntSurfTransition*(tangent: bool; situ: IntSurfSituation; oppos: bool): IntSurfTransition {.
    cdecl, constructor, importcpp: "IntSurf_Transition(@)", dynlib: tkgeomalgo.}
proc setValue*(this: var IntSurfTransition; tangent: bool; `type`: IntSurfTypeTrans) {.
    cdecl, importcpp: "SetValue", dynlib: tkgeomalgo.}
proc setValue*(this: var IntSurfTransition; tangent: bool; situ: IntSurfSituation;
              oppos: bool) {.cdecl, importcpp: "SetValue", dynlib: tkgeomalgo.}
proc setValue*(this: var IntSurfTransition) {.cdecl, importcpp: "SetValue",
    dynlib: tkgeomalgo.}
proc transitionType*(this: IntSurfTransition): IntSurfTypeTrans {.noSideEffect,
    cdecl, importcpp: "TransitionType", dynlib: tkgeomalgo.}
proc isTangent*(this: IntSurfTransition): bool {.noSideEffect, cdecl,
    importcpp: "IsTangent", dynlib: tkgeomalgo.}
proc situation*(this: IntSurfTransition): IntSurfSituation {.noSideEffect, cdecl,
    importcpp: "Situation", dynlib: tkgeomalgo.}
proc isOpposite*(this: IntSurfTransition): bool {.noSideEffect, cdecl,
    importcpp: "IsOpposite", dynlib: tkgeomalgo.}