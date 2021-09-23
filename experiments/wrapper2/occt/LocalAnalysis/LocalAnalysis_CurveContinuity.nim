##  Created on: 1996-08-09
##  Created by: Herve LOUESSARD
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_Boolean,
  LocalAnalysis_StatusErrorType

discard "forward decl of StdFail_NotDone"
discard "forward decl of Geom_Curve"
discard "forward decl of GeomLProp_CLProps"
type
  LocalAnalysis_CurveContinuity* {.importcpp: "LocalAnalysis_CurveContinuity",
                                  header: "LocalAnalysis_CurveContinuity.hxx",
                                  bycopy.} = object ## ! -u1 is the parameter of the point on Curv1
                                                 ## ! -u2 is the  parameter of the point on  Curv2
                                                 ## ! -Order is the required continuity:
                                                 ## ! GeomAbs_C0    GeomAbs_C1  GeomAbs_C2
                                                 ## ! GeomAbs_G1 GeomAbs_G2
                                                 ## !
                                                 ## ! -EpsNul  is  used to  detect a  a vector with nul
                                                 ## ! magnitude (in mm)
                                                 ## !
                                                 ## ! -EpsC0 is used for C0  continuity to confuse two
                                                 ## ! points (in mm)
                                                 ## !
                                                 ## ! -EpsC1 is  an angular  tolerance in radians  used
                                                 ## ! for C1 continuity  to compare the angle between
                                                 ## ! the first derivatives
                                                 ## !
                                                 ## ! -EpsC2 is an   angular tolerance in radians  used
                                                 ## ! for C2  continuity to  compare the angle  between
                                                 ## ! the second derivatives
                                                 ## !
                                                 ## ! -EpsG1 is an  angular  tolerance in radians  used
                                                 ## ! for G1  continuity to compare  the angle  between
                                                 ## ! the tangents
                                                 ## !
                                                 ## ! -EpsG2 is  an angular  tolerance in radians  used
                                                 ## ! for  G2 continuity to  compare  the angle between
                                                 ## ! the normals
                                                 ## !
                                                 ## ! - percent  : percentage of  curvature variation (unitless)
                                                 ## ! used for G2 continuity
                                                 ## !
                                                 ## ! - Maxlen is the maximum length of Curv1 or Curv2 in
                                                 ## ! meters used to detect nul curvature (in mm)
                                                 ## !
                                                 ## ! the constructor computes the quantities  which are
                                                 ## ! necessary to check the continuity in the following cases:
                                                 ## !
                                                 ## ! case  C0
                                                 ## ! --------
                                                 ## ! - the distance between P1 and P2  with P1=Curv1 (u1)  and
                                                 ## ! P2=Curv2(u2)
                                                 ## !
                                                 ## ! case C1
                                                 ## ! -------
                                                 ## !
                                                 ## ! - the angle  between  the first derivatives
                                                 ## ! dCurv1(u1)           dCurv2(u2)
                                                 ## ! --------     and     ---------
                                                 ## ! du                   du
                                                 ## !
                                                 ## ! - the ratio   between  the magnitudes  of the first
                                                 ## ! derivatives
                                                 ## !
                                                 ## ! the angle value is between 0 and PI/2
                                                 ## !
                                                 ## ! case  C2
                                                 ## ! -------
                                                 ## ! - the angle  between the second derivatives
                                                 ## ! 2                   2
                                                 ## ! d  Curv1(u1)       d Curv2(u2)
                                                 ## ! ----------        ----------
                                                 ## ! 2                   2
                                                 ## ! du                  du
                                                 ## !
                                                 ## ! the angle value is between 0 and PI/2
                                                 ## !
                                                 ## ! - the ratio between the magnitudes of  the second
                                                 ## ! derivatives
                                                 ## !
                                                 ## ! case G1
                                                 ## ! -------
                                                 ## ! the angle between  the tangents at each point
                                                 ## !
                                                 ## ! the angle value is between 0 and PI/2
                                                 ## !
                                                 ## ! case G2
                                                 ## ! -------
                                                 ## ! -the angle between the normals at each point
                                                 ## !
                                                 ## ! the angle value is between 0 and PI/2
                                                 ## !
                                                 ## ! - the relative variation of curvature:
                                                 ## ! |curvat1-curvat2|
                                                 ## ! ------------------
                                                 ## ! 1/2
                                                 ## ! (curvat1*curvat2)
                                                 ## !
                                                 ## ! where curvat1 is the curvature at the first point
                                                 ## ! and curvat2 the curvature at the second point


proc constructLocalAnalysis_CurveContinuity*(Curv1: handle[Geom_Curve];
    u1: Standard_Real; Curv2: handle[Geom_Curve]; u2: Standard_Real;
    Order: GeomAbs_Shape; EpsNul: Standard_Real = 0.001; EpsC0: Standard_Real = 0.001;
    EpsC1: Standard_Real = 0.001; EpsC2: Standard_Real = 0.001;
    EpsG1: Standard_Real = 0.001; EpsG2: Standard_Real = 0.001;
    Percent: Standard_Real = 0.01; Maxlen: Standard_Real = 10000): LocalAnalysis_CurveContinuity {.
    constructor, importcpp: "LocalAnalysis_CurveContinuity(@)",
    header: "LocalAnalysis_CurveContinuity.hxx".}
proc IsDone*(this: LocalAnalysis_CurveContinuity): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "LocalAnalysis_CurveContinuity.hxx".}
proc StatusError*(this: LocalAnalysis_CurveContinuity): LocalAnalysis_StatusErrorType {.
    noSideEffect, importcpp: "StatusError",
    header: "LocalAnalysis_CurveContinuity.hxx".}
proc ContinuityStatus*(this: LocalAnalysis_CurveContinuity): GeomAbs_Shape {.
    noSideEffect, importcpp: "ContinuityStatus",
    header: "LocalAnalysis_CurveContinuity.hxx".}
proc C0Value*(this: LocalAnalysis_CurveContinuity): Standard_Real {.noSideEffect,
    importcpp: "C0Value", header: "LocalAnalysis_CurveContinuity.hxx".}
proc C1Angle*(this: LocalAnalysis_CurveContinuity): Standard_Real {.noSideEffect,
    importcpp: "C1Angle", header: "LocalAnalysis_CurveContinuity.hxx".}
proc C1Ratio*(this: LocalAnalysis_CurveContinuity): Standard_Real {.noSideEffect,
    importcpp: "C1Ratio", header: "LocalAnalysis_CurveContinuity.hxx".}
proc C2Angle*(this: LocalAnalysis_CurveContinuity): Standard_Real {.noSideEffect,
    importcpp: "C2Angle", header: "LocalAnalysis_CurveContinuity.hxx".}
proc C2Ratio*(this: LocalAnalysis_CurveContinuity): Standard_Real {.noSideEffect,
    importcpp: "C2Ratio", header: "LocalAnalysis_CurveContinuity.hxx".}
proc G1Angle*(this: LocalAnalysis_CurveContinuity): Standard_Real {.noSideEffect,
    importcpp: "G1Angle", header: "LocalAnalysis_CurveContinuity.hxx".}
proc G2Angle*(this: LocalAnalysis_CurveContinuity): Standard_Real {.noSideEffect,
    importcpp: "G2Angle", header: "LocalAnalysis_CurveContinuity.hxx".}
proc G2CurvatureVariation*(this: LocalAnalysis_CurveContinuity): Standard_Real {.
    noSideEffect, importcpp: "G2CurvatureVariation",
    header: "LocalAnalysis_CurveContinuity.hxx".}
proc IsC0*(this: LocalAnalysis_CurveContinuity): Standard_Boolean {.noSideEffect,
    importcpp: "IsC0", header: "LocalAnalysis_CurveContinuity.hxx".}
proc IsC1*(this: LocalAnalysis_CurveContinuity): Standard_Boolean {.noSideEffect,
    importcpp: "IsC1", header: "LocalAnalysis_CurveContinuity.hxx".}
proc IsC2*(this: LocalAnalysis_CurveContinuity): Standard_Boolean {.noSideEffect,
    importcpp: "IsC2", header: "LocalAnalysis_CurveContinuity.hxx".}
proc IsG1*(this: LocalAnalysis_CurveContinuity): Standard_Boolean {.noSideEffect,
    importcpp: "IsG1", header: "LocalAnalysis_CurveContinuity.hxx".}
proc IsG2*(this: LocalAnalysis_CurveContinuity): Standard_Boolean {.noSideEffect,
    importcpp: "IsG2", header: "LocalAnalysis_CurveContinuity.hxx".}