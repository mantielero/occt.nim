##  Created on: 1996-08-27
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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../TColgp/TColgp_Array2OfPnt,
  ../TColStd/TColStd_Array2OfReal, ../TColStd/TColStd_Array1OfReal,
  ../TColStd/TColStd_Array1OfInteger, ../TColgp/TColgp_Array1OfPnt2d,
  ../Standard/Standard_Real

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
type
  AppBlend_Approx* {.importcpp: "AppBlend_Approx", header: "AppBlend_Approx.hxx",
                    bycopy.} = object


proc IsDone*(this: AppBlend_Approx): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "AppBlend_Approx.hxx".}
proc SurfShape*(this: AppBlend_Approx; UDegree: var Standard_Integer;
               VDegree: var Standard_Integer; NbUPoles: var Standard_Integer;
               NbVPoles: var Standard_Integer; NbUKnots: var Standard_Integer;
               NbVKnots: var Standard_Integer) {.noSideEffect,
    importcpp: "SurfShape", header: "AppBlend_Approx.hxx".}
proc Surface*(this: AppBlend_Approx; TPoles: var TColgp_Array2OfPnt;
             TWeights: var TColStd_Array2OfReal; TUKnots: var TColStd_Array1OfReal;
             TVKnots: var TColStd_Array1OfReal;
             TUMults: var TColStd_Array1OfInteger;
             TVMults: var TColStd_Array1OfInteger) {.noSideEffect,
    importcpp: "Surface", header: "AppBlend_Approx.hxx".}
proc UDegree*(this: AppBlend_Approx): Standard_Integer {.noSideEffect,
    importcpp: "UDegree", header: "AppBlend_Approx.hxx".}
proc VDegree*(this: AppBlend_Approx): Standard_Integer {.noSideEffect,
    importcpp: "VDegree", header: "AppBlend_Approx.hxx".}
proc SurfPoles*(this: AppBlend_Approx): TColgp_Array2OfPnt {.noSideEffect,
    importcpp: "SurfPoles", header: "AppBlend_Approx.hxx".}
proc SurfWeights*(this: AppBlend_Approx): TColStd_Array2OfReal {.noSideEffect,
    importcpp: "SurfWeights", header: "AppBlend_Approx.hxx".}
proc SurfUKnots*(this: AppBlend_Approx): TColStd_Array1OfReal {.noSideEffect,
    importcpp: "SurfUKnots", header: "AppBlend_Approx.hxx".}
proc SurfVKnots*(this: AppBlend_Approx): TColStd_Array1OfReal {.noSideEffect,
    importcpp: "SurfVKnots", header: "AppBlend_Approx.hxx".}
proc SurfUMults*(this: AppBlend_Approx): TColStd_Array1OfInteger {.noSideEffect,
    importcpp: "SurfUMults", header: "AppBlend_Approx.hxx".}
proc SurfVMults*(this: AppBlend_Approx): TColStd_Array1OfInteger {.noSideEffect,
    importcpp: "SurfVMults", header: "AppBlend_Approx.hxx".}
proc NbCurves2d*(this: AppBlend_Approx): Standard_Integer {.noSideEffect,
    importcpp: "NbCurves2d", header: "AppBlend_Approx.hxx".}
proc Curves2dShape*(this: AppBlend_Approx; Degree: var Standard_Integer;
                   NbPoles: var Standard_Integer; NbKnots: var Standard_Integer) {.
    noSideEffect, importcpp: "Curves2dShape", header: "AppBlend_Approx.hxx".}
proc Curve2d*(this: AppBlend_Approx; Index: Standard_Integer;
             TPoles: var TColgp_Array1OfPnt2d; TKnots: var TColStd_Array1OfReal;
             TMults: var TColStd_Array1OfInteger) {.noSideEffect,
    importcpp: "Curve2d", header: "AppBlend_Approx.hxx".}
proc Curves2dDegree*(this: AppBlend_Approx): Standard_Integer {.noSideEffect,
    importcpp: "Curves2dDegree", header: "AppBlend_Approx.hxx".}
proc Curve2dPoles*(this: AppBlend_Approx; Index: Standard_Integer): TColgp_Array1OfPnt2d {.
    noSideEffect, importcpp: "Curve2dPoles", header: "AppBlend_Approx.hxx".}
proc Curves2dKnots*(this: AppBlend_Approx): TColStd_Array1OfReal {.noSideEffect,
    importcpp: "Curves2dKnots", header: "AppBlend_Approx.hxx".}
proc Curves2dMults*(this: AppBlend_Approx): TColStd_Array1OfInteger {.noSideEffect,
    importcpp: "Curves2dMults", header: "AppBlend_Approx.hxx".}
proc TolReached*(this: AppBlend_Approx; Tol3d: var Standard_Real;
                Tol2d: var Standard_Real) {.noSideEffect, importcpp: "TolReached",
    header: "AppBlend_Approx.hxx".}
proc TolCurveOnSurf*(this: AppBlend_Approx; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "TolCurveOnSurf", header: "AppBlend_Approx.hxx".}
proc destroyAppBlend_Approx*(this: var AppBlend_Approx) {.
    importcpp: "#.~AppBlend_Approx()", header: "AppBlend_Approx.hxx".}