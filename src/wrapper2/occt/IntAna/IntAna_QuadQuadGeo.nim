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
proc constructIntAnaQuadQuadGeo*(p1: GpPln; p2: GpPln; tolAng: StandardReal;
                                tol: StandardReal): IntAnaQuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc perform*(this: var IntAnaQuadQuadGeo; p1: GpPln; p2: GpPln; tolAng: StandardReal;
             tol: StandardReal) {.importcpp: "Perform",
                                header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAnaQuadQuadGeo*(p: GpPln; c: GpCylinder; tolang: StandardReal;
                                tol: StandardReal; h: StandardReal = 0): IntAnaQuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc perform*(this: var IntAnaQuadQuadGeo; p: GpPln; c: GpCylinder;
             tolang: StandardReal; tol: StandardReal; h: StandardReal = 0) {.
    importcpp: "Perform", header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAnaQuadQuadGeo*(p: GpPln; s: GpSphere): IntAnaQuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc perform*(this: var IntAnaQuadQuadGeo; p: GpPln; s: GpSphere) {.
    importcpp: "Perform", header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAnaQuadQuadGeo*(p: GpPln; c: GpCone; tolang: StandardReal;
                                tol: StandardReal): IntAnaQuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc perform*(this: var IntAnaQuadQuadGeo; p: GpPln; c: GpCone; tolang: StandardReal;
             tol: StandardReal) {.importcpp: "Perform",
                                header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAnaQuadQuadGeo*(cyl1: GpCylinder; cyl2: GpCylinder;
                                tol: StandardReal): IntAnaQuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc perform*(this: var IntAnaQuadQuadGeo; cyl1: GpCylinder; cyl2: GpCylinder;
             tol: StandardReal) {.importcpp: "Perform",
                                header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAnaQuadQuadGeo*(cyl: GpCylinder; sph: GpSphere; tol: StandardReal): IntAnaQuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc perform*(this: var IntAnaQuadQuadGeo; cyl: GpCylinder; sph: GpSphere;
             tol: StandardReal) {.importcpp: "Perform",
                                header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAnaQuadQuadGeo*(cyl: GpCylinder; con: GpCone; tol: StandardReal): IntAnaQuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc perform*(this: var IntAnaQuadQuadGeo; cyl: GpCylinder; con: GpCone;
             tol: StandardReal) {.importcpp: "Perform",
                                header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAnaQuadQuadGeo*(sph1: GpSphere; sph2: GpSphere; tol: StandardReal): IntAnaQuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc perform*(this: var IntAnaQuadQuadGeo; sph1: GpSphere; sph2: GpSphere;
             tol: StandardReal) {.importcpp: "Perform",
                                header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAnaQuadQuadGeo*(sph: GpSphere; con: GpCone; tol: StandardReal): IntAnaQuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc perform*(this: var IntAnaQuadQuadGeo; sph: GpSphere; con: GpCone; tol: StandardReal) {.
    importcpp: "Perform", header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAnaQuadQuadGeo*(con1: GpCone; con2: GpCone; tol: StandardReal): IntAnaQuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc perform*(this: var IntAnaQuadQuadGeo; con1: GpCone; con2: GpCone; tol: StandardReal) {.
    importcpp: "Perform", header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAnaQuadQuadGeo*(pln: GpPln; tor: GpTorus; tol: StandardReal): IntAnaQuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc perform*(this: var IntAnaQuadQuadGeo; pln: GpPln; tor: GpTorus; tol: StandardReal) {.
    importcpp: "Perform", header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAnaQuadQuadGeo*(cyl: GpCylinder; tor: GpTorus; tol: StandardReal): IntAnaQuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc perform*(this: var IntAnaQuadQuadGeo; cyl: GpCylinder; tor: GpTorus;
             tol: StandardReal) {.importcpp: "Perform",
                                header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAnaQuadQuadGeo*(con: GpCone; tor: GpTorus; tol: StandardReal): IntAnaQuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc perform*(this: var IntAnaQuadQuadGeo; con: GpCone; tor: GpTorus; tol: StandardReal) {.
    importcpp: "Perform", header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAnaQuadQuadGeo*(sph: GpSphere; tor: GpTorus; tol: StandardReal): IntAnaQuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc perform*(this: var IntAnaQuadQuadGeo; sph: GpSphere; tor: GpTorus;
             tol: StandardReal) {.importcpp: "Perform",
                                header: "IntAna_QuadQuadGeo.hxx".}
proc constructIntAnaQuadQuadGeo*(tor1: GpTorus; tor2: GpTorus; tol: StandardReal): IntAnaQuadQuadGeo {.
    constructor, importcpp: "IntAna_QuadQuadGeo(@)",
    header: "IntAna_QuadQuadGeo.hxx".}
proc perform*(this: var IntAnaQuadQuadGeo; tor1: GpTorus; tor2: GpTorus;
             tol: StandardReal) {.importcpp: "Perform",
                                header: "IntAna_QuadQuadGeo.hxx".}
proc isDone*(this: IntAnaQuadQuadGeo): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "IntAna_QuadQuadGeo.hxx".}
proc typeInter*(this: IntAnaQuadQuadGeo): IntAnaResultType {.noSideEffect,
    importcpp: "TypeInter", header: "IntAna_QuadQuadGeo.hxx".}
proc nbSolutions*(this: IntAnaQuadQuadGeo): StandardInteger {.noSideEffect,
    importcpp: "NbSolutions", header: "IntAna_QuadQuadGeo.hxx".}
proc point*(this: IntAnaQuadQuadGeo; num: StandardInteger): GpPnt {.noSideEffect,
    importcpp: "Point", header: "IntAna_QuadQuadGeo.hxx".}
proc line*(this: IntAnaQuadQuadGeo; num: StandardInteger): GpLin {.noSideEffect,
    importcpp: "Line", header: "IntAna_QuadQuadGeo.hxx".}
proc circle*(this: IntAnaQuadQuadGeo; num: StandardInteger): GpCirc {.noSideEffect,
    importcpp: "Circle", header: "IntAna_QuadQuadGeo.hxx".}
proc ellipse*(this: IntAnaQuadQuadGeo; num: StandardInteger): GpElips {.noSideEffect,
    importcpp: "Ellipse", header: "IntAna_QuadQuadGeo.hxx".}
proc parabola*(this: IntAnaQuadQuadGeo; num: StandardInteger): GpParab {.noSideEffect,
    importcpp: "Parabola", header: "IntAna_QuadQuadGeo.hxx".}
proc hyperbola*(this: IntAnaQuadQuadGeo; num: StandardInteger): GpHypr {.noSideEffect,
    importcpp: "Hyperbola", header: "IntAna_QuadQuadGeo.hxx".}
proc hasCommonGen*(this: IntAnaQuadQuadGeo): StandardBoolean {.noSideEffect,
    importcpp: "HasCommonGen", header: "IntAna_QuadQuadGeo.hxx".}
proc pChar*(this: IntAnaQuadQuadGeo): GpPnt {.noSideEffect, importcpp: "PChar",
    header: "IntAna_QuadQuadGeo.hxx".}

