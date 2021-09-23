##  Created on: 1992-08-06
##  Created by: Laurent BUCHARD
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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../gp/gp_Pnt, ../Standard/Standard_Real

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Lin"
discard "forward decl of IntAna_Quadric"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Parab"
discard "forward decl of gp_Hypr"
discard "forward decl of gp_Pln"
discard "forward decl of gp_Pnt"
type
  IntAna_IntConicQuad* {.importcpp: "IntAna_IntConicQuad",
                        header: "IntAna_IntConicQuad.hxx", bycopy.} = object ## ! Empty
                                                                        ## constructor.


proc constructIntAna_IntConicQuad*(): IntAna_IntConicQuad {.constructor,
    importcpp: "IntAna_IntConicQuad(@)", header: "IntAna_IntConicQuad.hxx".}
proc constructIntAna_IntConicQuad*(L: gp_Lin; Q: IntAna_Quadric): IntAna_IntConicQuad {.
    constructor, importcpp: "IntAna_IntConicQuad(@)",
    header: "IntAna_IntConicQuad.hxx".}
proc Perform*(this: var IntAna_IntConicQuad; L: gp_Lin; Q: IntAna_Quadric) {.
    importcpp: "Perform", header: "IntAna_IntConicQuad.hxx".}
proc constructIntAna_IntConicQuad*(C: gp_Circ; Q: IntAna_Quadric): IntAna_IntConicQuad {.
    constructor, importcpp: "IntAna_IntConicQuad(@)",
    header: "IntAna_IntConicQuad.hxx".}
proc Perform*(this: var IntAna_IntConicQuad; C: gp_Circ; Q: IntAna_Quadric) {.
    importcpp: "Perform", header: "IntAna_IntConicQuad.hxx".}
proc constructIntAna_IntConicQuad*(E: gp_Elips; Q: IntAna_Quadric): IntAna_IntConicQuad {.
    constructor, importcpp: "IntAna_IntConicQuad(@)",
    header: "IntAna_IntConicQuad.hxx".}
proc Perform*(this: var IntAna_IntConicQuad; E: gp_Elips; Q: IntAna_Quadric) {.
    importcpp: "Perform", header: "IntAna_IntConicQuad.hxx".}
proc constructIntAna_IntConicQuad*(P: gp_Parab; Q: IntAna_Quadric): IntAna_IntConicQuad {.
    constructor, importcpp: "IntAna_IntConicQuad(@)",
    header: "IntAna_IntConicQuad.hxx".}
proc Perform*(this: var IntAna_IntConicQuad; P: gp_Parab; Q: IntAna_Quadric) {.
    importcpp: "Perform", header: "IntAna_IntConicQuad.hxx".}
proc constructIntAna_IntConicQuad*(H: gp_Hypr; Q: IntAna_Quadric): IntAna_IntConicQuad {.
    constructor, importcpp: "IntAna_IntConicQuad(@)",
    header: "IntAna_IntConicQuad.hxx".}
proc Perform*(this: var IntAna_IntConicQuad; H: gp_Hypr; Q: IntAna_Quadric) {.
    importcpp: "Perform", header: "IntAna_IntConicQuad.hxx".}
proc constructIntAna_IntConicQuad*(L: gp_Lin; P: gp_Pln; Tolang: Standard_Real;
                                  Tol: Standard_Real = 0; Len: Standard_Real = 0): IntAna_IntConicQuad {.
    constructor, importcpp: "IntAna_IntConicQuad(@)",
    header: "IntAna_IntConicQuad.hxx".}
proc Perform*(this: var IntAna_IntConicQuad; L: gp_Lin; P: gp_Pln;
             Tolang: Standard_Real; Tol: Standard_Real = 0; Len: Standard_Real = 0) {.
    importcpp: "Perform", header: "IntAna_IntConicQuad.hxx".}
proc constructIntAna_IntConicQuad*(C: gp_Circ; P: gp_Pln; Tolang: Standard_Real;
                                  Tol: Standard_Real): IntAna_IntConicQuad {.
    constructor, importcpp: "IntAna_IntConicQuad(@)",
    header: "IntAna_IntConicQuad.hxx".}
proc Perform*(this: var IntAna_IntConicQuad; C: gp_Circ; P: gp_Pln;
             Tolang: Standard_Real; Tol: Standard_Real) {.importcpp: "Perform",
    header: "IntAna_IntConicQuad.hxx".}
proc constructIntAna_IntConicQuad*(E: gp_Elips; P: gp_Pln; Tolang: Standard_Real;
                                  Tol: Standard_Real): IntAna_IntConicQuad {.
    constructor, importcpp: "IntAna_IntConicQuad(@)",
    header: "IntAna_IntConicQuad.hxx".}
proc Perform*(this: var IntAna_IntConicQuad; E: gp_Elips; P: gp_Pln;
             Tolang: Standard_Real; Tol: Standard_Real) {.importcpp: "Perform",
    header: "IntAna_IntConicQuad.hxx".}
proc constructIntAna_IntConicQuad*(Pb: gp_Parab; P: gp_Pln; Tolang: Standard_Real): IntAna_IntConicQuad {.
    constructor, importcpp: "IntAna_IntConicQuad(@)",
    header: "IntAna_IntConicQuad.hxx".}
proc Perform*(this: var IntAna_IntConicQuad; Pb: gp_Parab; P: gp_Pln;
             Tolang: Standard_Real) {.importcpp: "Perform",
                                    header: "IntAna_IntConicQuad.hxx".}
proc constructIntAna_IntConicQuad*(H: gp_Hypr; P: gp_Pln; Tolang: Standard_Real): IntAna_IntConicQuad {.
    constructor, importcpp: "IntAna_IntConicQuad(@)",
    header: "IntAna_IntConicQuad.hxx".}
proc Perform*(this: var IntAna_IntConicQuad; H: gp_Hypr; P: gp_Pln;
             Tolang: Standard_Real) {.importcpp: "Perform",
                                    header: "IntAna_IntConicQuad.hxx".}
proc IsDone*(this: IntAna_IntConicQuad): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "IntAna_IntConicQuad.hxx".}
proc IsInQuadric*(this: IntAna_IntConicQuad): Standard_Boolean {.noSideEffect,
    importcpp: "IsInQuadric", header: "IntAna_IntConicQuad.hxx".}
proc IsParallel*(this: IntAna_IntConicQuad): Standard_Boolean {.noSideEffect,
    importcpp: "IsParallel", header: "IntAna_IntConicQuad.hxx".}
proc NbPoints*(this: IntAna_IntConicQuad): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "IntAna_IntConicQuad.hxx".}
proc Point*(this: IntAna_IntConicQuad; N: Standard_Integer): gp_Pnt {.noSideEffect,
    importcpp: "Point", header: "IntAna_IntConicQuad.hxx".}
proc ParamOnConic*(this: IntAna_IntConicQuad; N: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "ParamOnConic", header: "IntAna_IntConicQuad.hxx".}