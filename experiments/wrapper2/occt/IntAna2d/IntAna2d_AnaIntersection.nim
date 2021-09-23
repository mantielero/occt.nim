##  Created on: 1991-02-20
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1991-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, IntAna2d_IntPoint

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Circ2d"
discard "forward decl of IntAna2d_Conic"
discard "forward decl of gp_Elips2d"
discard "forward decl of gp_Parab2d"
discard "forward decl of gp_Hypr2d"
discard "forward decl of IntAna2d_IntPoint"
type
  IntAna2d_AnaIntersection* {.importcpp: "IntAna2d_AnaIntersection",
                             header: "IntAna2d_AnaIntersection.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## Empty
                                                                                  ## constructor.
                                                                                  ## IsDone
                                                                                  ## returns
                                                                                  ## False.


proc constructIntAna2d_AnaIntersection*(): IntAna2d_AnaIntersection {.constructor,
    importcpp: "IntAna2d_AnaIntersection(@)",
    header: "IntAna2d_AnaIntersection.hxx".}
proc constructIntAna2d_AnaIntersection*(L1: gp_Lin2d; L2: gp_Lin2d): IntAna2d_AnaIntersection {.
    constructor, importcpp: "IntAna2d_AnaIntersection(@)",
    header: "IntAna2d_AnaIntersection.hxx".}
proc constructIntAna2d_AnaIntersection*(C1: gp_Circ2d; C2: gp_Circ2d): IntAna2d_AnaIntersection {.
    constructor, importcpp: "IntAna2d_AnaIntersection(@)",
    header: "IntAna2d_AnaIntersection.hxx".}
proc constructIntAna2d_AnaIntersection*(L: gp_Lin2d; C: gp_Circ2d): IntAna2d_AnaIntersection {.
    constructor, importcpp: "IntAna2d_AnaIntersection(@)",
    header: "IntAna2d_AnaIntersection.hxx".}
proc constructIntAna2d_AnaIntersection*(L: gp_Lin2d; C: IntAna2d_Conic): IntAna2d_AnaIntersection {.
    constructor, importcpp: "IntAna2d_AnaIntersection(@)",
    header: "IntAna2d_AnaIntersection.hxx".}
proc constructIntAna2d_AnaIntersection*(C: gp_Circ2d; Co: IntAna2d_Conic): IntAna2d_AnaIntersection {.
    constructor, importcpp: "IntAna2d_AnaIntersection(@)",
    header: "IntAna2d_AnaIntersection.hxx".}
proc constructIntAna2d_AnaIntersection*(E: gp_Elips2d; C: IntAna2d_Conic): IntAna2d_AnaIntersection {.
    constructor, importcpp: "IntAna2d_AnaIntersection(@)",
    header: "IntAna2d_AnaIntersection.hxx".}
proc constructIntAna2d_AnaIntersection*(P: gp_Parab2d; C: IntAna2d_Conic): IntAna2d_AnaIntersection {.
    constructor, importcpp: "IntAna2d_AnaIntersection(@)",
    header: "IntAna2d_AnaIntersection.hxx".}
proc constructIntAna2d_AnaIntersection*(H: gp_Hypr2d; C: IntAna2d_Conic): IntAna2d_AnaIntersection {.
    constructor, importcpp: "IntAna2d_AnaIntersection(@)",
    header: "IntAna2d_AnaIntersection.hxx".}
proc Perform*(this: var IntAna2d_AnaIntersection; L1: gp_Lin2d; L2: gp_Lin2d) {.
    importcpp: "Perform", header: "IntAna2d_AnaIntersection.hxx".}
proc Perform*(this: var IntAna2d_AnaIntersection; C1: gp_Circ2d; C2: gp_Circ2d) {.
    importcpp: "Perform", header: "IntAna2d_AnaIntersection.hxx".}
proc Perform*(this: var IntAna2d_AnaIntersection; L: gp_Lin2d; C: gp_Circ2d) {.
    importcpp: "Perform", header: "IntAna2d_AnaIntersection.hxx".}
proc Perform*(this: var IntAna2d_AnaIntersection; L: gp_Lin2d; C: IntAna2d_Conic) {.
    importcpp: "Perform", header: "IntAna2d_AnaIntersection.hxx".}
proc Perform*(this: var IntAna2d_AnaIntersection; C: gp_Circ2d; Co: IntAna2d_Conic) {.
    importcpp: "Perform", header: "IntAna2d_AnaIntersection.hxx".}
proc Perform*(this: var IntAna2d_AnaIntersection; E: gp_Elips2d; C: IntAna2d_Conic) {.
    importcpp: "Perform", header: "IntAna2d_AnaIntersection.hxx".}
proc Perform*(this: var IntAna2d_AnaIntersection; P: gp_Parab2d; C: IntAna2d_Conic) {.
    importcpp: "Perform", header: "IntAna2d_AnaIntersection.hxx".}
proc Perform*(this: var IntAna2d_AnaIntersection; H: gp_Hypr2d; C: IntAna2d_Conic) {.
    importcpp: "Perform", header: "IntAna2d_AnaIntersection.hxx".}
proc IsDone*(this: IntAna2d_AnaIntersection): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "IntAna2d_AnaIntersection.hxx".}
proc IsEmpty*(this: IntAna2d_AnaIntersection): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "IntAna2d_AnaIntersection.hxx".}
proc IdenticalElements*(this: IntAna2d_AnaIntersection): Standard_Boolean {.
    noSideEffect, importcpp: "IdenticalElements",
    header: "IntAna2d_AnaIntersection.hxx".}
proc ParallelElements*(this: IntAna2d_AnaIntersection): Standard_Boolean {.
    noSideEffect, importcpp: "ParallelElements",
    header: "IntAna2d_AnaIntersection.hxx".}
proc NbPoints*(this: IntAna2d_AnaIntersection): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "IntAna2d_AnaIntersection.hxx".}
proc Point*(this: IntAna2d_AnaIntersection; N: Standard_Integer): IntAna2d_IntPoint {.
    noSideEffect, importcpp: "Point", header: "IntAna2d_AnaIntersection.hxx".}