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
proc perform*(this: var ContapContAna; s: GpSphere; d: GpDir) {.importcpp: "Perform",
    header: "Contap_ContAna.hxx".}
proc perform*(this: var ContapContAna; s: GpSphere; d: GpDir; ang: StandardReal) {.
    importcpp: "Perform", header: "Contap_ContAna.hxx".}
proc perform*(this: var ContapContAna; s: GpSphere; eye: GpPnt) {.importcpp: "Perform",
    header: "Contap_ContAna.hxx".}
proc perform*(this: var ContapContAna; c: GpCylinder; d: GpDir) {.importcpp: "Perform",
    header: "Contap_ContAna.hxx".}
proc perform*(this: var ContapContAna; c: GpCylinder; d: GpDir; ang: StandardReal) {.
    importcpp: "Perform", header: "Contap_ContAna.hxx".}
proc perform*(this: var ContapContAna; c: GpCylinder; eye: GpPnt) {.
    importcpp: "Perform", header: "Contap_ContAna.hxx".}
proc perform*(this: var ContapContAna; c: GpCone; d: GpDir) {.importcpp: "Perform",
    header: "Contap_ContAna.hxx".}
proc perform*(this: var ContapContAna; c: GpCone; d: GpDir; ang: StandardReal) {.
    importcpp: "Perform", header: "Contap_ContAna.hxx".}
proc perform*(this: var ContapContAna; c: GpCone; eye: GpPnt) {.importcpp: "Perform",
    header: "Contap_ContAna.hxx".}
proc isDone*(this: ContapContAna): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "Contap_ContAna.hxx".}
proc nbContours*(this: ContapContAna): StandardInteger {.noSideEffect,
    importcpp: "NbContours", header: "Contap_ContAna.hxx".}
proc typeContour*(this: ContapContAna): GeomAbsCurveType {.noSideEffect,
    importcpp: "TypeContour", header: "Contap_ContAna.hxx".}
proc circle*(this: ContapContAna): GpCirc {.noSideEffect, importcpp: "Circle",
                                        header: "Contap_ContAna.hxx".}
proc line*(this: ContapContAna; index: StandardInteger): GpLin {.noSideEffect,
    importcpp: "Line", header: "Contap_ContAna.hxx".}

