##  Created on: 1993-12-13
##  Created by: Christophe MARION
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
  ../Standard/Standard_Integer, ../Standard/Standard_Real, Extrema_POnCurv2d

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Elips2d"
discard "forward decl of gp_Hypr2d"
discard "forward decl of gp_Parab2d"
discard "forward decl of Extrema_POnCurv2d"
type
  Extrema_ExtPElC2d* {.importcpp: "Extrema_ExtPElC2d",
                      header: "Extrema_ExtPElC2d.hxx", bycopy.} = object


proc constructExtrema_ExtPElC2d*(): Extrema_ExtPElC2d {.constructor,
    importcpp: "Extrema_ExtPElC2d(@)", header: "Extrema_ExtPElC2d.hxx".}
proc constructExtrema_ExtPElC2d*(P: gp_Pnt2d; C: gp_Lin2d; Tol: Standard_Real;
                                Uinf: Standard_Real; Usup: Standard_Real): Extrema_ExtPElC2d {.
    constructor, importcpp: "Extrema_ExtPElC2d(@)", header: "Extrema_ExtPElC2d.hxx".}
proc Perform*(this: var Extrema_ExtPElC2d; P: gp_Pnt2d; L: gp_Lin2d; Tol: Standard_Real;
             Uinf: Standard_Real; Usup: Standard_Real) {.importcpp: "Perform",
    header: "Extrema_ExtPElC2d.hxx".}
proc constructExtrema_ExtPElC2d*(P: gp_Pnt2d; C: gp_Circ2d; Tol: Standard_Real;
                                Uinf: Standard_Real; Usup: Standard_Real): Extrema_ExtPElC2d {.
    constructor, importcpp: "Extrema_ExtPElC2d(@)", header: "Extrema_ExtPElC2d.hxx".}
proc Perform*(this: var Extrema_ExtPElC2d; P: gp_Pnt2d; C: gp_Circ2d;
             Tol: Standard_Real; Uinf: Standard_Real; Usup: Standard_Real) {.
    importcpp: "Perform", header: "Extrema_ExtPElC2d.hxx".}
proc constructExtrema_ExtPElC2d*(P: gp_Pnt2d; C: gp_Elips2d; Tol: Standard_Real;
                                Uinf: Standard_Real; Usup: Standard_Real): Extrema_ExtPElC2d {.
    constructor, importcpp: "Extrema_ExtPElC2d(@)", header: "Extrema_ExtPElC2d.hxx".}
proc Perform*(this: var Extrema_ExtPElC2d; P: gp_Pnt2d; C: gp_Elips2d;
             Tol: Standard_Real; Uinf: Standard_Real; Usup: Standard_Real) {.
    importcpp: "Perform", header: "Extrema_ExtPElC2d.hxx".}
proc constructExtrema_ExtPElC2d*(P: gp_Pnt2d; C: gp_Hypr2d; Tol: Standard_Real;
                                Uinf: Standard_Real; Usup: Standard_Real): Extrema_ExtPElC2d {.
    constructor, importcpp: "Extrema_ExtPElC2d(@)", header: "Extrema_ExtPElC2d.hxx".}
proc Perform*(this: var Extrema_ExtPElC2d; P: gp_Pnt2d; C: gp_Hypr2d;
             Tol: Standard_Real; Uinf: Standard_Real; Usup: Standard_Real) {.
    importcpp: "Perform", header: "Extrema_ExtPElC2d.hxx".}
proc constructExtrema_ExtPElC2d*(P: gp_Pnt2d; C: gp_Parab2d; Tol: Standard_Real;
                                Uinf: Standard_Real; Usup: Standard_Real): Extrema_ExtPElC2d {.
    constructor, importcpp: "Extrema_ExtPElC2d(@)", header: "Extrema_ExtPElC2d.hxx".}
proc Perform*(this: var Extrema_ExtPElC2d; P: gp_Pnt2d; C: gp_Parab2d;
             Tol: Standard_Real; Uinf: Standard_Real; Usup: Standard_Real) {.
    importcpp: "Perform", header: "Extrema_ExtPElC2d.hxx".}
proc IsDone*(this: Extrema_ExtPElC2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_ExtPElC2d.hxx".}
proc NbExt*(this: Extrema_ExtPElC2d): Standard_Integer {.noSideEffect,
    importcpp: "NbExt", header: "Extrema_ExtPElC2d.hxx".}
proc SquareDistance*(this: Extrema_ExtPElC2d; N: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "SquareDistance", header: "Extrema_ExtPElC2d.hxx".}
proc IsMin*(this: Extrema_ExtPElC2d; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsMin", header: "Extrema_ExtPElC2d.hxx".}
proc Point*(this: Extrema_ExtPElC2d; N: Standard_Integer): Extrema_POnCurv2d {.
    noSideEffect, importcpp: "Point", header: "Extrema_ExtPElC2d.hxx".}