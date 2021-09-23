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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../GeomAbs/GeomAbs_CurveType, ../gp/gp_Pnt,
  ../gp/gp_Dir, ../Standard/Standard_Real, ../gp/gp_Circ

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
  Contap_ContAna* {.importcpp: "Contap_ContAna", header: "Contap_ContAna.hxx", bycopy.} = object


proc constructContap_ContAna*(): Contap_ContAna {.constructor,
    importcpp: "Contap_ContAna(@)", header: "Contap_ContAna.hxx".}
proc Perform*(this: var Contap_ContAna; S: gp_Sphere; D: gp_Dir) {.importcpp: "Perform",
    header: "Contap_ContAna.hxx".}
proc Perform*(this: var Contap_ContAna; S: gp_Sphere; D: gp_Dir; Ang: Standard_Real) {.
    importcpp: "Perform", header: "Contap_ContAna.hxx".}
proc Perform*(this: var Contap_ContAna; S: gp_Sphere; Eye: gp_Pnt) {.
    importcpp: "Perform", header: "Contap_ContAna.hxx".}
proc Perform*(this: var Contap_ContAna; C: gp_Cylinder; D: gp_Dir) {.
    importcpp: "Perform", header: "Contap_ContAna.hxx".}
proc Perform*(this: var Contap_ContAna; C: gp_Cylinder; D: gp_Dir; Ang: Standard_Real) {.
    importcpp: "Perform", header: "Contap_ContAna.hxx".}
proc Perform*(this: var Contap_ContAna; C: gp_Cylinder; Eye: gp_Pnt) {.
    importcpp: "Perform", header: "Contap_ContAna.hxx".}
proc Perform*(this: var Contap_ContAna; C: gp_Cone; D: gp_Dir) {.importcpp: "Perform",
    header: "Contap_ContAna.hxx".}
proc Perform*(this: var Contap_ContAna; C: gp_Cone; D: gp_Dir; Ang: Standard_Real) {.
    importcpp: "Perform", header: "Contap_ContAna.hxx".}
proc Perform*(this: var Contap_ContAna; C: gp_Cone; Eye: gp_Pnt) {.importcpp: "Perform",
    header: "Contap_ContAna.hxx".}
proc IsDone*(this: Contap_ContAna): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Contap_ContAna.hxx".}
proc NbContours*(this: Contap_ContAna): Standard_Integer {.noSideEffect,
    importcpp: "NbContours", header: "Contap_ContAna.hxx".}
proc TypeContour*(this: Contap_ContAna): GeomAbs_CurveType {.noSideEffect,
    importcpp: "TypeContour", header: "Contap_ContAna.hxx".}
proc Circle*(this: Contap_ContAna): gp_Circ {.noSideEffect, importcpp: "Circle",
    header: "Contap_ContAna.hxx".}
proc Line*(this: Contap_ContAna; Index: Standard_Integer): gp_Lin {.noSideEffect,
    importcpp: "Line", header: "Contap_ContAna.hxx".}