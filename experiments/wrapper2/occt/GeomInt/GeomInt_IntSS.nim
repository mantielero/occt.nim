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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../IntPatch/IntPatch_Intersection,
  GeomInt_LineConstructor, ../Standard/Standard_Integer,
  ../TColGeom/TColGeom_SequenceOfCurve, ../TColGeom2d/TColGeom2d_SequenceOfCurve,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean, ../gp/gp_Pnt,
  GeomInt_VectorOfReal

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
  GeomInt_IntSS* {.importcpp: "GeomInt_IntSS", header: "GeomInt_IntSS.hxx", bycopy.} = object


proc constructGeomInt_IntSS*(): GeomInt_IntSS {.constructor,
    importcpp: "GeomInt_IntSS(@)", header: "GeomInt_IntSS.hxx".}
proc constructGeomInt_IntSS*(S1: handle[Geom_Surface]; S2: handle[Geom_Surface];
                            Tol: Standard_Real;
                            Approx: Standard_Boolean = Standard_True;
                            ApproxS1: Standard_Boolean = Standard_False;
                            ApproxS2: Standard_Boolean = Standard_False): GeomInt_IntSS {.
    constructor, importcpp: "GeomInt_IntSS(@)", header: "GeomInt_IntSS.hxx".}
proc Perform*(this: var GeomInt_IntSS; S1: handle[Geom_Surface];
             S2: handle[Geom_Surface]; Tol: Standard_Real;
             Approx: Standard_Boolean = Standard_True;
             ApproxS1: Standard_Boolean = Standard_False;
             ApproxS2: Standard_Boolean = Standard_False) {.importcpp: "Perform",
    header: "GeomInt_IntSS.hxx".}
proc Perform*(this: var GeomInt_IntSS; HS1: handle[GeomAdaptor_HSurface];
             HS2: handle[GeomAdaptor_HSurface]; Tol: Standard_Real;
             Approx: Standard_Boolean = Standard_True;
             ApproxS1: Standard_Boolean = Standard_False;
             ApproxS2: Standard_Boolean = Standard_False) {.importcpp: "Perform",
    header: "GeomInt_IntSS.hxx".}
proc Perform*(this: var GeomInt_IntSS; S1: handle[Geom_Surface];
             S2: handle[Geom_Surface]; Tol: Standard_Real; U1: Standard_Real;
             V1: Standard_Real; U2: Standard_Real; V2: Standard_Real;
             Approx: Standard_Boolean = Standard_True;
             ApproxS1: Standard_Boolean = Standard_False;
             ApproxS2: Standard_Boolean = Standard_False) {.importcpp: "Perform",
    header: "GeomInt_IntSS.hxx".}
proc Perform*(this: var GeomInt_IntSS; HS1: handle[GeomAdaptor_HSurface];
             HS2: handle[GeomAdaptor_HSurface]; Tol: Standard_Real;
             U1: Standard_Real; V1: Standard_Real; U2: Standard_Real;
             V2: Standard_Real; Approx: Standard_Boolean = Standard_True;
             ApproxS1: Standard_Boolean = Standard_False;
             ApproxS2: Standard_Boolean = Standard_False) {.importcpp: "Perform",
    header: "GeomInt_IntSS.hxx".}
proc IsDone*(this: GeomInt_IntSS): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "GeomInt_IntSS.hxx".}
proc TolReached3d*(this: GeomInt_IntSS): Standard_Real {.noSideEffect,
    importcpp: "TolReached3d", header: "GeomInt_IntSS.hxx".}
proc TolReached2d*(this: GeomInt_IntSS): Standard_Real {.noSideEffect,
    importcpp: "TolReached2d", header: "GeomInt_IntSS.hxx".}
proc NbLines*(this: GeomInt_IntSS): Standard_Integer {.noSideEffect,
    importcpp: "NbLines", header: "GeomInt_IntSS.hxx".}
proc Line*(this: GeomInt_IntSS; Index: Standard_Integer): handle[Geom_Curve] {.
    noSideEffect, importcpp: "Line", header: "GeomInt_IntSS.hxx".}
proc HasLineOnS1*(this: GeomInt_IntSS; Index: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "HasLineOnS1", header: "GeomInt_IntSS.hxx".}
proc LineOnS1*(this: GeomInt_IntSS; Index: Standard_Integer): handle[Geom2d_Curve] {.
    noSideEffect, importcpp: "LineOnS1", header: "GeomInt_IntSS.hxx".}
proc HasLineOnS2*(this: GeomInt_IntSS; Index: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "HasLineOnS2", header: "GeomInt_IntSS.hxx".}
proc LineOnS2*(this: GeomInt_IntSS; Index: Standard_Integer): handle[Geom2d_Curve] {.
    noSideEffect, importcpp: "LineOnS2", header: "GeomInt_IntSS.hxx".}
proc NbBoundaries*(this: GeomInt_IntSS): Standard_Integer {.noSideEffect,
    importcpp: "NbBoundaries", header: "GeomInt_IntSS.hxx".}
proc Boundary*(this: GeomInt_IntSS; Index: Standard_Integer): handle[Geom_Curve] {.
    noSideEffect, importcpp: "Boundary", header: "GeomInt_IntSS.hxx".}
proc NbPoints*(this: GeomInt_IntSS): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "GeomInt_IntSS.hxx".}
proc Point*(this: GeomInt_IntSS; Index: Standard_Integer): gp_Pnt {.noSideEffect,
    importcpp: "Point", header: "GeomInt_IntSS.hxx".}
proc Pnt2d*(this: GeomInt_IntSS; Index: Standard_Integer; OnFirst: Standard_Boolean): gp_Pnt2d {.
    noSideEffect, importcpp: "Pnt2d", header: "GeomInt_IntSS.hxx".}
proc SetTolFixTangents*(this: var GeomInt_IntSS; aTolCheck: Standard_Real;
                       aTolAngCheck: Standard_Real) {.
    importcpp: "SetTolFixTangents", header: "GeomInt_IntSS.hxx".}
proc TolFixTangents*(this: var GeomInt_IntSS; aTolCheck: var Standard_Real;
                    aTolAngCheck: var Standard_Real) {.importcpp: "TolFixTangents",
    header: "GeomInt_IntSS.hxx".}
proc TreatRLine*(theRL: handle[IntPatch_RLine];
                theHS1: handle[GeomAdaptor_HSurface];
                theHS2: handle[GeomAdaptor_HSurface];
                theC3d: var handle[Geom_Curve]; theC2d1: var handle[Geom2d_Curve];
                theC2d2: var handle[Geom2d_Curve]; theTolReached: var Standard_Real) {.
    importcpp: "GeomInt_IntSS::TreatRLine(@)", header: "GeomInt_IntSS.hxx".}
proc BuildPCurves*(f: Standard_Real; l: Standard_Real; Tol: var Standard_Real;
                  S: handle[Geom_Surface]; C: handle[Geom_Curve];
                  C2d: var handle[Geom2d_Curve]) {.
    importcpp: "GeomInt_IntSS::BuildPCurves(@)", header: "GeomInt_IntSS.hxx".}
proc TrimILineOnSurfBoundaries*(theC2d1: handle[Geom2d_Curve];
                               theC2d2: handle[Geom2d_Curve];
                               theBound1: Bnd_Box2d; theBound2: Bnd_Box2d;
                               theArrayOfParameters: var GeomInt_VectorOfReal) {.
    importcpp: "GeomInt_IntSS::TrimILineOnSurfBoundaries(@)",
    header: "GeomInt_IntSS.hxx".}
proc MakeBSpline*(WL: handle[IntPatch_WLine]; ideb: Standard_Integer;
                 ifin: Standard_Integer): handle[Geom_Curve] {.
    importcpp: "GeomInt_IntSS::MakeBSpline(@)", header: "GeomInt_IntSS.hxx".}
proc MakeBSpline2d*(theWLine: handle[IntPatch_WLine]; ideb: Standard_Integer;
                   ifin: Standard_Integer; onFirst: Standard_Boolean): handle[
    Geom2d_BSplineCurve] {.importcpp: "GeomInt_IntSS::MakeBSpline2d(@)",
                          header: "GeomInt_IntSS.hxx".}