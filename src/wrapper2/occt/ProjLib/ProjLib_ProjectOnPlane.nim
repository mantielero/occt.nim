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
proc constructProjLibProjectOnPlane*(pl: GpAx3): ProjLibProjectOnPlane {.
    constructor, importcpp: "ProjLib_ProjectOnPlane(@)",
    header: "ProjLib_ProjectOnPlane.hxx".}
proc constructProjLibProjectOnPlane*(pl: GpAx3; d: GpDir): ProjLibProjectOnPlane {.
    constructor, importcpp: "ProjLib_ProjectOnPlane(@)",
    header: "ProjLib_ProjectOnPlane.hxx".}
proc load*(this: var ProjLibProjectOnPlane; c: Handle[Adaptor3dHCurve];
          tolerance: StandardReal;
          keepParametrization: StandardBoolean = standardTrue) {.importcpp: "Load",
    header: "ProjLib_ProjectOnPlane.hxx".}
proc getPlane*(this: ProjLibProjectOnPlane): GpAx3 {.noSideEffect,
    importcpp: "GetPlane", header: "ProjLib_ProjectOnPlane.hxx".}
proc getDirection*(this: ProjLibProjectOnPlane): GpDir {.noSideEffect,
    importcpp: "GetDirection", header: "ProjLib_ProjectOnPlane.hxx".}
proc getCurve*(this: ProjLibProjectOnPlane): Handle[Adaptor3dHCurve] {.noSideEffect,
    importcpp: "GetCurve", header: "ProjLib_ProjectOnPlane.hxx".}
proc getResult*(this: ProjLibProjectOnPlane): Handle[GeomAdaptorHCurve] {.
    noSideEffect, importcpp: "GetResult", header: "ProjLib_ProjectOnPlane.hxx".}
proc firstParameter*(this: ProjLibProjectOnPlane): StandardReal {.noSideEffect,
    importcpp: "FirstParameter", header: "ProjLib_ProjectOnPlane.hxx".}
proc lastParameter*(this: ProjLibProjectOnPlane): StandardReal {.noSideEffect,
    importcpp: "LastParameter", header: "ProjLib_ProjectOnPlane.hxx".}
proc continuity*(this: ProjLibProjectOnPlane): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "ProjLib_ProjectOnPlane.hxx".}
proc nbIntervals*(this: ProjLibProjectOnPlane; s: GeomAbsShape): StandardInteger {.
    noSideEffect, importcpp: "NbIntervals", header: "ProjLib_ProjectOnPlane.hxx".}
proc intervals*(this: ProjLibProjectOnPlane; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, importcpp: "Intervals",
                                header: "ProjLib_ProjectOnPlane.hxx".}
proc trim*(this: ProjLibProjectOnPlane; first: StandardReal; last: StandardReal;
          tol: StandardReal): Handle[Adaptor3dHCurve] {.noSideEffect,
    importcpp: "Trim", header: "ProjLib_ProjectOnPlane.hxx".}
proc isClosed*(this: ProjLibProjectOnPlane): StandardBoolean {.noSideEffect,
    importcpp: "IsClosed", header: "ProjLib_ProjectOnPlane.hxx".}
proc isPeriodic*(this: ProjLibProjectOnPlane): StandardBoolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "ProjLib_ProjectOnPlane.hxx".}
proc period*(this: ProjLibProjectOnPlane): StandardReal {.noSideEffect,
    importcpp: "Period", header: "ProjLib_ProjectOnPlane.hxx".}
proc value*(this: ProjLibProjectOnPlane; u: StandardReal): GpPnt {.noSideEffect,
    importcpp: "Value", header: "ProjLib_ProjectOnPlane.hxx".}
proc d0*(this: ProjLibProjectOnPlane; u: StandardReal; p: var GpPnt) {.noSideEffect,
    importcpp: "D0", header: "ProjLib_ProjectOnPlane.hxx".}
proc d1*(this: ProjLibProjectOnPlane; u: StandardReal; p: var GpPnt; v: var GpVec) {.
    noSideEffect, importcpp: "D1", header: "ProjLib_ProjectOnPlane.hxx".}
proc d2*(this: ProjLibProjectOnPlane; u: StandardReal; p: var GpPnt; v1: var GpVec;
        v2: var GpVec) {.noSideEffect, importcpp: "D2",
                      header: "ProjLib_ProjectOnPlane.hxx".}
proc d3*(this: ProjLibProjectOnPlane; u: StandardReal; p: var GpPnt; v1: var GpVec;
        v2: var GpVec; v3: var GpVec) {.noSideEffect, importcpp: "D3",
                                  header: "ProjLib_ProjectOnPlane.hxx".}
proc dn*(this: ProjLibProjectOnPlane; u: StandardReal; n: StandardInteger): GpVec {.
    noSideEffect, importcpp: "DN", header: "ProjLib_ProjectOnPlane.hxx".}
proc resolution*(this: ProjLibProjectOnPlane; r3d: StandardReal): StandardReal {.
    noSideEffect, importcpp: "Resolution", header: "ProjLib_ProjectOnPlane.hxx".}
proc getType*(this: ProjLibProjectOnPlane): GeomAbsCurveType {.noSideEffect,
    importcpp: "GetType", header: "ProjLib_ProjectOnPlane.hxx".}
proc line*(this: ProjLibProjectOnPlane): GpLin {.noSideEffect, importcpp: "Line",
    header: "ProjLib_ProjectOnPlane.hxx".}
proc circle*(this: ProjLibProjectOnPlane): GpCirc {.noSideEffect,
    importcpp: "Circle", header: "ProjLib_ProjectOnPlane.hxx".}
proc ellipse*(this: ProjLibProjectOnPlane): GpElips {.noSideEffect,
    importcpp: "Ellipse", header: "ProjLib_ProjectOnPlane.hxx".}
proc hyperbola*(this: ProjLibProjectOnPlane): GpHypr {.noSideEffect,
    importcpp: "Hyperbola", header: "ProjLib_ProjectOnPlane.hxx".}
proc parabola*(this: ProjLibProjectOnPlane): GpParab {.noSideEffect,
    importcpp: "Parabola", header: "ProjLib_ProjectOnPlane.hxx".}
proc degree*(this: ProjLibProjectOnPlane): StandardInteger {.noSideEffect,
    importcpp: "Degree", header: "ProjLib_ProjectOnPlane.hxx".}
proc isRational*(this: ProjLibProjectOnPlane): StandardBoolean {.noSideEffect,
    importcpp: "IsRational", header: "ProjLib_ProjectOnPlane.hxx".}
proc nbPoles*(this: ProjLibProjectOnPlane): StandardInteger {.noSideEffect,
    importcpp: "NbPoles", header: "ProjLib_ProjectOnPlane.hxx".}
proc nbKnots*(this: ProjLibProjectOnPlane): StandardInteger {.noSideEffect,
    importcpp: "NbKnots", header: "ProjLib_ProjectOnPlane.hxx".}
proc bezier*(this: ProjLibProjectOnPlane): Handle[GeomBezierCurve] {.noSideEffect,
    importcpp: "Bezier", header: "ProjLib_ProjectOnPlane.hxx".}
proc bSpline*(this: ProjLibProjectOnPlane): Handle[GeomBSplineCurve] {.noSideEffect,
    importcpp: "BSpline", header: "ProjLib_ProjectOnPlane.hxx".}

