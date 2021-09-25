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
  IntAnaQuadQuadGeo* {.importcpp: "IntAna_QuadQuadGeo",
                      header: "IntAna_QuadQuadGeo.hxx", bycopy.} = object ## ! Empty
                                                                     ## constructor.
                                                                     ## ! Initialize the values of inner tolerances.


proc constructIntAnaQuadQuadGeo*(): IntAnaQuadQuadGeo {.constructor,
    importcpp: "IntAna_QuadQuadGeo(@)", header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAnaQuadQuadGeo*(p1: Pln; p2: Pln; tolAng: float; tol: float): IntAnaQuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc perform*(this: var IntAnaQuadQuadGeo; p1: Pln; p2: Pln; tolAng: float; tol: float) {.
    importcpp: "Perform", header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAnaQuadQuadGeo*(p: Pln; c: Cylinder; tolang: float; tol: float;
                                h: float = 0): IntAnaQuadQuadGeo {.constructor,
    importcpp: "IntAna_QuadQuadGeo(@)", header: "IntAna_QuadQuadGeo.hxx".}
proc perform*(this: var IntAnaQuadQuadGeo; p: Pln; c: Cylinder; tolang: float; tol: float;
             h: float = 0) {.importcpp: "Perform", header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAnaQuadQuadGeo*(p: Pln; s: Sphere): IntAnaQuadQuadGeo {.constructor,
    importcpp: "IntAna_QuadQuadGeo(@)", header: "IntAna_QuadQuadGeo.hxx".}
proc perform*(this: var IntAnaQuadQuadGeo; p: Pln; s: Sphere) {.importcpp: "Perform",
    header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAnaQuadQuadGeo*(p: Pln; c: Cone; tolang: float; tol: float): IntAnaQuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc perform*(this: var IntAnaQuadQuadGeo; p: Pln; c: Cone; tolang: float; tol: float) {.
    importcpp: "Perform", header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAnaQuadQuadGeo*(cyl1: Cylinder; cyl2: Cylinder; tol: float): IntAnaQuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc perform*(this: var IntAnaQuadQuadGeo; cyl1: Cylinder; cyl2: Cylinder; tol: float) {.
    importcpp: "Perform", header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAnaQuadQuadGeo*(cyl: Cylinder; sph: Sphere; tol: float): IntAnaQuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc perform*(this: var IntAnaQuadQuadGeo; cyl: Cylinder; sph: Sphere; tol: float) {.
    importcpp: "Perform", header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAnaQuadQuadGeo*(cyl: Cylinder; con: Cone; tol: float): IntAnaQuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc perform*(this: var IntAnaQuadQuadGeo; cyl: Cylinder; con: Cone; tol: float) {.
    importcpp: "Perform", header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAnaQuadQuadGeo*(sph1: Sphere; sph2: Sphere; tol: float): IntAnaQuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc perform*(this: var IntAnaQuadQuadGeo; sph1: Sphere; sph2: Sphere; tol: float) {.
    importcpp: "Perform", header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAnaQuadQuadGeo*(sph: Sphere; con: Cone; tol: float): IntAnaQuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc perform*(this: var IntAnaQuadQuadGeo; sph: Sphere; con: Cone; tol: float) {.
    importcpp: "Perform", header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAnaQuadQuadGeo*(con1: Cone; con2: Cone; tol: float): IntAnaQuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc perform*(this: var IntAnaQuadQuadGeo; con1: Cone; con2: Cone; tol: float) {.
    importcpp: "Perform", header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAnaQuadQuadGeo*(pln: Pln; tor: Torus; tol: float): IntAnaQuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc perform*(this: var IntAnaQuadQuadGeo; pln: Pln; tor: Torus; tol: float) {.
    importcpp: "Perform", header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAnaQuadQuadGeo*(cyl: Cylinder; tor: Torus; tol: float): IntAnaQuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc perform*(this: var IntAnaQuadQuadGeo; cyl: Cylinder; tor: Torus; tol: float) {.
    importcpp: "Perform", header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAnaQuadQuadGeo*(con: Cone; tor: Torus; tol: float): IntAnaQuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc perform*(this: var IntAnaQuadQuadGeo; con: Cone; tor: Torus; tol: float) {.
    importcpp: "Perform", header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAnaQuadQuadGeo*(sph: Sphere; tor: Torus; tol: float): IntAnaQuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc perform*(this: var IntAnaQuadQuadGeo; sph: Sphere; tor: Torus; tol: float) {.
    importcpp: "Perform", header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAnaQuadQuadGeo*(tor1: Torus; tor2: Torus; tol: float): IntAnaQuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc perform*(this: var IntAnaQuadQuadGeo; tor1: Torus; tor2: Torus; tol: float) {.
    importcpp: "Perform", header: "IntAna_QuadQuadGeo.hxx".}
proc isDone*(this: IntAnaQuadQuadGeo): bool {.noSideEffect, importcpp: "IsDone",
    header: "IntAna_QuadQuadGeo.hxx".}
proc typeInter*(this: IntAnaQuadQuadGeo): IntAnaResultType {.noSideEffect,
    importcpp: "TypeInter", header: "IntAna_QuadQuadGeo.hxx".}
proc nbSolutions*(this: IntAnaQuadQuadGeo): int {.noSideEffect,
    importcpp: "NbSolutions", header: "IntAna_QuadQuadGeo.hxx".}
proc point*(this: IntAnaQuadQuadGeo; num: int): Pnt {.noSideEffect, importcpp: "Point",
    header: "IntAna_QuadQuadGeo.hxx".}
proc line*(this: IntAnaQuadQuadGeo; num: int): Lin {.noSideEffect, importcpp: "Line",
    header: "IntAna_QuadQuadGeo.hxx".}
proc circle*(this: IntAnaQuadQuadGeo; num: int): Circ {.noSideEffect,
    importcpp: "Circle", header: "IntAna_QuadQuadGeo.hxx".}
proc ellipse*(this: IntAnaQuadQuadGeo; num: int): Elips {.noSideEffect,
    importcpp: "Ellipse", header: "IntAna_QuadQuadGeo.hxx".}
proc parabola*(this: IntAnaQuadQuadGeo; num: int): Parab {.noSideEffect,
    importcpp: "Parabola", header: "IntAna_QuadQuadGeo.hxx".}
proc hyperbola*(this: IntAnaQuadQuadGeo; num: int): Hypr {.noSideEffect,
    importcpp: "Hyperbola", header: "IntAna_QuadQuadGeo.hxx".}
proc hasCommonGen*(this: IntAnaQuadQuadGeo): bool {.noSideEffect,
    importcpp: "HasCommonGen", header: "IntAna_QuadQuadGeo.hxx".}
proc pChar*(this: IntAnaQuadQuadGeo): Pnt {.noSideEffect, importcpp: "PChar",
                                        header: "IntAna_QuadQuadGeo.hxx".}
