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
discard "forward decl of Geom_Surface"
discard "forward decl of Geom2d_Curve"
discard "forward decl of GeomLProp_SLProps"
type
  LocalAnalysis_SurfaceContinuity* {.importcpp: "LocalAnalysis_SurfaceContinuity", header: "LocalAnalysis_SurfaceContinuity.hxx",
                                    bycopy.} = object ## ! -u1,v1 are  the parameters of the point on Surf1
                                                   ## ! -u2,v2  are  the  parameters of the point on Surf2
                                                   ## ! -Order  is the required continuity:
                                                   ## ! GeomAbs_C0    GeomAbs_C1  GeomAbs_C2
                                                   ## ! GeomAbs_G1 GeomAbs_G2
                                                   ## !
                                                   ## ! -EpsNul  is  used to  detect a  a vector with nul
                                                   ## ! magnitude
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
                                                   ## ! the  normals
                                                   ## !
                                                   ## ! -Percent  : percentage of  curvature variation (unitless)
                                                   ## ! used for G2 continuity
                                                   ## !
                                                   ## ! - Maxlen is the maximum length of Surf1 or Surf2  in
                                                   ## ! meters used to detect null curvature (in mm)
                                                   ## !
                                                   ## ! the constructor computes the quantities  which are
                                                   ## ! necessary to check the continuity in the following cases:
                                                   ## !
                                                   ## ! case  C0
                                                   ## ! --------
                                                   ## ! - the distance between P1 and P2  with P1=Surf (u1,v1)  and
                                                   ## ! P2=Surfv2(u2,v2)
                                                   ## !
                                                   ## ! case C1
                                                   ## ! -------
                                                   ## !
                                                   ## ! - the angle between the first derivatives in u :
                                                   ## !
                                                   ## ! dSurf1(u1,v1)               dSurf2(u2,v2)
                                                   ## ! -----------      and        ---------
                                                   ## ! du                           du
                                                   ## !
                                                   ## ! the angle value is between 0 and PI/2
                                                   ## !
                                                   ## ! - the angle between the first derivatives in v :
                                                   ## !
                                                   ## ! dSurf1(u1,v1)               dSurf2(u2,v2)
                                                   ## ! --------         and         ---------
                                                   ## ! dv                           dv
                                                   ## !
                                                   ## ! - the ratio between  the magnitudes of  the first derivatives  in  u
                                                   ## ! - the  ratio  between  the magnitudes of the first derivatives in v
                                                   ## !
                                                   ## ! the angle value is between  0 and pi/2
                                                   ## !
                                                   ## ! case  C2
                                                   ## ! -------
                                                   ## ! - the  angle  between the second derivatives in u
                                                   ## ! 2                  2
                                                   ## ! d Surf1(u1,v1)    d  Surf2(u2,v2)
                                                   ## ! ----------        ----------
                                                   ## ! 2                  2
                                                   ## ! d u               d  u
                                                   ## !
                                                   ## ! - the ratio between the  magnitudes of the second derivatives in  u
                                                   ## ! - the  ratio between the  magnitudes of the  second derivatives in v
                                                   ## !
                                                   ## ! the angle value is between 0 and PI/2
                                                   ## !
                                                   ## ! case G1
                                                   ## ! -------
                                                   ## ! -the angle between  the normals  at each point
                                                   ## ! the angle value is between 0 and PI/2
                                                   ## !
                                                   ## ! case  G2
                                                   ## ! -------
                                                   ## ! - the maximum  normal curvature gap between the two
                                                   ## ! points


proc constructLocalAnalysis_SurfaceContinuity*(Surf1: handle[Geom_Surface];
    u1: Standard_Real; v1: Standard_Real; Surf2: handle[Geom_Surface];
    u2: Standard_Real; v2: Standard_Real; Order: GeomAbs_Shape;
    EpsNul: Standard_Real = 0.001; EpsC0: Standard_Real = 0.001;
    EpsC1: Standard_Real = 0.001; EpsC2: Standard_Real = 0.001;
    EpsG1: Standard_Real = 0.001; Percent: Standard_Real = 0.01;
    Maxlen: Standard_Real = 10000): LocalAnalysis_SurfaceContinuity {.constructor,
    importcpp: "LocalAnalysis_SurfaceContinuity(@)",
    header: "LocalAnalysis_SurfaceContinuity.hxx".}
proc constructLocalAnalysis_SurfaceContinuity*(curv1: handle[Geom2d_Curve];
    curv2: handle[Geom2d_Curve]; U: Standard_Real; Surf1: handle[Geom_Surface];
    Surf2: handle[Geom_Surface]; Order: GeomAbs_Shape;
    EpsNul: Standard_Real = 0.001; EpsC0: Standard_Real = 0.001;
    EpsC1: Standard_Real = 0.001; EpsC2: Standard_Real = 0.001;
    EpsG1: Standard_Real = 0.001; Percent: Standard_Real = 0.01;
    Maxlen: Standard_Real = 10000): LocalAnalysis_SurfaceContinuity {.constructor,
    importcpp: "LocalAnalysis_SurfaceContinuity(@)",
    header: "LocalAnalysis_SurfaceContinuity.hxx".}
proc constructLocalAnalysis_SurfaceContinuity*(EpsNul: Standard_Real = 0.001;
    EpsC0: Standard_Real = 0.001; EpsC1: Standard_Real = 0.001;
    EpsC2: Standard_Real = 0.001; EpsG1: Standard_Real = 0.001;
    Percent: Standard_Real = 0.01; Maxlen: Standard_Real = 10000): LocalAnalysis_SurfaceContinuity {.
    constructor, importcpp: "LocalAnalysis_SurfaceContinuity(@)",
    header: "LocalAnalysis_SurfaceContinuity.hxx".}
proc ComputeAnalysis*(this: var LocalAnalysis_SurfaceContinuity;
                     Surf1: var GeomLProp_SLProps; Surf2: var GeomLProp_SLProps;
                     Order: GeomAbs_Shape) {.importcpp: "ComputeAnalysis",
    header: "LocalAnalysis_SurfaceContinuity.hxx".}
proc IsDone*(this: LocalAnalysis_SurfaceContinuity): Standard_Boolean {.
    noSideEffect, importcpp: "IsDone",
    header: "LocalAnalysis_SurfaceContinuity.hxx".}
proc ContinuityStatus*(this: LocalAnalysis_SurfaceContinuity): GeomAbs_Shape {.
    noSideEffect, importcpp: "ContinuityStatus",
    header: "LocalAnalysis_SurfaceContinuity.hxx".}
proc StatusError*(this: LocalAnalysis_SurfaceContinuity): LocalAnalysis_StatusErrorType {.
    noSideEffect, importcpp: "StatusError",
    header: "LocalAnalysis_SurfaceContinuity.hxx".}
proc C0Value*(this: LocalAnalysis_SurfaceContinuity): Standard_Real {.noSideEffect,
    importcpp: "C0Value", header: "LocalAnalysis_SurfaceContinuity.hxx".}
proc C1UAngle*(this: LocalAnalysis_SurfaceContinuity): Standard_Real {.noSideEffect,
    importcpp: "C1UAngle", header: "LocalAnalysis_SurfaceContinuity.hxx".}
proc C1URatio*(this: LocalAnalysis_SurfaceContinuity): Standard_Real {.noSideEffect,
    importcpp: "C1URatio", header: "LocalAnalysis_SurfaceContinuity.hxx".}
proc C1VAngle*(this: LocalAnalysis_SurfaceContinuity): Standard_Real {.noSideEffect,
    importcpp: "C1VAngle", header: "LocalAnalysis_SurfaceContinuity.hxx".}
proc C1VRatio*(this: LocalAnalysis_SurfaceContinuity): Standard_Real {.noSideEffect,
    importcpp: "C1VRatio", header: "LocalAnalysis_SurfaceContinuity.hxx".}
proc C2UAngle*(this: LocalAnalysis_SurfaceContinuity): Standard_Real {.noSideEffect,
    importcpp: "C2UAngle", header: "LocalAnalysis_SurfaceContinuity.hxx".}
proc C2URatio*(this: LocalAnalysis_SurfaceContinuity): Standard_Real {.noSideEffect,
    importcpp: "C2URatio", header: "LocalAnalysis_SurfaceContinuity.hxx".}
proc C2VAngle*(this: LocalAnalysis_SurfaceContinuity): Standard_Real {.noSideEffect,
    importcpp: "C2VAngle", header: "LocalAnalysis_SurfaceContinuity.hxx".}
proc C2VRatio*(this: LocalAnalysis_SurfaceContinuity): Standard_Real {.noSideEffect,
    importcpp: "C2VRatio", header: "LocalAnalysis_SurfaceContinuity.hxx".}
proc G1Angle*(this: LocalAnalysis_SurfaceContinuity): Standard_Real {.noSideEffect,
    importcpp: "G1Angle", header: "LocalAnalysis_SurfaceContinuity.hxx".}
proc G2CurvatureGap*(this: LocalAnalysis_SurfaceContinuity): Standard_Real {.
    noSideEffect, importcpp: "G2CurvatureGap",
    header: "LocalAnalysis_SurfaceContinuity.hxx".}
proc IsC0*(this: LocalAnalysis_SurfaceContinuity): Standard_Boolean {.noSideEffect,
    importcpp: "IsC0", header: "LocalAnalysis_SurfaceContinuity.hxx".}
proc IsC1*(this: LocalAnalysis_SurfaceContinuity): Standard_Boolean {.noSideEffect,
    importcpp: "IsC1", header: "LocalAnalysis_SurfaceContinuity.hxx".}
proc IsC2*(this: LocalAnalysis_SurfaceContinuity): Standard_Boolean {.noSideEffect,
    importcpp: "IsC2", header: "LocalAnalysis_SurfaceContinuity.hxx".}
proc IsG1*(this: LocalAnalysis_SurfaceContinuity): Standard_Boolean {.noSideEffect,
    importcpp: "IsG1", header: "LocalAnalysis_SurfaceContinuity.hxx".}
proc IsG2*(this: LocalAnalysis_SurfaceContinuity): Standard_Boolean {.noSideEffect,
    importcpp: "IsG2", header: "LocalAnalysis_SurfaceContinuity.hxx".}