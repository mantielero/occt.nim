import extrema_types
import ../tkmath/gp/gp_types

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

discard "forward decl of Pnt2dObj"
discard "forward decl of Lin2dObj"
discard "forward decl of Circ2dObj"
discard "forward decl of Elips2dObj"
discard "forward decl of Hypr2dObj"
discard "forward decl of Parab2dObj"

proc newExtrema_ExtPElC2d*(): Extrema_ExtPElC2d {.cdecl, constructor,
    importcpp: "Extrema_ExtPElC2d(@)", header: "Extrema_ExtPElC2d.hxx".}
proc newExtrema_ExtPElC2d*(P: Pnt2dObj; C: Lin2dObj; Tol: cfloat; Uinf: cfloat;
                          Usup: cfloat): Extrema_ExtPElC2d {.cdecl, constructor,
    importcpp: "Extrema_ExtPElC2d(@)", header: "Extrema_ExtPElC2d.hxx".}
proc Perform*(this: var Extrema_ExtPElC2d; P: Pnt2dObj; L: Lin2dObj; Tol: cfloat;
             Uinf: cfloat; Usup: cfloat) {.cdecl, importcpp: "Perform",
                                       header: "Extrema_ExtPElC2d.hxx".}
proc newExtrema_ExtPElC2d*(P: Pnt2dObj; C: Circ2dObj; Tol: cfloat; Uinf: cfloat;
                          Usup: cfloat): Extrema_ExtPElC2d {.cdecl, constructor,
    importcpp: "Extrema_ExtPElC2d(@)", header: "Extrema_ExtPElC2d.hxx".}
proc Perform*(this: var Extrema_ExtPElC2d; P: Pnt2dObj; C: Circ2dObj; Tol: cfloat;
             Uinf: cfloat; Usup: cfloat) {.cdecl, importcpp: "Perform",
                                       header: "Extrema_ExtPElC2d.hxx".}
proc newExtrema_ExtPElC2d*(P: Pnt2dObj; C: Elips2dObj; Tol: cfloat; Uinf: cfloat;
                          Usup: cfloat): Extrema_ExtPElC2d {.cdecl, constructor,
    importcpp: "Extrema_ExtPElC2d(@)", header: "Extrema_ExtPElC2d.hxx".}
proc Perform*(this: var Extrema_ExtPElC2d; P: Pnt2dObj; C: Elips2dObj; Tol: cfloat;
             Uinf: cfloat; Usup: cfloat) {.cdecl, importcpp: "Perform",
                                       header: "Extrema_ExtPElC2d.hxx".}
proc newExtrema_ExtPElC2d*(P: Pnt2dObj; C: Hypr2dObj; Tol: cfloat; Uinf: cfloat;
                          Usup: cfloat): Extrema_ExtPElC2d {.cdecl, constructor,
    importcpp: "Extrema_ExtPElC2d(@)", header: "Extrema_ExtPElC2d.hxx".}
proc Perform*(this: var Extrema_ExtPElC2d; P: Pnt2dObj; C: Hypr2dObj; Tol: cfloat;
             Uinf: cfloat; Usup: cfloat) {.cdecl, importcpp: "Perform",
                                       header: "Extrema_ExtPElC2d.hxx".}
proc newExtrema_ExtPElC2d*(P: Pnt2dObj; C: Parab2dObj; Tol: cfloat; Uinf: cfloat;
                          Usup: cfloat): Extrema_ExtPElC2d {.cdecl, constructor,
    importcpp: "Extrema_ExtPElC2d(@)", header: "Extrema_ExtPElC2d.hxx".}
proc Perform*(this: var Extrema_ExtPElC2d; P: Pnt2dObj; C: Parab2dObj; Tol: cfloat;
             Uinf: cfloat; Usup: cfloat) {.cdecl, importcpp: "Perform",
                                       header: "Extrema_ExtPElC2d.hxx".}
proc IsDone*(this: Extrema_ExtPElC2d): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "Extrema_ExtPElC2d.hxx".}
proc NbExt*(this: Extrema_ExtPElC2d): cint {.noSideEffect, cdecl, importcpp: "NbExt",
    header: "Extrema_ExtPElC2d.hxx".}
proc SquareDistance*(this: Extrema_ExtPElC2d; N: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_ExtPElC2d.hxx".}
proc IsMin*(this: Extrema_ExtPElC2d; N: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsMin", header: "Extrema_ExtPElC2d.hxx".}
proc Point*(this: Extrema_ExtPElC2d; N: cint): Extrema_POnCurv2d {.noSideEffect, cdecl,
    importcpp: "Point", header: "Extrema_ExtPElC2d.hxx".}