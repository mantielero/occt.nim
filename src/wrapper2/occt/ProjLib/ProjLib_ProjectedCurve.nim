##  Created on: 1993-08-25
##  Created by: Bruno DUMORTIER
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

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_NotImplemented"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Elips2d"
discard "forward decl of gp_Hypr2d"
discard "forward decl of gp_Parab2d"
discard "forward decl of Geom2d_BezierCurve"
discard "forward decl of Geom2d_BSplineCurve"
type
  ProjLibProjectedCurve* {.importcpp: "ProjLib_ProjectedCurve",
                          header: "ProjLib_ProjectedCurve.hxx", bycopy.} = object of Adaptor2dCurve2d ##
                                                                                               ## !
                                                                                               ## Empty
                                                                                               ## constructor,
                                                                                               ## it
                                                                                               ## only
                                                                                               ## sets
                                                                                               ## some
                                                                                               ## initial
                                                                                               ## values
                                                                                               ## for
                                                                                               ## class
                                                                                               ## fields.


proc constructProjLibProjectedCurve*(): ProjLibProjectedCurve {.constructor,
    importcpp: "ProjLib_ProjectedCurve(@)", header: "ProjLib_ProjectedCurve.hxx".}
proc constructProjLibProjectedCurve*(s: Handle[Adaptor3dHSurface]): ProjLibProjectedCurve {.
    constructor, importcpp: "ProjLib_ProjectedCurve(@)",
    header: "ProjLib_ProjectedCurve.hxx".}
proc constructProjLibProjectedCurve*(s: Handle[Adaptor3dHSurface];
                                    c: Handle[Adaptor3dHCurve]): ProjLibProjectedCurve {.
    constructor, importcpp: "ProjLib_ProjectedCurve(@)",
    header: "ProjLib_ProjectedCurve.hxx".}
proc constructProjLibProjectedCurve*(s: Handle[Adaptor3dHSurface];
                                    c: Handle[Adaptor3dHCurve]; tol: StandardReal): ProjLibProjectedCurve {.
    constructor, importcpp: "ProjLib_ProjectedCurve(@)",
    header: "ProjLib_ProjectedCurve.hxx".}
proc load*(this: var ProjLibProjectedCurve; tolerance: StandardReal) {.
    importcpp: "Load", header: "ProjLib_ProjectedCurve.hxx".}
proc load*(this: var ProjLibProjectedCurve; s: Handle[Adaptor3dHSurface]) {.
    importcpp: "Load", header: "ProjLib_ProjectedCurve.hxx".}
proc perform*(this: var ProjLibProjectedCurve; c: Handle[Adaptor3dHCurve]) {.
    importcpp: "Perform", header: "ProjLib_ProjectedCurve.hxx".}
proc setDegree*(this: var ProjLibProjectedCurve; theDegMin: StandardInteger;
               theDegMax: StandardInteger) {.importcpp: "SetDegree",
    header: "ProjLib_ProjectedCurve.hxx".}
proc setMaxSegments*(this: var ProjLibProjectedCurve;
                    theMaxSegments: StandardInteger) {.
    importcpp: "SetMaxSegments", header: "ProjLib_ProjectedCurve.hxx".}
proc setBndPnt*(this: var ProjLibProjectedCurve; theBndPnt: AppParCurvesConstraint) {.
    importcpp: "SetBndPnt", header: "ProjLib_ProjectedCurve.hxx".}
proc setMaxDist*(this: var ProjLibProjectedCurve; theMaxDist: StandardReal) {.
    importcpp: "SetMaxDist", header: "ProjLib_ProjectedCurve.hxx".}
proc getSurface*(this: ProjLibProjectedCurve): Handle[Adaptor3dHSurface] {.
    noSideEffect, importcpp: "GetSurface", header: "ProjLib_ProjectedCurve.hxx".}
proc getCurve*(this: ProjLibProjectedCurve): Handle[Adaptor3dHCurve] {.noSideEffect,
    importcpp: "GetCurve", header: "ProjLib_ProjectedCurve.hxx".}
proc getTolerance*(this: ProjLibProjectedCurve): StandardReal {.noSideEffect,
    importcpp: "GetTolerance", header: "ProjLib_ProjectedCurve.hxx".}
proc firstParameter*(this: ProjLibProjectedCurve): StandardReal {.noSideEffect,
    importcpp: "FirstParameter", header: "ProjLib_ProjectedCurve.hxx".}
proc lastParameter*(this: ProjLibProjectedCurve): StandardReal {.noSideEffect,
    importcpp: "LastParameter", header: "ProjLib_ProjectedCurve.hxx".}
proc continuity*(this: ProjLibProjectedCurve): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "ProjLib_ProjectedCurve.hxx".}
proc nbIntervals*(this: ProjLibProjectedCurve; s: GeomAbsShape): StandardInteger {.
    noSideEffect, importcpp: "NbIntervals", header: "ProjLib_ProjectedCurve.hxx".}
proc intervals*(this: ProjLibProjectedCurve; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, importcpp: "Intervals",
                                header: "ProjLib_ProjectedCurve.hxx".}
proc trim*(this: ProjLibProjectedCurve; first: StandardReal; last: StandardReal;
          tol: StandardReal): Handle[Adaptor2dHCurve2d] {.noSideEffect,
    importcpp: "Trim", header: "ProjLib_ProjectedCurve.hxx".}
proc isClosed*(this: ProjLibProjectedCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsClosed", header: "ProjLib_ProjectedCurve.hxx".}
proc isPeriodic*(this: ProjLibProjectedCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "ProjLib_ProjectedCurve.hxx".}
proc period*(this: ProjLibProjectedCurve): StandardReal {.noSideEffect,
    importcpp: "Period", header: "ProjLib_ProjectedCurve.hxx".}
proc value*(this: ProjLibProjectedCurve; u: StandardReal): GpPnt2d {.noSideEffect,
    importcpp: "Value", header: "ProjLib_ProjectedCurve.hxx".}
proc d0*(this: ProjLibProjectedCurve; u: StandardReal; p: var GpPnt2d) {.noSideEffect,
    importcpp: "D0", header: "ProjLib_ProjectedCurve.hxx".}
proc d1*(this: ProjLibProjectedCurve; u: StandardReal; p: var GpPnt2d; v: var GpVec2d) {.
    noSideEffect, importcpp: "D1", header: "ProjLib_ProjectedCurve.hxx".}
proc d2*(this: ProjLibProjectedCurve; u: StandardReal; p: var GpPnt2d; v1: var GpVec2d;
        v2: var GpVec2d) {.noSideEffect, importcpp: "D2",
                        header: "ProjLib_ProjectedCurve.hxx".}
proc d3*(this: ProjLibProjectedCurve; u: StandardReal; p: var GpPnt2d; v1: var GpVec2d;
        v2: var GpVec2d; v3: var GpVec2d) {.noSideEffect, importcpp: "D3",
                                      header: "ProjLib_ProjectedCurve.hxx".}
proc dn*(this: ProjLibProjectedCurve; u: StandardReal; n: StandardInteger): GpVec2d {.
    noSideEffect, importcpp: "DN", header: "ProjLib_ProjectedCurve.hxx".}
proc resolution*(this: ProjLibProjectedCurve; r3d: StandardReal): StandardReal {.
    noSideEffect, importcpp: "Resolution", header: "ProjLib_ProjectedCurve.hxx".}
proc getType*(this: ProjLibProjectedCurve): GeomAbsCurveType {.noSideEffect,
    importcpp: "GetType", header: "ProjLib_ProjectedCurve.hxx".}
proc line*(this: ProjLibProjectedCurve): GpLin2d {.noSideEffect, importcpp: "Line",
    header: "ProjLib_ProjectedCurve.hxx".}
proc circle*(this: ProjLibProjectedCurve): GpCirc2d {.noSideEffect,
    importcpp: "Circle", header: "ProjLib_ProjectedCurve.hxx".}
proc ellipse*(this: ProjLibProjectedCurve): GpElips2d {.noSideEffect,
    importcpp: "Ellipse", header: "ProjLib_ProjectedCurve.hxx".}
proc hyperbola*(this: ProjLibProjectedCurve): GpHypr2d {.noSideEffect,
    importcpp: "Hyperbola", header: "ProjLib_ProjectedCurve.hxx".}
proc parabola*(this: ProjLibProjectedCurve): GpParab2d {.noSideEffect,
    importcpp: "Parabola", header: "ProjLib_ProjectedCurve.hxx".}
proc degree*(this: ProjLibProjectedCurve): StandardInteger {.noSideEffect,
    importcpp: "Degree", header: "ProjLib_ProjectedCurve.hxx".}
proc isRational*(this: ProjLibProjectedCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsRational", header: "ProjLib_ProjectedCurve.hxx".}
proc nbPoles*(this: ProjLibProjectedCurve): StandardInteger {.noSideEffect,
    importcpp: "NbPoles", header: "ProjLib_ProjectedCurve.hxx".}
proc nbKnots*(this: ProjLibProjectedCurve): StandardInteger {.noSideEffect,
    importcpp: "NbKnots", header: "ProjLib_ProjectedCurve.hxx".}
proc bezier*(this: ProjLibProjectedCurve): Handle[Geom2dBezierCurve] {.noSideEffect,
    importcpp: "Bezier", header: "ProjLib_ProjectedCurve.hxx".}
proc bSpline*(this: ProjLibProjectedCurve): Handle[Geom2dBSplineCurve] {.
    noSideEffect, importcpp: "BSpline", header: "ProjLib_ProjectedCurve.hxx".}

