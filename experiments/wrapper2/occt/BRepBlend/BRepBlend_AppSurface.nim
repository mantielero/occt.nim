##  Created on: 1996-11-25
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
  ../Standard/Standard_Handle, ../Approx/Approx_SweepApproximation,
  ../AppBlend/AppBlend_Approx, ../Standard/Standard_Real,
  ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../TColgp/TColgp_Array2OfPnt,
  ../TColStd/TColStd_Array2OfReal, ../TColStd/TColStd_Array1OfReal,
  ../TColStd/TColStd_Array1OfInteger, ../TColgp/TColgp_Array1OfPnt2d,
  ../Standard/Standard_OStream

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Approx_SweepFunction"
type
  BRepBlend_AppSurface* {.importcpp: "BRepBlend_AppSurface",
                         header: "BRepBlend_AppSurface.hxx", bycopy.} = object of AppBlend_Approx ##
                                                                                           ## !
                                                                                           ## Approximation
                                                                                           ## of
                                                                                           ## the
                                                                                           ## new
                                                                                           ## Surface
                                                                                           ## (and
                                                                                           ##
                                                                                           ## !
                                                                                           ## eventually
                                                                                           ## the
                                                                                           ## 2d
                                                                                           ## Curves
                                                                                           ## on
                                                                                           ## the
                                                                                           ## support
                                                                                           ##
                                                                                           ## !
                                                                                           ## surfaces).
                                                                                           ##
                                                                                           ## !
                                                                                           ## Normaly
                                                                                           ## the
                                                                                           ## 2d
                                                                                           ## curve
                                                                                           ## are
                                                                                           ##
                                                                                           ## !
                                                                                           ## approximated
                                                                                           ## with
                                                                                           ## an
                                                                                           ## tolerance
                                                                                           ## given
                                                                                           ## by
                                                                                           ## the
                                                                                           ##
                                                                                           ## !
                                                                                           ## resolution
                                                                                           ## on
                                                                                           ## support
                                                                                           ## surfaces,
                                                                                           ## but
                                                                                           ## if
                                                                                           ## this
                                                                                           ##
                                                                                           ## !
                                                                                           ## tolerance
                                                                                           ## is
                                                                                           ## too
                                                                                           ## large
                                                                                           ## Tol2d
                                                                                           ## is
                                                                                           ## used.


proc constructBRepBlend_AppSurface*(Funct: handle[Approx_SweepFunction];
                                   First: Standard_Real; Last: Standard_Real;
                                   Tol3d: Standard_Real; Tol2d: Standard_Real;
                                   TolAngular: Standard_Real;
                                   Continuity: GeomAbs_Shape = GeomAbs_C0;
                                   Degmax: Standard_Integer = 11;
                                   Segmax: Standard_Integer = 50): BRepBlend_AppSurface {.
    constructor, importcpp: "BRepBlend_AppSurface(@)",
    header: "BRepBlend_AppSurface.hxx".}
proc IsDone*(this: BRepBlend_AppSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepBlend_AppSurface.hxx".}
proc SurfShape*(this: BRepBlend_AppSurface; UDegree: var Standard_Integer;
               VDegree: var Standard_Integer; NbUPoles: var Standard_Integer;
               NbVPoles: var Standard_Integer; NbUKnots: var Standard_Integer;
               NbVKnots: var Standard_Integer) {.noSideEffect,
    importcpp: "SurfShape", header: "BRepBlend_AppSurface.hxx".}
proc Surface*(this: BRepBlend_AppSurface; TPoles: var TColgp_Array2OfPnt;
             TWeights: var TColStd_Array2OfReal; TUKnots: var TColStd_Array1OfReal;
             TVKnots: var TColStd_Array1OfReal;
             TUMults: var TColStd_Array1OfInteger;
             TVMults: var TColStd_Array1OfInteger) {.noSideEffect,
    importcpp: "Surface", header: "BRepBlend_AppSurface.hxx".}
proc UDegree*(this: BRepBlend_AppSurface): Standard_Integer {.noSideEffect,
    importcpp: "UDegree", header: "BRepBlend_AppSurface.hxx".}
proc VDegree*(this: BRepBlend_AppSurface): Standard_Integer {.noSideEffect,
    importcpp: "VDegree", header: "BRepBlend_AppSurface.hxx".}
proc SurfPoles*(this: BRepBlend_AppSurface): TColgp_Array2OfPnt {.noSideEffect,
    importcpp: "SurfPoles", header: "BRepBlend_AppSurface.hxx".}
proc SurfWeights*(this: BRepBlend_AppSurface): TColStd_Array2OfReal {.noSideEffect,
    importcpp: "SurfWeights", header: "BRepBlend_AppSurface.hxx".}
proc SurfUKnots*(this: BRepBlend_AppSurface): TColStd_Array1OfReal {.noSideEffect,
    importcpp: "SurfUKnots", header: "BRepBlend_AppSurface.hxx".}
proc SurfVKnots*(this: BRepBlend_AppSurface): TColStd_Array1OfReal {.noSideEffect,
    importcpp: "SurfVKnots", header: "BRepBlend_AppSurface.hxx".}
proc SurfUMults*(this: BRepBlend_AppSurface): TColStd_Array1OfInteger {.
    noSideEffect, importcpp: "SurfUMults", header: "BRepBlend_AppSurface.hxx".}
proc SurfVMults*(this: BRepBlend_AppSurface): TColStd_Array1OfInteger {.
    noSideEffect, importcpp: "SurfVMults", header: "BRepBlend_AppSurface.hxx".}
proc MaxErrorOnSurf*(this: BRepBlend_AppSurface): Standard_Real {.noSideEffect,
    importcpp: "MaxErrorOnSurf", header: "BRepBlend_AppSurface.hxx".}
proc NbCurves2d*(this: BRepBlend_AppSurface): Standard_Integer {.noSideEffect,
    importcpp: "NbCurves2d", header: "BRepBlend_AppSurface.hxx".}
proc Curves2dShape*(this: BRepBlend_AppSurface; Degree: var Standard_Integer;
                   NbPoles: var Standard_Integer; NbKnots: var Standard_Integer) {.
    noSideEffect, importcpp: "Curves2dShape", header: "BRepBlend_AppSurface.hxx".}
proc Curve2d*(this: BRepBlend_AppSurface; Index: Standard_Integer;
             TPoles: var TColgp_Array1OfPnt2d; TKnots: var TColStd_Array1OfReal;
             TMults: var TColStd_Array1OfInteger) {.noSideEffect,
    importcpp: "Curve2d", header: "BRepBlend_AppSurface.hxx".}
proc Curves2dDegree*(this: BRepBlend_AppSurface): Standard_Integer {.noSideEffect,
    importcpp: "Curves2dDegree", header: "BRepBlend_AppSurface.hxx".}
proc Curve2dPoles*(this: BRepBlend_AppSurface; Index: Standard_Integer): TColgp_Array1OfPnt2d {.
    noSideEffect, importcpp: "Curve2dPoles", header: "BRepBlend_AppSurface.hxx".}
proc Curves2dKnots*(this: BRepBlend_AppSurface): TColStd_Array1OfReal {.
    noSideEffect, importcpp: "Curves2dKnots", header: "BRepBlend_AppSurface.hxx".}
proc Curves2dMults*(this: BRepBlend_AppSurface): TColStd_Array1OfInteger {.
    noSideEffect, importcpp: "Curves2dMults", header: "BRepBlend_AppSurface.hxx".}
proc TolReached*(this: BRepBlend_AppSurface; Tol3d: var Standard_Real;
                Tol2d: var Standard_Real) {.noSideEffect, importcpp: "TolReached",
    header: "BRepBlend_AppSurface.hxx".}
proc Max2dError*(this: BRepBlend_AppSurface; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Max2dError", header: "BRepBlend_AppSurface.hxx".}
proc TolCurveOnSurf*(this: BRepBlend_AppSurface; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "TolCurveOnSurf", header: "BRepBlend_AppSurface.hxx".}
proc Dump*(this: BRepBlend_AppSurface; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "BRepBlend_AppSurface.hxx".}