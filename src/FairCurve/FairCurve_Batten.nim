##  Created on: 1996-02-05
##  Created by: Philippe MANGIN
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of Standard_NegativeValue"
discard "forward decl of Standard_NullValue"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of Geom2d_BSplineCurve"
type
  FairCurveBatten* {.importcpp: "FairCurve_Batten", header: "FairCurve_Batten.hxx",
                    bycopy.} = object ## ! Constructor  with the two points and the geometrical
                                   ## ! characteristics of the batten (elastic beam)
                                   ## ! Height is the height of the deformation, and Slope is the
                                   ## ! slope value, initialized at 0. The user can then supply the
                                   ## ! desired slope value by the method, SetSlope.
                                   ## ! Other parameters are initialized as follow :
                                   ## ! - FreeSliding = False
                                   ## ! - ConstraintOrder1 = 1
                                   ## ! - ConstraintOrder2 = 1
                                   ## ! - Angle1 = 0
                                   ## ! - Angle2 = 0
                                   ## ! - SlidingFactor = 1
                                   ## ! Exceptions
                                   ## ! NegativeValue if Height is less than or equal to 0.
                                   ## ! NullValue if the distance between P1 and P2 is less
                                   ## ! than or equal to the tolerance value for distance in
                                   ## ! Precision::Confusion: P1.IsEqual(P2,
                                   ## ! Precision::Confusion()). The function
                                   ## ! gp_Pnt2d::IsEqual tests to see if this is the case.
                                   ## ! compute the curve with respect of the delta-constraints.


proc constructFairCurveBatten*(p1: Pnt2d; p2: Pnt2d; height: cfloat; slope: cfloat = 0): FairCurveBatten {.
    constructor, importcpp: "FairCurve_Batten(@)", header: "FairCurve_Batten.hxx".}
proc destroyFairCurveBatten*(this: var FairCurveBatten) {.
    importcpp: "#.~FairCurve_Batten()", header: "FairCurve_Batten.hxx".}
proc setFreeSliding*(this: var FairCurveBatten; freeSliding: bool) {.
    importcpp: "SetFreeSliding", header: "FairCurve_Batten.hxx".}
proc setConstraintOrder1*(this: var FairCurveBatten; constraintOrder: cint) {.
    importcpp: "SetConstraintOrder1", header: "FairCurve_Batten.hxx".}
proc setConstraintOrder2*(this: var FairCurveBatten; constraintOrder: cint) {.
    importcpp: "SetConstraintOrder2", header: "FairCurve_Batten.hxx".}
proc setP1*(this: var FairCurveBatten; p1: Pnt2d) {.importcpp: "SetP1",
    header: "FairCurve_Batten.hxx".}
proc setP2*(this: var FairCurveBatten; p2: Pnt2d) {.importcpp: "SetP2",
    header: "FairCurve_Batten.hxx".}
proc setAngle1*(this: var FairCurveBatten; angle1: cfloat) {.importcpp: "SetAngle1",
    header: "FairCurve_Batten.hxx".}
proc setAngle2*(this: var FairCurveBatten; angle2: cfloat) {.importcpp: "SetAngle2",
    header: "FairCurve_Batten.hxx".}
proc setHeight*(this: var FairCurveBatten; height: cfloat) {.importcpp: "SetHeight",
    header: "FairCurve_Batten.hxx".}
proc setSlope*(this: var FairCurveBatten; slope: cfloat) {.importcpp: "SetSlope",
    header: "FairCurve_Batten.hxx".}
proc setSlidingFactor*(this: var FairCurveBatten; slidingFactor: cfloat) {.
    importcpp: "SetSlidingFactor", header: "FairCurve_Batten.hxx".}
proc compute*(this: var FairCurveBatten; code: var FairCurveAnalysisCode;
             nbIterations: cint = 50; tolerance: cfloat = 1.0e-3): bool {.
    importcpp: "Compute", header: "FairCurve_Batten.hxx".}
proc slidingOfReference*(this: FairCurveBatten): cfloat {.noSideEffect,
    importcpp: "SlidingOfReference", header: "FairCurve_Batten.hxx".}
proc getFreeSliding*(this: FairCurveBatten): bool {.noSideEffect,
    importcpp: "GetFreeSliding", header: "FairCurve_Batten.hxx".}
proc getConstraintOrder1*(this: FairCurveBatten): cint {.noSideEffect,
    importcpp: "GetConstraintOrder1", header: "FairCurve_Batten.hxx".}
proc getConstraintOrder2*(this: FairCurveBatten): cint {.noSideEffect,
    importcpp: "GetConstraintOrder2", header: "FairCurve_Batten.hxx".}
proc getP1*(this: FairCurveBatten): Pnt2d {.noSideEffect, importcpp: "GetP1",
                                        header: "FairCurve_Batten.hxx".}
proc getP2*(this: FairCurveBatten): Pnt2d {.noSideEffect, importcpp: "GetP2",
                                        header: "FairCurve_Batten.hxx".}
proc getAngle1*(this: FairCurveBatten): cfloat {.noSideEffect,
    importcpp: "GetAngle1", header: "FairCurve_Batten.hxx".}
proc getAngle2*(this: FairCurveBatten): cfloat {.noSideEffect,
    importcpp: "GetAngle2", header: "FairCurve_Batten.hxx".}
proc getHeight*(this: FairCurveBatten): cfloat {.noSideEffect,
    importcpp: "GetHeight", header: "FairCurve_Batten.hxx".}
proc getSlope*(this: FairCurveBatten): cfloat {.noSideEffect, importcpp: "GetSlope",
    header: "FairCurve_Batten.hxx".}
proc getSlidingFactor*(this: FairCurveBatten): cfloat {.noSideEffect,
    importcpp: "GetSlidingFactor", header: "FairCurve_Batten.hxx".}
proc curve*(this: FairCurveBatten): Handle[Geom2dBSplineCurve] {.noSideEffect,
    importcpp: "Curve", header: "FairCurve_Batten.hxx".}
proc dump*(this: FairCurveBatten; o: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "FairCurve_Batten.hxx".}

























