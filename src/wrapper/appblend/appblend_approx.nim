import ../tcolgp/tcolgp_types
import appblend_types
import ../tcolstd/tcolstd_types





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



proc isDone*(this: AppBlendApprox): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                       header: "AppBlend_Approx.hxx".}
proc surfShape*(this: AppBlendApprox; uDegree: var cint; vDegree: var cint;
               nbUPoles: var cint; nbVPoles: var cint; nbUKnots: var cint;
               nbVKnots: var cint) {.noSideEffect, cdecl, importcpp: "SurfShape",
                                  header: "AppBlend_Approx.hxx".}
proc surface*(this: AppBlendApprox; tPoles: var TColgpArray2OfPnt;
             tWeights: var TColStdArray2OfReal; tUKnots: var TColStdArray1OfReal;
             tVKnots: var TColStdArray1OfReal; tUMults: var TColStdArray1OfInteger;
             tVMults: var TColStdArray1OfInteger) {.noSideEffect, cdecl,
    importcpp: "Surface", header: "AppBlend_Approx.hxx".}
proc uDegree*(this: AppBlendApprox): cint {.noSideEffect, cdecl, importcpp: "UDegree",
                                        header: "AppBlend_Approx.hxx".}
proc vDegree*(this: AppBlendApprox): cint {.noSideEffect, cdecl, importcpp: "VDegree",
                                        header: "AppBlend_Approx.hxx".}
proc surfPoles*(this: AppBlendApprox): TColgpArray2OfPnt {.noSideEffect, cdecl,
    importcpp: "SurfPoles", header: "AppBlend_Approx.hxx".}
proc surfWeights*(this: AppBlendApprox): TColStdArray2OfReal {.noSideEffect, cdecl,
    importcpp: "SurfWeights", header: "AppBlend_Approx.hxx".}
proc surfUKnots*(this: AppBlendApprox): TColStdArray1OfReal {.noSideEffect, cdecl,
    importcpp: "SurfUKnots", header: "AppBlend_Approx.hxx".}
proc surfVKnots*(this: AppBlendApprox): TColStdArray1OfReal {.noSideEffect, cdecl,
    importcpp: "SurfVKnots", header: "AppBlend_Approx.hxx".}
proc surfUMults*(this: AppBlendApprox): TColStdArray1OfInteger {.noSideEffect, cdecl,
    importcpp: "SurfUMults", header: "AppBlend_Approx.hxx".}
proc surfVMults*(this: AppBlendApprox): TColStdArray1OfInteger {.noSideEffect, cdecl,
    importcpp: "SurfVMults", header: "AppBlend_Approx.hxx".}
proc nbCurves2d*(this: AppBlendApprox): cint {.noSideEffect, cdecl,
    importcpp: "NbCurves2d", header: "AppBlend_Approx.hxx".}
proc curves2dShape*(this: AppBlendApprox; degree: var cint; nbPoles: var cint;
                   nbKnots: var cint) {.noSideEffect, cdecl,
                                     importcpp: "Curves2dShape",
                                     header: "AppBlend_Approx.hxx".}
proc curve2d*(this: AppBlendApprox; index: cint; tPoles: var TColgpArray1OfPnt2d;
             tKnots: var TColStdArray1OfReal; tMults: var TColStdArray1OfInteger) {.
    noSideEffect, cdecl, importcpp: "Curve2d", header: "AppBlend_Approx.hxx".}
proc curves2dDegree*(this: AppBlendApprox): cint {.noSideEffect, cdecl,
    importcpp: "Curves2dDegree", header: "AppBlend_Approx.hxx".}
proc curve2dPoles*(this: AppBlendApprox; index: cint): TColgpArray1OfPnt2d {.
    noSideEffect, cdecl, importcpp: "Curve2dPoles", header: "AppBlend_Approx.hxx".}
proc curves2dKnots*(this: AppBlendApprox): TColStdArray1OfReal {.noSideEffect, cdecl,
    importcpp: "Curves2dKnots", header: "AppBlend_Approx.hxx".}
proc curves2dMults*(this: AppBlendApprox): TColStdArray1OfInteger {.noSideEffect,
    cdecl, importcpp: "Curves2dMults", header: "AppBlend_Approx.hxx".}
proc tolReached*(this: AppBlendApprox; tol3d: var cfloat; tol2d: var cfloat) {.
    noSideEffect, cdecl, importcpp: "TolReached", header: "AppBlend_Approx.hxx".}
proc tolCurveOnSurf*(this: AppBlendApprox; index: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "TolCurveOnSurf", header: "AppBlend_Approx.hxx".}
proc destroyAppBlendApprox*(this: var AppBlendApprox) {.cdecl,
    importcpp: "#.~AppBlend_Approx()", header: "AppBlend_Approx.hxx".}


