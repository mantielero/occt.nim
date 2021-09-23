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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../gp/gp_Dir, ../Standard/Standard_Real,
  ../IntImp/IntImp_ConstIsoparametric, ../IntSurf/IntSurf_PntOn2S, ../gp/gp_Dir2d,
  IntWalk_TheInt2S, ../TColStd/TColStd_Array1OfReal, IntWalk_StatusDeflection

discard "forward decl of IntSurf_LineOn2S"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of IntSurf_PntOn2S"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Pnt"
type
  IntWalk_PWalking* {.importcpp: "IntWalk_PWalking",
                     header: "IntWalk_PWalking.hxx", bycopy.} = object ## ! Constructor used to set the data to compute intersection
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
                                                                  ## ! Epsilon is
                                                                  ## SquareTolerance of points confusion.
    ## ! Index of point on the surface boundary.
    ## ! It is used for transition computation
    ## ! Tangent to WLine in the point with index myTangentIdx


proc constructIntWalk_PWalking*(Caro1: handle[Adaptor3d_HSurface];
                               Caro2: handle[Adaptor3d_HSurface];
                               TolTangency: Standard_Real; Epsilon: Standard_Real;
                               Deflection: Standard_Real; Increment: Standard_Real): IntWalk_PWalking {.
    constructor, importcpp: "IntWalk_PWalking(@)", header: "IntWalk_PWalking.hxx".}
proc constructIntWalk_PWalking*(Caro1: handle[Adaptor3d_HSurface];
                               Caro2: handle[Adaptor3d_HSurface];
                               TolTangency: Standard_Real; Epsilon: Standard_Real;
                               Deflection: Standard_Real;
                               Increment: Standard_Real; U1: Standard_Real;
                               V1: Standard_Real; U2: Standard_Real;
                               V2: Standard_Real): IntWalk_PWalking {.constructor,
    importcpp: "IntWalk_PWalking(@)", header: "IntWalk_PWalking.hxx".}
proc Perform*(this: var IntWalk_PWalking; ParDep: TColStd_Array1OfReal) {.
    importcpp: "Perform", header: "IntWalk_PWalking.hxx".}
proc Perform*(this: var IntWalk_PWalking; ParDep: TColStd_Array1OfReal;
             u1min: Standard_Real; v1min: Standard_Real; u2min: Standard_Real;
             v2min: Standard_Real; u1max: Standard_Real; v1max: Standard_Real;
             u2max: Standard_Real; v2max: Standard_Real) {.importcpp: "Perform",
    header: "IntWalk_PWalking.hxx".}
proc PerformFirstPoint*(this: var IntWalk_PWalking; ParDep: TColStd_Array1OfReal;
                       FirstPoint: var IntSurf_PntOn2S): Standard_Boolean {.
    importcpp: "PerformFirstPoint", header: "IntWalk_PWalking.hxx".}
proc IsDone*(this: IntWalk_PWalking): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "IntWalk_PWalking.hxx".}
proc NbPoints*(this: IntWalk_PWalking): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "IntWalk_PWalking.hxx".}
proc Value*(this: IntWalk_PWalking; Index: Standard_Integer): IntSurf_PntOn2S {.
    noSideEffect, importcpp: "Value", header: "IntWalk_PWalking.hxx".}
proc Line*(this: IntWalk_PWalking): handle[IntSurf_LineOn2S] {.noSideEffect,
    importcpp: "Line", header: "IntWalk_PWalking.hxx".}
proc TangentAtFirst*(this: IntWalk_PWalking): Standard_Boolean {.noSideEffect,
    importcpp: "TangentAtFirst", header: "IntWalk_PWalking.hxx".}
proc TangentAtLast*(this: IntWalk_PWalking): Standard_Boolean {.noSideEffect,
    importcpp: "TangentAtLast", header: "IntWalk_PWalking.hxx".}
proc IsClosed*(this: IntWalk_PWalking): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "IntWalk_PWalking.hxx".}
proc TangentAtLine*(this: IntWalk_PWalking; Index: var Standard_Integer): gp_Dir {.
    noSideEffect, importcpp: "TangentAtLine", header: "IntWalk_PWalking.hxx".}
proc TestDeflection*(this: var IntWalk_PWalking;
                    ChoixIso: IntImp_ConstIsoparametric;
                    theStatus: IntWalk_StatusDeflection): IntWalk_StatusDeflection {.
    importcpp: "TestDeflection", header: "IntWalk_PWalking.hxx".}
proc TestArret*(this: var IntWalk_PWalking; DejaReparti: Standard_Boolean;
               Param: var TColStd_Array1OfReal;
               ChoixIso: var IntImp_ConstIsoparametric): Standard_Boolean {.
    importcpp: "TestArret", header: "IntWalk_PWalking.hxx".}
proc RepartirOuDiviser*(this: var IntWalk_PWalking;
                       DejaReparti: var Standard_Boolean;
                       ChoixIso: var IntImp_ConstIsoparametric;
                       Arrive: var Standard_Boolean) {.
    importcpp: "RepartirOuDiviser", header: "IntWalk_PWalking.hxx".}
proc AddAPoint*(this: var IntWalk_PWalking; thePOn2S: IntSurf_PntOn2S) {.
    importcpp: "AddAPoint", header: "IntWalk_PWalking.hxx".}
proc RemoveAPoint*(this: var IntWalk_PWalking; theIndex: Standard_Integer) {.
    importcpp: "RemoveAPoint", header: "IntWalk_PWalking.hxx".}
proc PutToBoundary*(this: var IntWalk_PWalking;
                   theASurf1: handle[Adaptor3d_HSurface];
                   theASurf2: handle[Adaptor3d_HSurface]): Standard_Boolean {.
    importcpp: "PutToBoundary", header: "IntWalk_PWalking.hxx".}
proc SeekAdditionalPoints*(this: var IntWalk_PWalking;
                          theASurf1: handle[Adaptor3d_HSurface];
                          theASurf2: handle[Adaptor3d_HSurface];
                          theMinNbPoints: Standard_Integer): Standard_Boolean {.
    importcpp: "SeekAdditionalPoints", header: "IntWalk_PWalking.hxx".}
proc MaxStep*(this: var IntWalk_PWalking; theIndex: Standard_Integer): Standard_Real {.
    importcpp: "MaxStep", header: "IntWalk_PWalking.hxx".}