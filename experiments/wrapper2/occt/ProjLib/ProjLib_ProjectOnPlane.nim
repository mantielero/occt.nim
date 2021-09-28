##  Created on: 1994-09-02
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of GeomAdaptor_HCurve"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_NotImplemented"
discard "forward decl of gp_Ax3"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Hypr"
discard "forward decl of gp_Parab"
discard "forward decl of Geom_BezierCurve"
discard "forward decl of Geom_BSplineCurve"
type
  ProjLibProjectOnPlane* {.importcpp: "ProjLib_ProjectOnPlane",
                          header: "ProjLib_ProjectOnPlane.hxx", bycopy.} = object of Adaptor3dCurve ##
                                                                                             ## !
                                                                                             ## Empty
                                                                                             ## constructor.


proc constructProjLibProjectOnPlane*(): ProjLibProjectOnPlane {.constructor,
    importcpp: "ProjLib_ProjectOnPlane(@)", header: "ProjLib_ProjectOnPlane.hxx".}
proc constructProjLibProjectOnPlane*(pl: Ax3): ProjLibProjectOnPlane {.constructor,
    importcpp: "ProjLib_ProjectOnPlane(@)", header: "ProjLib_ProjectOnPlane.hxx".}
proc constructProjLibProjectOnPlane*(pl: Ax3; d: Dir): ProjLibProjectOnPlane {.
    constructor, importcpp: "ProjLib_ProjectOnPlane(@)",
    header: "ProjLib_ProjectOnPlane.hxx".}
proc load*(this: var ProjLibProjectOnPlane; c: Handle[Adaptor3dHCurve];
          tolerance: cfloat; keepParametrization: bool = true) {.importcpp: "Load",
    header: "ProjLib_ProjectOnPlane.hxx".}
proc getPlane*(this: ProjLibProjectOnPlane): Ax3 {.noSideEffect,
    importcpp: "GetPlane", header: "ProjLib_ProjectOnPlane.hxx".}
proc getDirection*(this: ProjLibProjectOnPlane): Dir {.noSideEffect,
    importcpp: "GetDirection", header: "ProjLib_ProjectOnPlane.hxx".}
proc getCurve*(this: ProjLibProjectOnPlane): Handle[Adaptor3dHCurve] {.noSideEffect,
    importcpp: "GetCurve", header: "ProjLib_ProjectOnPlane.hxx".}
proc getResult*(this: ProjLibProjectOnPlane): Handle[GeomAdaptorHCurve] {.
    noSideEffect, importcpp: "GetResult", header: "ProjLib_ProjectOnPlane.hxx".}
proc firstParameter*(this: ProjLibProjectOnPlane): cfloat {.noSideEffect,
    importcpp: "FirstParameter", header: "ProjLib_ProjectOnPlane.hxx".}
proc lastParameter*(this: ProjLibProjectOnPlane): cfloat {.noSideEffect,
    importcpp: "LastParameter", header: "ProjLib_ProjectOnPlane.hxx".}
proc continuity*(this: ProjLibProjectOnPlane): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "ProjLib_ProjectOnPlane.hxx".}
proc nbIntervals*(this: ProjLibProjectOnPlane; s: GeomAbsShape): cint {.noSideEffect,
    importcpp: "NbIntervals", header: "ProjLib_ProjectOnPlane.hxx".}
proc intervals*(this: ProjLibProjectOnPlane; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, importcpp: "Intervals",
                                header: "ProjLib_ProjectOnPlane.hxx".}
proc trim*(this: ProjLibProjectOnPlane; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor3dHCurve] {.noSideEffect, importcpp: "Trim",
                      header: "ProjLib_ProjectOnPlane.hxx".}
proc isClosed*(this: ProjLibProjectOnPlane): bool {.noSideEffect,
    importcpp: "IsClosed", header: "ProjLib_ProjectOnPlane.hxx".}
proc isPeriodic*(this: ProjLibProjectOnPlane): bool {.noSideEffect,
    importcpp: "IsPeriodic", header: "ProjLib_ProjectOnPlane.hxx".}
proc period*(this: ProjLibProjectOnPlane): cfloat {.noSideEffect,
    importcpp: "Period", header: "ProjLib_ProjectOnPlane.hxx".}
proc value*(this: ProjLibProjectOnPlane; u: cfloat): Pnt {.noSideEffect,
    importcpp: "Value", header: "ProjLib_ProjectOnPlane.hxx".}
proc d0*(this: ProjLibProjectOnPlane; u: cfloat; p: var Pnt) {.noSideEffect,
    importcpp: "D0", header: "ProjLib_ProjectOnPlane.hxx".}
proc d1*(this: ProjLibProjectOnPlane; u: cfloat; p: var Pnt; v: var Vec) {.noSideEffect,
    importcpp: "D1", header: "ProjLib_ProjectOnPlane.hxx".}
proc d2*(this: ProjLibProjectOnPlane; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec) {.
    noSideEffect, importcpp: "D2", header: "ProjLib_ProjectOnPlane.hxx".}
proc d3*(this: ProjLibProjectOnPlane; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec;
        v3: var Vec) {.noSideEffect, importcpp: "D3",
                    header: "ProjLib_ProjectOnPlane.hxx".}
proc dn*(this: ProjLibProjectOnPlane; u: cfloat; n: cint): Vec {.noSideEffect,
    importcpp: "DN", header: "ProjLib_ProjectOnPlane.hxx".}
proc resolution*(this: ProjLibProjectOnPlane; r3d: cfloat): cfloat {.noSideEffect,
    importcpp: "Resolution", header: "ProjLib_ProjectOnPlane.hxx".}
proc getType*(this: ProjLibProjectOnPlane): GeomAbsCurveType {.noSideEffect,
    importcpp: "GetType", header: "ProjLib_ProjectOnPlane.hxx".}
proc line*(this: ProjLibProjectOnPlane): Lin {.noSideEffect, importcpp: "Line",
    header: "ProjLib_ProjectOnPlane.hxx".}
proc circle*(this: ProjLibProjectOnPlane): Circ {.noSideEffect, importcpp: "Circle",
    header: "ProjLib_ProjectOnPlane.hxx".}
proc ellipse*(this: ProjLibProjectOnPlane): Elips {.noSideEffect,
    importcpp: "Ellipse", header: "ProjLib_ProjectOnPlane.hxx".}
proc hyperbola*(this: ProjLibProjectOnPlane): Hypr {.noSideEffect,
    importcpp: "Hyperbola", header: "ProjLib_ProjectOnPlane.hxx".}
proc parabola*(this: ProjLibProjectOnPlane): Parab {.noSideEffect,
    importcpp: "Parabola", header: "ProjLib_ProjectOnPlane.hxx".}
proc degree*(this: ProjLibProjectOnPlane): cint {.noSideEffect, importcpp: "Degree",
    header: "ProjLib_ProjectOnPlane.hxx".}
proc isRational*(this: ProjLibProjectOnPlane): bool {.noSideEffect,
    importcpp: "IsRational", header: "ProjLib_ProjectOnPlane.hxx".}
proc nbPoles*(this: ProjLibProjectOnPlane): cint {.noSideEffect,
    importcpp: "NbPoles", header: "ProjLib_ProjectOnPlane.hxx".}
proc nbKnots*(this: ProjLibProjectOnPlane): cint {.noSideEffect,
    importcpp: "NbKnots", header: "ProjLib_ProjectOnPlane.hxx".}
proc bezier*(this: ProjLibProjectOnPlane): Handle[GeomBezierCurve] {.noSideEffect,
    importcpp: "Bezier", header: "ProjLib_ProjectOnPlane.hxx".}
proc bSpline*(this: ProjLibProjectOnPlane): Handle[GeomBSplineCurve] {.noSideEffect,
    importcpp: "BSpline", header: "ProjLib_ProjectOnPlane.hxx".}

























