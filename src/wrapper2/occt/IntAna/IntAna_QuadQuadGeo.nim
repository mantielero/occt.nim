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
  ../Standard/Standard_Integer, IntAna_ResultType, ../gp/gp_Pnt, ../gp/gp_Dir,
  ../Standard/Standard_Real

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pln"
discard "forward decl of gp_Cylinder"
discard "forward decl of gp_Sphere"
discard "forward decl of gp_Cone"
discard "forward decl of gp_Torus"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Parab"
discard "forward decl of gp_Hypr"
type
  IntAna_QuadQuadGeo* {.importcpp: "IntAna_QuadQuadGeo",
                       header: "IntAna_QuadQuadGeo.hxx", bycopy.} = object ## ! Empty
                                                                      ## constructor.
                                                                      ## ! Initialize the values of inner
                                                                      ## tolerances.


proc constructIntAna_QuadQuadGeo*(): IntAna_QuadQuadGeo {.constructor,
    importcpp: "IntAna_QuadQuadGeo(@)", header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAna_QuadQuadGeo*(P1: gp_Pln; P2: gp_Pln; TolAng: Standard_Real;
                                 Tol: Standard_Real): IntAna_QuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc Perform*(this: var IntAna_QuadQuadGeo; P1: gp_Pln; P2: gp_Pln;
             TolAng: Standard_Real; Tol: Standard_Real) {.importcpp: "Perform",
    header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAna_QuadQuadGeo*(P: gp_Pln; C: gp_Cylinder; Tolang: Standard_Real;
                                 Tol: Standard_Real; H: Standard_Real = 0): IntAna_QuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc Perform*(this: var IntAna_QuadQuadGeo; P: gp_Pln; C: gp_Cylinder;
             Tolang: Standard_Real; Tol: Standard_Real; H: Standard_Real = 0) {.
    importcpp: "Perform", header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAna_QuadQuadGeo*(P: gp_Pln; S: gp_Sphere): IntAna_QuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc Perform*(this: var IntAna_QuadQuadGeo; P: gp_Pln; S: gp_Sphere) {.
    importcpp: "Perform", header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAna_QuadQuadGeo*(P: gp_Pln; C: gp_Cone; Tolang: Standard_Real;
                                 Tol: Standard_Real): IntAna_QuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc Perform*(this: var IntAna_QuadQuadGeo; P: gp_Pln; C: gp_Cone;
             Tolang: Standard_Real; Tol: Standard_Real) {.importcpp: "Perform",
    header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAna_QuadQuadGeo*(Cyl1: gp_Cylinder; Cyl2: gp_Cylinder;
                                 Tol: Standard_Real): IntAna_QuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc Perform*(this: var IntAna_QuadQuadGeo; Cyl1: gp_Cylinder; Cyl2: gp_Cylinder;
             Tol: Standard_Real) {.importcpp: "Perform",
                                 header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAna_QuadQuadGeo*(Cyl: gp_Cylinder; Sph: gp_Sphere;
                                 Tol: Standard_Real): IntAna_QuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc Perform*(this: var IntAna_QuadQuadGeo; Cyl: gp_Cylinder; Sph: gp_Sphere;
             Tol: Standard_Real) {.importcpp: "Perform",
                                 header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAna_QuadQuadGeo*(Cyl: gp_Cylinder; Con: gp_Cone; Tol: Standard_Real): IntAna_QuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc Perform*(this: var IntAna_QuadQuadGeo; Cyl: gp_Cylinder; Con: gp_Cone;
             Tol: Standard_Real) {.importcpp: "Perform",
                                 header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAna_QuadQuadGeo*(Sph1: gp_Sphere; Sph2: gp_Sphere;
                                 Tol: Standard_Real): IntAna_QuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc Perform*(this: var IntAna_QuadQuadGeo; Sph1: gp_Sphere; Sph2: gp_Sphere;
             Tol: Standard_Real) {.importcpp: "Perform",
                                 header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAna_QuadQuadGeo*(Sph: gp_Sphere; Con: gp_Cone; Tol: Standard_Real): IntAna_QuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc Perform*(this: var IntAna_QuadQuadGeo; Sph: gp_Sphere; Con: gp_Cone;
             Tol: Standard_Real) {.importcpp: "Perform",
                                 header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAna_QuadQuadGeo*(Con1: gp_Cone; Con2: gp_Cone; Tol: Standard_Real): IntAna_QuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc Perform*(this: var IntAna_QuadQuadGeo; Con1: gp_Cone; Con2: gp_Cone;
             Tol: Standard_Real) {.importcpp: "Perform",
                                 header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAna_QuadQuadGeo*(Pln: gp_Pln; Tor: gp_Torus; Tol: Standard_Real): IntAna_QuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc Perform*(this: var IntAna_QuadQuadGeo; Pln: gp_Pln; Tor: gp_Torus;
             Tol: Standard_Real) {.importcpp: "Perform",
                                 header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAna_QuadQuadGeo*(Cyl: gp_Cylinder; Tor: gp_Torus; Tol: Standard_Real): IntAna_QuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc Perform*(this: var IntAna_QuadQuadGeo; Cyl: gp_Cylinder; Tor: gp_Torus;
             Tol: Standard_Real) {.importcpp: "Perform",
                                 header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAna_QuadQuadGeo*(Con: gp_Cone; Tor: gp_Torus; Tol: Standard_Real): IntAna_QuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc Perform*(this: var IntAna_QuadQuadGeo; Con: gp_Cone; Tor: gp_Torus;
             Tol: Standard_Real) {.importcpp: "Perform",
                                 header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAna_QuadQuadGeo*(Sph: gp_Sphere; Tor: gp_Torus; Tol: Standard_Real): IntAna_QuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc Perform*(this: var IntAna_QuadQuadGeo; Sph: gp_Sphere; Tor: gp_Torus;
             Tol: Standard_Real) {.importcpp: "Perform",
                                 header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAna_QuadQuadGeo*(Tor1: gp_Torus; Tor2: gp_Torus; Tol: Standard_Real): IntAna_QuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc Perform*(this: var IntAna_QuadQuadGeo; Tor1: gp_Torus; Tor2: gp_Torus;
             Tol: Standard_Real) {.importcpp: "Perform",
                                 header: "IntAna_QuadQuadGeo.hxx".}
proc IsDone*(this: IntAna_QuadQuadGeo): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "IntAna_QuadQuadGeo.hxx".}
proc TypeInter*(this: IntAna_QuadQuadGeo): IntAna_ResultType {.noSideEffect,
    importcpp: "TypeInter", header: "IntAna_QuadQuadGeo.hxx".}
proc NbSolutions*(this: IntAna_QuadQuadGeo): Standard_Integer {.noSideEffect,
    importcpp: "NbSolutions", header: "IntAna_QuadQuadGeo.hxx".}
proc Point*(this: IntAna_QuadQuadGeo; Num: Standard_Integer): gp_Pnt {.noSideEffect,
    importcpp: "Point", header: "IntAna_QuadQuadGeo.hxx".}
proc Line*(this: IntAna_QuadQuadGeo; Num: Standard_Integer): gp_Lin {.noSideEffect,
    importcpp: "Line", header: "IntAna_QuadQuadGeo.hxx".}
proc Circle*(this: IntAna_QuadQuadGeo; Num: Standard_Integer): gp_Circ {.noSideEffect,
    importcpp: "Circle", header: "IntAna_QuadQuadGeo.hxx".}
proc Ellipse*(this: IntAna_QuadQuadGeo; Num: Standard_Integer): gp_Elips {.
    noSideEffect, importcpp: "Ellipse", header: "IntAna_QuadQuadGeo.hxx".}
proc Parabola*(this: IntAna_QuadQuadGeo; Num: Standard_Integer): gp_Parab {.
    noSideEffect, importcpp: "Parabola", header: "IntAna_QuadQuadGeo.hxx".}
proc Hyperbola*(this: IntAna_QuadQuadGeo; Num: Standard_Integer): gp_Hypr {.
    noSideEffect, importcpp: "Hyperbola", header: "IntAna_QuadQuadGeo.hxx".}
proc HasCommonGen*(this: IntAna_QuadQuadGeo): Standard_Boolean {.noSideEffect,
    importcpp: "HasCommonGen", header: "IntAna_QuadQuadGeo.hxx".}
proc PChar*(this: IntAna_QuadQuadGeo): gp_Pnt {.noSideEffect, importcpp: "PChar",
    header: "IntAna_QuadQuadGeo.hxx".}