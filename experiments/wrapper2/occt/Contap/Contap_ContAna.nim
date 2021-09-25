##  Created on: 1993-03-04
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Sphere"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Cylinder"
discard "forward decl of gp_Cone"
discard "forward decl of gp_Lin"
type
  ContapContAna* {.importcpp: "Contap_ContAna", header: "Contap_ContAna.hxx", bycopy.} = object


proc constructContapContAna*(): ContapContAna {.constructor,
    importcpp: "Contap_ContAna(@)", header: "Contap_ContAna.hxx".}
proc perform*(this: var ContapContAna; s: Sphere; d: Dir) {.importcpp: "Perform",
    header: "Contap_ContAna.hxx".}
proc perform*(this: var ContapContAna; s: Sphere; d: Dir; ang: float) {.
    importcpp: "Perform", header: "Contap_ContAna.hxx".}
proc perform*(this: var ContapContAna; s: Sphere; eye: Pnt) {.importcpp: "Perform",
    header: "Contap_ContAna.hxx".}
proc perform*(this: var ContapContAna; c: Cylinder; d: Dir) {.importcpp: "Perform",
    header: "Contap_ContAna.hxx".}
proc perform*(this: var ContapContAna; c: Cylinder; d: Dir; ang: float) {.
    importcpp: "Perform", header: "Contap_ContAna.hxx".}
proc perform*(this: var ContapContAna; c: Cylinder; eye: Pnt) {.importcpp: "Perform",
    header: "Contap_ContAna.hxx".}
proc perform*(this: var ContapContAna; c: Cone; d: Dir) {.importcpp: "Perform",
    header: "Contap_ContAna.hxx".}
proc perform*(this: var ContapContAna; c: Cone; d: Dir; ang: float) {.
    importcpp: "Perform", header: "Contap_ContAna.hxx".}
proc perform*(this: var ContapContAna; c: Cone; eye: Pnt) {.importcpp: "Perform",
    header: "Contap_ContAna.hxx".}
proc isDone*(this: ContapContAna): bool {.noSideEffect, importcpp: "IsDone",
                                      header: "Contap_ContAna.hxx".}
proc nbContours*(this: ContapContAna): int {.noSideEffect, importcpp: "NbContours",
    header: "Contap_ContAna.hxx".}
proc typeContour*(this: ContapContAna): GeomAbsCurveType {.noSideEffect,
    importcpp: "TypeContour", header: "Contap_ContAna.hxx".}
proc circle*(this: ContapContAna): Circ {.noSideEffect, importcpp: "Circle",
                                      header: "Contap_ContAna.hxx".}
proc line*(this: ContapContAna; index: int): Lin {.noSideEffect, importcpp: "Line",
    header: "Contap_ContAna.hxx".}
