##  Created on: 1995-01-27
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of GeomAdaptor_HSurface"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom_Surface"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of gp_Pnt2d"
discard "forward decl of IntPatch_RLine"
discard "forward decl of Bnd_Box2d"
discard "forward decl of Adaptor3d_TopolTool"
discard "forward decl of IntPatch_WLine"
type
  GeomIntIntSS* {.importcpp: "GeomInt_IntSS", header: "GeomInt_IntSS.hxx", bycopy.} = object


proc constructGeomIntIntSS*(): GeomIntIntSS {.constructor,
    importcpp: "GeomInt_IntSS(@)", header: "GeomInt_IntSS.hxx".}
proc constructGeomIntIntSS*(s1: Handle[GeomSurface]; s2: Handle[GeomSurface];
                           tol: StandardReal;
                           approx: StandardBoolean = standardTrue;
                           approxS1: StandardBoolean = standardFalse;
                           approxS2: StandardBoolean = standardFalse): GeomIntIntSS {.
    constructor, importcpp: "GeomInt_IntSS(@)", header: "GeomInt_IntSS.hxx".}
proc perform*(this: var GeomIntIntSS; s1: Handle[GeomSurface];
             s2: Handle[GeomSurface]; tol: StandardReal;
             approx: StandardBoolean = standardTrue;
             approxS1: StandardBoolean = standardFalse;
             approxS2: StandardBoolean = standardFalse) {.importcpp: "Perform",
    header: "GeomInt_IntSS.hxx".}
proc perform*(this: var GeomIntIntSS; hs1: Handle[GeomAdaptorHSurface];
             hs2: Handle[GeomAdaptorHSurface]; tol: StandardReal;
             approx: StandardBoolean = standardTrue;
             approxS1: StandardBoolean = standardFalse;
             approxS2: StandardBoolean = standardFalse) {.importcpp: "Perform",
    header: "GeomInt_IntSS.hxx".}
proc perform*(this: var GeomIntIntSS; s1: Handle[GeomSurface];
             s2: Handle[GeomSurface]; tol: StandardReal; u1: StandardReal;
             v1: StandardReal; u2: StandardReal; v2: StandardReal;
             approx: StandardBoolean = standardTrue;
             approxS1: StandardBoolean = standardFalse;
             approxS2: StandardBoolean = standardFalse) {.importcpp: "Perform",
    header: "GeomInt_IntSS.hxx".}
proc perform*(this: var GeomIntIntSS; hs1: Handle[GeomAdaptorHSurface];
             hs2: Handle[GeomAdaptorHSurface]; tol: StandardReal; u1: StandardReal;
             v1: StandardReal; u2: StandardReal; v2: StandardReal;
             approx: StandardBoolean = standardTrue;
             approxS1: StandardBoolean = standardFalse;
             approxS2: StandardBoolean = standardFalse) {.importcpp: "Perform",
    header: "GeomInt_IntSS.hxx".}
proc isDone*(this: GeomIntIntSS): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "GeomInt_IntSS.hxx".}
proc tolReached3d*(this: GeomIntIntSS): StandardReal {.noSideEffect,
    importcpp: "TolReached3d", header: "GeomInt_IntSS.hxx".}
proc tolReached2d*(this: GeomIntIntSS): StandardReal {.noSideEffect,
    importcpp: "TolReached2d", header: "GeomInt_IntSS.hxx".}
proc nbLines*(this: GeomIntIntSS): StandardInteger {.noSideEffect,
    importcpp: "NbLines", header: "GeomInt_IntSS.hxx".}
proc line*(this: GeomIntIntSS; index: StandardInteger): Handle[GeomCurve] {.
    noSideEffect, importcpp: "Line", header: "GeomInt_IntSS.hxx".}
proc hasLineOnS1*(this: GeomIntIntSS; index: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "HasLineOnS1", header: "GeomInt_IntSS.hxx".}
proc lineOnS1*(this: GeomIntIntSS; index: StandardInteger): Handle[Geom2dCurve] {.
    noSideEffect, importcpp: "LineOnS1", header: "GeomInt_IntSS.hxx".}
proc hasLineOnS2*(this: GeomIntIntSS; index: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "HasLineOnS2", header: "GeomInt_IntSS.hxx".}
proc lineOnS2*(this: GeomIntIntSS; index: StandardInteger): Handle[Geom2dCurve] {.
    noSideEffect, importcpp: "LineOnS2", header: "GeomInt_IntSS.hxx".}
proc nbBoundaries*(this: GeomIntIntSS): StandardInteger {.noSideEffect,
    importcpp: "NbBoundaries", header: "GeomInt_IntSS.hxx".}
proc boundary*(this: GeomIntIntSS; index: StandardInteger): Handle[GeomCurve] {.
    noSideEffect, importcpp: "Boundary", header: "GeomInt_IntSS.hxx".}
proc nbPoints*(this: GeomIntIntSS): StandardInteger {.noSideEffect,
    importcpp: "NbPoints", header: "GeomInt_IntSS.hxx".}
proc point*(this: GeomIntIntSS; index: StandardInteger): GpPnt {.noSideEffect,
    importcpp: "Point", header: "GeomInt_IntSS.hxx".}
proc pnt2d*(this: GeomIntIntSS; index: StandardInteger; onFirst: StandardBoolean): GpPnt2d {.
    noSideEffect, importcpp: "Pnt2d", header: "GeomInt_IntSS.hxx".}
proc setTolFixTangents*(this: var GeomIntIntSS; aTolCheck: StandardReal;
                       aTolAngCheck: StandardReal) {.
    importcpp: "SetTolFixTangents", header: "GeomInt_IntSS.hxx".}
proc tolFixTangents*(this: var GeomIntIntSS; aTolCheck: var StandardReal;
                    aTolAngCheck: var StandardReal) {.importcpp: "TolFixTangents",
    header: "GeomInt_IntSS.hxx".}
proc treatRLine*(theRL: Handle[IntPatchRLine]; theHS1: Handle[GeomAdaptorHSurface];
                theHS2: Handle[GeomAdaptorHSurface];
                theC3d: var Handle[GeomCurve]; theC2d1: var Handle[Geom2dCurve];
                theC2d2: var Handle[Geom2dCurve]; theTolReached: var StandardReal) {.
    importcpp: "GeomInt_IntSS::TreatRLine(@)", header: "GeomInt_IntSS.hxx".}
proc buildPCurves*(f: StandardReal; l: StandardReal; tol: var StandardReal;
                  s: Handle[GeomSurface]; c: Handle[GeomCurve];
                  c2d: var Handle[Geom2dCurve]) {.
    importcpp: "GeomInt_IntSS::BuildPCurves(@)", header: "GeomInt_IntSS.hxx".}
proc trimILineOnSurfBoundaries*(theC2d1: Handle[Geom2dCurve];
                               theC2d2: Handle[Geom2dCurve]; theBound1: BndBox2d;
                               theBound2: BndBox2d;
                               theArrayOfParameters: var GeomIntVectorOfReal) {.
    importcpp: "GeomInt_IntSS::TrimILineOnSurfBoundaries(@)",
    header: "GeomInt_IntSS.hxx".}
proc makeBSpline*(wl: Handle[IntPatchWLine]; ideb: StandardInteger;
                 ifin: StandardInteger): Handle[GeomCurve] {.
    importcpp: "GeomInt_IntSS::MakeBSpline(@)", header: "GeomInt_IntSS.hxx".}
proc makeBSpline2d*(theWLine: Handle[IntPatchWLine]; ideb: StandardInteger;
                   ifin: StandardInteger; onFirst: StandardBoolean): Handle[
    Geom2dBSplineCurve] {.importcpp: "GeomInt_IntSS::MakeBSpline2d(@)",
                         header: "GeomInt_IntSS.hxx".}

