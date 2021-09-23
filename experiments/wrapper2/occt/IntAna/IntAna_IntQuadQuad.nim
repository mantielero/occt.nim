##  Created on: 1991-05-15
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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean, IntAna_Curve,
  ../Standard/Standard_Integer, ../gp/gp_Pnt, ../Standard/Standard_Real

discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Cylinder"
discard "forward decl of IntAna_Quadric"
discard "forward decl of gp_Cone"
discard "forward decl of IntAna_Curve"
discard "forward decl of gp_Pnt"
type
  IntAna_IntQuadQuad* {.importcpp: "IntAna_IntQuadQuad",
                       header: "IntAna_IntQuadQuad.hxx", bycopy.} = object ## ! Empty
                                                                      ## Constructor
                                                                      ## ! Set the next and previous fields. Private method.


proc constructIntAna_IntQuadQuad*(): IntAna_IntQuadQuad {.constructor,
    importcpp: "IntAna_IntQuadQuad(@)", header: "IntAna_IntQuadQuad.hxx".}
proc constructIntAna_IntQuadQuad*(C: gp_Cylinder; Q: IntAna_Quadric;
                                 Tol: Standard_Real): IntAna_IntQuadQuad {.
    constructor, importcpp: "IntAna_IntQuadQuad(@)",
    header: "IntAna_IntQuadQuad.hxx".}
proc constructIntAna_IntQuadQuad*(C: gp_Cone; Q: IntAna_Quadric; Tol: Standard_Real): IntAna_IntQuadQuad {.
    constructor, importcpp: "IntAna_IntQuadQuad(@)",
    header: "IntAna_IntQuadQuad.hxx".}
proc Perform*(this: var IntAna_IntQuadQuad; C: gp_Cylinder; Q: IntAna_Quadric;
             Tol: Standard_Real) {.importcpp: "Perform",
                                 header: "IntAna_IntQuadQuad.hxx".}
proc Perform*(this: var IntAna_IntQuadQuad; C: gp_Cone; Q: IntAna_Quadric;
             Tol: Standard_Real) {.importcpp: "Perform",
                                 header: "IntAna_IntQuadQuad.hxx".}
proc IsDone*(this: IntAna_IntQuadQuad): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "IntAna_IntQuadQuad.hxx".}
proc IdenticalElements*(this: IntAna_IntQuadQuad): Standard_Boolean {.noSideEffect,
    importcpp: "IdenticalElements", header: "IntAna_IntQuadQuad.hxx".}
proc NbCurve*(this: IntAna_IntQuadQuad): Standard_Integer {.noSideEffect,
    importcpp: "NbCurve", header: "IntAna_IntQuadQuad.hxx".}
proc Curve*(this: IntAna_IntQuadQuad; N: Standard_Integer): IntAna_Curve {.
    noSideEffect, importcpp: "Curve", header: "IntAna_IntQuadQuad.hxx".}
proc NbPnt*(this: IntAna_IntQuadQuad): Standard_Integer {.noSideEffect,
    importcpp: "NbPnt", header: "IntAna_IntQuadQuad.hxx".}
proc Point*(this: IntAna_IntQuadQuad; N: Standard_Integer): gp_Pnt {.noSideEffect,
    importcpp: "Point", header: "IntAna_IntQuadQuad.hxx".}
proc Parameters*(this: IntAna_IntQuadQuad; N: Standard_Integer;
                U1: var Standard_Real; U2: var Standard_Real) {.noSideEffect,
    importcpp: "Parameters", header: "IntAna_IntQuadQuad.hxx".}
proc HasNextCurve*(this: IntAna_IntQuadQuad; I: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "HasNextCurve", header: "IntAna_IntQuadQuad.hxx".}
proc NextCurve*(this: IntAna_IntQuadQuad; I: Standard_Integer;
               theOpposite: var Standard_Boolean): Standard_Integer {.noSideEffect,
    importcpp: "NextCurve", header: "IntAna_IntQuadQuad.hxx".}
proc HasPreviousCurve*(this: IntAna_IntQuadQuad; I: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "HasPreviousCurve", header: "IntAna_IntQuadQuad.hxx".}
proc PreviousCurve*(this: IntAna_IntQuadQuad; I: Standard_Integer;
                   theOpposite: var Standard_Boolean): Standard_Integer {.
    noSideEffect, importcpp: "PreviousCurve", header: "IntAna_IntQuadQuad.hxx".}