##  Created on: 1991-02-21
##  Created by: Isabelle GRIGNON
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
  ../Standard/Standard_Integer, ../Standard/Standard_Real, Extrema_POnCurv

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Hypr"
discard "forward decl of gp_Parab"
discard "forward decl of Extrema_POnCurv"
type
  Extrema_ExtPElC* {.importcpp: "Extrema_ExtPElC", header: "Extrema_ExtPElC.hxx",
                    bycopy.} = object


proc constructExtrema_ExtPElC*(): Extrema_ExtPElC {.constructor,
    importcpp: "Extrema_ExtPElC(@)", header: "Extrema_ExtPElC.hxx".}
proc constructExtrema_ExtPElC*(P: gp_Pnt; C: gp_Lin; Tol: Standard_Real;
                              Uinf: Standard_Real; Usup: Standard_Real): Extrema_ExtPElC {.
    constructor, importcpp: "Extrema_ExtPElC(@)", header: "Extrema_ExtPElC.hxx".}
proc Perform*(this: var Extrema_ExtPElC; P: gp_Pnt; C: gp_Lin; Tol: Standard_Real;
             Uinf: Standard_Real; Usup: Standard_Real) {.importcpp: "Perform",
    header: "Extrema_ExtPElC.hxx".}
proc constructExtrema_ExtPElC*(P: gp_Pnt; C: gp_Circ; Tol: Standard_Real;
                              Uinf: Standard_Real; Usup: Standard_Real): Extrema_ExtPElC {.
    constructor, importcpp: "Extrema_ExtPElC(@)", header: "Extrema_ExtPElC.hxx".}
proc Perform*(this: var Extrema_ExtPElC; P: gp_Pnt; C: gp_Circ; Tol: Standard_Real;
             Uinf: Standard_Real; Usup: Standard_Real) {.importcpp: "Perform",
    header: "Extrema_ExtPElC.hxx".}
proc constructExtrema_ExtPElC*(P: gp_Pnt; C: gp_Elips; Tol: Standard_Real;
                              Uinf: Standard_Real; Usup: Standard_Real): Extrema_ExtPElC {.
    constructor, importcpp: "Extrema_ExtPElC(@)", header: "Extrema_ExtPElC.hxx".}
proc Perform*(this: var Extrema_ExtPElC; P: gp_Pnt; C: gp_Elips; Tol: Standard_Real;
             Uinf: Standard_Real; Usup: Standard_Real) {.importcpp: "Perform",
    header: "Extrema_ExtPElC.hxx".}
proc constructExtrema_ExtPElC*(P: gp_Pnt; C: gp_Hypr; Tol: Standard_Real;
                              Uinf: Standard_Real; Usup: Standard_Real): Extrema_ExtPElC {.
    constructor, importcpp: "Extrema_ExtPElC(@)", header: "Extrema_ExtPElC.hxx".}
proc Perform*(this: var Extrema_ExtPElC; P: gp_Pnt; C: gp_Hypr; Tol: Standard_Real;
             Uinf: Standard_Real; Usup: Standard_Real) {.importcpp: "Perform",
    header: "Extrema_ExtPElC.hxx".}
proc constructExtrema_ExtPElC*(P: gp_Pnt; C: gp_Parab; Tol: Standard_Real;
                              Uinf: Standard_Real; Usup: Standard_Real): Extrema_ExtPElC {.
    constructor, importcpp: "Extrema_ExtPElC(@)", header: "Extrema_ExtPElC.hxx".}
proc Perform*(this: var Extrema_ExtPElC; P: gp_Pnt; C: gp_Parab; Tol: Standard_Real;
             Uinf: Standard_Real; Usup: Standard_Real) {.importcpp: "Perform",
    header: "Extrema_ExtPElC.hxx".}
proc IsDone*(this: Extrema_ExtPElC): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_ExtPElC.hxx".}
proc NbExt*(this: Extrema_ExtPElC): Standard_Integer {.noSideEffect,
    importcpp: "NbExt", header: "Extrema_ExtPElC.hxx".}
proc SquareDistance*(this: Extrema_ExtPElC; N: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "SquareDistance", header: "Extrema_ExtPElC.hxx".}
proc IsMin*(this: Extrema_ExtPElC; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsMin", header: "Extrema_ExtPElC.hxx".}
proc Point*(this: Extrema_ExtPElC; N: Standard_Integer): Extrema_POnCurv {.
    noSideEffect, importcpp: "Point", header: "Extrema_ExtPElC.hxx".}