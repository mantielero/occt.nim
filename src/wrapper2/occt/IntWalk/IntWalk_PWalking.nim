##  Created on: 1992-04-03
##  Created by: Isabelle GRIGNON
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

discard "forward decl of IntSurf_LineOn2S"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of IntSurf_PntOn2S"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Pnt"
type
  IntWalkPWalking* {.importcpp: "IntWalk_PWalking", header: "IntWalk_PWalking.hxx",
                    bycopy.} = object ## ! Constructor used to set the data to compute intersection
                                   ## ! lines between Caro1 and Caro2.
                                   ## ! Deflection is the maximum deflection admitted between two
                                   ## ! consecutive points on the resulting polyline.
                                   ## ! TolTangency is the tolerance to find a tangent point.
                                   ## ! Func is the criterion which has to be evaluated at each
                                   ## ! solution point (each point of the line).
                                   ## ! It is necessary to call the Perform method to compute
                                   ## ! the intersection lines.
                                   ## ! The line found starts at a point on or in 2 natural domains
                                   ## ! of surfaces. It can be closed in the
                                   ## ! standard case if it is open it stops and begins at the
                                   ## ! border of one of the domains. If an open line
                                   ## ! stops at the middle of a domain, one stops at the tangent point.
                                   ## ! Epsilon is SquareTolerance of points confusion.
    ## ! Index of point on the surface boundary.
    ## ! It is used for transition computation
    ## ! Tangent to WLine in the point with index myTangentIdx


proc constructIntWalkPWalking*(caro1: Handle[Adaptor3dHSurface];
                              caro2: Handle[Adaptor3dHSurface];
                              tolTangency: StandardReal; epsilon: StandardReal;
                              deflection: StandardReal; increment: StandardReal): IntWalkPWalking {.
    constructor, importcpp: "IntWalk_PWalking(@)", header: "IntWalk_PWalking.hxx".}
proc constructIntWalkPWalking*(caro1: Handle[Adaptor3dHSurface];
                              caro2: Handle[Adaptor3dHSurface];
                              tolTangency: StandardReal; epsilon: StandardReal;
                              deflection: StandardReal; increment: StandardReal;
                              u1: StandardReal; v1: StandardReal; u2: StandardReal;
                              v2: StandardReal): IntWalkPWalking {.constructor,
    importcpp: "IntWalk_PWalking(@)", header: "IntWalk_PWalking.hxx".}
proc perform*(this: var IntWalkPWalking; parDep: TColStdArray1OfReal) {.
    importcpp: "Perform", header: "IntWalk_PWalking.hxx".}
proc perform*(this: var IntWalkPWalking; parDep: TColStdArray1OfReal;
             u1min: StandardReal; v1min: StandardReal; u2min: StandardReal;
             v2min: StandardReal; u1max: StandardReal; v1max: StandardReal;
             u2max: StandardReal; v2max: StandardReal) {.importcpp: "Perform",
    header: "IntWalk_PWalking.hxx".}
proc performFirstPoint*(this: var IntWalkPWalking; parDep: TColStdArray1OfReal;
                       firstPoint: var IntSurfPntOn2S): StandardBoolean {.
    importcpp: "PerformFirstPoint", header: "IntWalk_PWalking.hxx".}
proc isDone*(this: IntWalkPWalking): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "IntWalk_PWalking.hxx".}
proc nbPoints*(this: IntWalkPWalking): StandardInteger {.noSideEffect,
    importcpp: "NbPoints", header: "IntWalk_PWalking.hxx".}
proc value*(this: IntWalkPWalking; index: StandardInteger): IntSurfPntOn2S {.
    noSideEffect, importcpp: "Value", header: "IntWalk_PWalking.hxx".}
proc line*(this: IntWalkPWalking): Handle[IntSurfLineOn2S] {.noSideEffect,
    importcpp: "Line", header: "IntWalk_PWalking.hxx".}
proc tangentAtFirst*(this: IntWalkPWalking): StandardBoolean {.noSideEffect,
    importcpp: "TangentAtFirst", header: "IntWalk_PWalking.hxx".}
proc tangentAtLast*(this: IntWalkPWalking): StandardBoolean {.noSideEffect,
    importcpp: "TangentAtLast", header: "IntWalk_PWalking.hxx".}
proc isClosed*(this: IntWalkPWalking): StandardBoolean {.noSideEffect,
    importcpp: "IsClosed", header: "IntWalk_PWalking.hxx".}
proc tangentAtLine*(this: IntWalkPWalking; index: var StandardInteger): GpDir {.
    noSideEffect, importcpp: "TangentAtLine", header: "IntWalk_PWalking.hxx".}
proc testDeflection*(this: var IntWalkPWalking; choixIso: IntImpConstIsoparametric;
                    theStatus: IntWalkStatusDeflection): IntWalkStatusDeflection {.
    importcpp: "TestDeflection", header: "IntWalk_PWalking.hxx".}
proc testArret*(this: var IntWalkPWalking; dejaReparti: StandardBoolean;
               param: var TColStdArray1OfReal;
               choixIso: var IntImpConstIsoparametric): StandardBoolean {.
    importcpp: "TestArret", header: "IntWalk_PWalking.hxx".}
proc repartirOuDiviser*(this: var IntWalkPWalking; dejaReparti: var StandardBoolean;
                       choixIso: var IntImpConstIsoparametric;
                       arrive: var StandardBoolean) {.
    importcpp: "RepartirOuDiviser", header: "IntWalk_PWalking.hxx".}
proc addAPoint*(this: var IntWalkPWalking; thePOn2S: IntSurfPntOn2S) {.
    importcpp: "AddAPoint", header: "IntWalk_PWalking.hxx".}
proc removeAPoint*(this: var IntWalkPWalking; theIndex: StandardInteger) {.
    importcpp: "RemoveAPoint", header: "IntWalk_PWalking.hxx".}
proc putToBoundary*(this: var IntWalkPWalking; theASurf1: Handle[Adaptor3dHSurface];
                   theASurf2: Handle[Adaptor3dHSurface]): StandardBoolean {.
    importcpp: "PutToBoundary", header: "IntWalk_PWalking.hxx".}
proc seekAdditionalPoints*(this: var IntWalkPWalking;
                          theASurf1: Handle[Adaptor3dHSurface];
                          theASurf2: Handle[Adaptor3dHSurface];
                          theMinNbPoints: StandardInteger): StandardBoolean {.
    importcpp: "SeekAdditionalPoints", header: "IntWalk_PWalking.hxx".}
proc maxStep*(this: var IntWalkPWalking; theIndex: StandardInteger): StandardReal {.
    importcpp: "MaxStep", header: "IntWalk_PWalking.hxx".}

