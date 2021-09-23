##  Created on: 1992-08-19
##  Created by: Modelistation
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real, Hatch_SequenceOfLine,
  ../Standard/Standard_Boolean, Hatch_LineForm, ../Standard/Standard_Integer

discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Dir2d"
discard "forward decl of gp_Pnt2d"
type
  Hatch_Hatcher* {.importcpp: "Hatch_Hatcher", header: "Hatch_Hatcher.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## a
                                                                                      ## empty
                                                                                      ## hatcher.
                                                                                      ## <Tol>
                                                                                      ## is
                                                                                      ## the
                                                                                      ## tolerance
                                                                                      ##
                                                                                      ## !
                                                                                      ## for
                                                                                      ## intersections.


proc constructHatch_Hatcher*(Tol: Standard_Real;
                            Oriented: Standard_Boolean = Standard_True): Hatch_Hatcher {.
    constructor, importcpp: "Hatch_Hatcher(@)", header: "Hatch_Hatcher.hxx".}
proc Tolerance*(this: var Hatch_Hatcher; Tol: Standard_Real) {.importcpp: "Tolerance",
    header: "Hatch_Hatcher.hxx".}
proc Tolerance*(this: Hatch_Hatcher): Standard_Real {.noSideEffect,
    importcpp: "Tolerance", header: "Hatch_Hatcher.hxx".}
proc AddLine*(this: var Hatch_Hatcher; L: gp_Lin2d; T: Hatch_LineForm = Hatch_ANYLINE) {.
    importcpp: "AddLine", header: "Hatch_Hatcher.hxx".}
proc AddLine*(this: var Hatch_Hatcher; D: gp_Dir2d; Dist: Standard_Real) {.
    importcpp: "AddLine", header: "Hatch_Hatcher.hxx".}
proc AddXLine*(this: var Hatch_Hatcher; X: Standard_Real) {.importcpp: "AddXLine",
    header: "Hatch_Hatcher.hxx".}
proc AddYLine*(this: var Hatch_Hatcher; Y: Standard_Real) {.importcpp: "AddYLine",
    header: "Hatch_Hatcher.hxx".}
proc Trim*(this: var Hatch_Hatcher; L: gp_Lin2d; Index: Standard_Integer = 0) {.
    importcpp: "Trim", header: "Hatch_Hatcher.hxx".}
proc Trim*(this: var Hatch_Hatcher; L: gp_Lin2d; Start: Standard_Real;
          End: Standard_Real; Index: Standard_Integer = 0) {.importcpp: "Trim",
    header: "Hatch_Hatcher.hxx".}
proc Trim*(this: var Hatch_Hatcher; P1: gp_Pnt2d; P2: gp_Pnt2d;
          Index: Standard_Integer = 0) {.importcpp: "Trim",
                                     header: "Hatch_Hatcher.hxx".}
proc NbIntervals*(this: Hatch_Hatcher): Standard_Integer {.noSideEffect,
    importcpp: "NbIntervals", header: "Hatch_Hatcher.hxx".}
proc NbLines*(this: Hatch_Hatcher): Standard_Integer {.noSideEffect,
    importcpp: "NbLines", header: "Hatch_Hatcher.hxx".}
proc Line*(this: Hatch_Hatcher; I: Standard_Integer): gp_Lin2d {.noSideEffect,
    importcpp: "Line", header: "Hatch_Hatcher.hxx".}
proc LineForm*(this: Hatch_Hatcher; I: Standard_Integer): Hatch_LineForm {.
    noSideEffect, importcpp: "LineForm", header: "Hatch_Hatcher.hxx".}
proc IsXLine*(this: Hatch_Hatcher; I: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsXLine", header: "Hatch_Hatcher.hxx".}
proc IsYLine*(this: Hatch_Hatcher; I: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsYLine", header: "Hatch_Hatcher.hxx".}
proc Coordinate*(this: Hatch_Hatcher; I: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Coordinate", header: "Hatch_Hatcher.hxx".}
proc NbIntervals*(this: Hatch_Hatcher; I: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "Hatch_Hatcher.hxx".}
proc Start*(this: Hatch_Hatcher; I: Standard_Integer; J: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Start", header: "Hatch_Hatcher.hxx".}
proc StartIndex*(this: Hatch_Hatcher; I: Standard_Integer; J: Standard_Integer;
                Index: var Standard_Integer; Par2: var Standard_Real) {.noSideEffect,
    importcpp: "StartIndex", header: "Hatch_Hatcher.hxx".}
proc End*(this: Hatch_Hatcher; I: Standard_Integer; J: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "End", header: "Hatch_Hatcher.hxx".}
proc EndIndex*(this: Hatch_Hatcher; I: Standard_Integer; J: Standard_Integer;
              Index: var Standard_Integer; Par2: var Standard_Real) {.noSideEffect,
    importcpp: "EndIndex", header: "Hatch_Hatcher.hxx".}