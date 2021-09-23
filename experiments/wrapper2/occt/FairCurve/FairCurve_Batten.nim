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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, FairCurve_AnalysisCode, ../gp/gp_Pnt2d,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../TColgp/TColgp_HArray1OfPnt2d,
  ../TColStd/TColStd_HArray1OfReal, ../TColStd/TColStd_HArray1OfInteger,
  ../Standard/Standard_OStream

discard "forward decl of Standard_NegativeValue"
discard "forward decl of Standard_NullValue"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of Geom2d_BSplineCurve"
type
  FairCurve_Batten* {.importcpp: "FairCurve_Batten",
                     header: "FairCurve_Batten.hxx", bycopy.} = object ## ! Constructor  with the two points and the geometrical
                                                                  ## !
                                                                  ## characteristics of the batten (elastic beam)
                                                                  ## ! Height is the height of the deformation, and Slope is the
                                                                  ## ! slope value, initialized at 0. The user can then supply the
                                                                  ## ! desired slope value by the method, SetSlope.
                                                                  ## ! Other parameters are initialized as follow :
                                                                  ## ! - FreeSliding = False
                                                                  ## ! -
                                                                  ## ConstraintOrder1 = 1
                                                                  ## ! -
                                                                  ## ConstraintOrder2 = 1
                                                                  ## ! - Angle1 = 0
                                                                  ## ! - Angle2 = 0
                                                                  ## ! - SlidingFactor = 1
                                                                  ## ! Exceptions
                                                                  ## ! NegativeValue if Height is less than or equal to 0.
                                                                  ## ! NullValue if the distance between P1 and P2 is less
                                                                  ## ! than or equal to the tolerance value for distance in
                                                                  ## !
                                                                  ## Precision::Confusion: P1.IsEqual(P2,
                                                                  ## !
                                                                  ## Precision::Confusion()). The function
                                                                  ## !
                                                                  ## gp_Pnt2d::IsEqual tests to see if this is the case.
                                                                  ## ! compute the curve with respect of the
                                                                  ## delta-constraints.


proc constructFairCurve_Batten*(P1: gp_Pnt2d; P2: gp_Pnt2d; Height: Standard_Real;
                               Slope: Standard_Real = 0): FairCurve_Batten {.
    constructor, importcpp: "FairCurve_Batten(@)", header: "FairCurve_Batten.hxx".}
proc destroyFairCurve_Batten*(this: var FairCurve_Batten) {.
    importcpp: "#.~FairCurve_Batten()", header: "FairCurve_Batten.hxx".}
proc SetFreeSliding*(this: var FairCurve_Batten; FreeSliding: Standard_Boolean) {.
    importcpp: "SetFreeSliding", header: "FairCurve_Batten.hxx".}
proc SetConstraintOrder1*(this: var FairCurve_Batten;
                         ConstraintOrder: Standard_Integer) {.
    importcpp: "SetConstraintOrder1", header: "FairCurve_Batten.hxx".}
proc SetConstraintOrder2*(this: var FairCurve_Batten;
                         ConstraintOrder: Standard_Integer) {.
    importcpp: "SetConstraintOrder2", header: "FairCurve_Batten.hxx".}
proc SetP1*(this: var FairCurve_Batten; P1: gp_Pnt2d) {.importcpp: "SetP1",
    header: "FairCurve_Batten.hxx".}
proc SetP2*(this: var FairCurve_Batten; P2: gp_Pnt2d) {.importcpp: "SetP2",
    header: "FairCurve_Batten.hxx".}
proc SetAngle1*(this: var FairCurve_Batten; Angle1: Standard_Real) {.
    importcpp: "SetAngle1", header: "FairCurve_Batten.hxx".}
proc SetAngle2*(this: var FairCurve_Batten; Angle2: Standard_Real) {.
    importcpp: "SetAngle2", header: "FairCurve_Batten.hxx".}
proc SetHeight*(this: var FairCurve_Batten; Height: Standard_Real) {.
    importcpp: "SetHeight", header: "FairCurve_Batten.hxx".}
proc SetSlope*(this: var FairCurve_Batten; Slope: Standard_Real) {.
    importcpp: "SetSlope", header: "FairCurve_Batten.hxx".}
proc SetSlidingFactor*(this: var FairCurve_Batten; SlidingFactor: Standard_Real) {.
    importcpp: "SetSlidingFactor", header: "FairCurve_Batten.hxx".}
proc Compute*(this: var FairCurve_Batten; Code: var FairCurve_AnalysisCode;
             NbIterations: Standard_Integer = 50; Tolerance: Standard_Real = 1.0e-3): Standard_Boolean {.
    importcpp: "Compute", header: "FairCurve_Batten.hxx".}
proc SlidingOfReference*(this: FairCurve_Batten): Standard_Real {.noSideEffect,
    importcpp: "SlidingOfReference", header: "FairCurve_Batten.hxx".}
proc GetFreeSliding*(this: FairCurve_Batten): Standard_Boolean {.noSideEffect,
    importcpp: "GetFreeSliding", header: "FairCurve_Batten.hxx".}
proc GetConstraintOrder1*(this: FairCurve_Batten): Standard_Integer {.noSideEffect,
    importcpp: "GetConstraintOrder1", header: "FairCurve_Batten.hxx".}
proc GetConstraintOrder2*(this: FairCurve_Batten): Standard_Integer {.noSideEffect,
    importcpp: "GetConstraintOrder2", header: "FairCurve_Batten.hxx".}
proc GetP1*(this: FairCurve_Batten): gp_Pnt2d {.noSideEffect, importcpp: "GetP1",
    header: "FairCurve_Batten.hxx".}
proc GetP2*(this: FairCurve_Batten): gp_Pnt2d {.noSideEffect, importcpp: "GetP2",
    header: "FairCurve_Batten.hxx".}
proc GetAngle1*(this: FairCurve_Batten): Standard_Real {.noSideEffect,
    importcpp: "GetAngle1", header: "FairCurve_Batten.hxx".}
proc GetAngle2*(this: FairCurve_Batten): Standard_Real {.noSideEffect,
    importcpp: "GetAngle2", header: "FairCurve_Batten.hxx".}
proc GetHeight*(this: FairCurve_Batten): Standard_Real {.noSideEffect,
    importcpp: "GetHeight", header: "FairCurve_Batten.hxx".}
proc GetSlope*(this: FairCurve_Batten): Standard_Real {.noSideEffect,
    importcpp: "GetSlope", header: "FairCurve_Batten.hxx".}
proc GetSlidingFactor*(this: FairCurve_Batten): Standard_Real {.noSideEffect,
    importcpp: "GetSlidingFactor", header: "FairCurve_Batten.hxx".}
proc Curve*(this: FairCurve_Batten): handle[Geom2d_BSplineCurve] {.noSideEffect,
    importcpp: "Curve", header: "FairCurve_Batten.hxx".}
proc Dump*(this: FairCurve_Batten; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "FairCurve_Batten.hxx".}