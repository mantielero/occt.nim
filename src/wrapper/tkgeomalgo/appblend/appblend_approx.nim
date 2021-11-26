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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
type
  AppBlendApprox* {.importcpp: "AppBlend_Approx", header: "AppBlend_Approx.hxx",
                   bycopy.} = object of RootObj


proc isDone*(this: AppBlendApprox): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                       dynlib: tkgeomalgo.}
proc surfShape*(this: AppBlendApprox; uDegree: var cint; vDegree: var cint;
               nbUPoles: var cint; nbVPoles: var cint; nbUKnots: var cint;
               nbVKnots: var cint) {.noSideEffect, cdecl, importcpp: "SurfShape",
                                  dynlib: tkgeomalgo.}
proc surface*(this: AppBlendApprox; tPoles: var TColgpArray2OfPnt;
             tWeights: var TColStdArray2OfReal; tUKnots: var TColStdArray1OfReal;
             tVKnots: var TColStdArray1OfReal; tUMults: var TColStdArray1OfInteger;
             tVMults: var TColStdArray1OfInteger) {.noSideEffect, cdecl,
    importcpp: "Surface", dynlib: tkgeomalgo.}
proc uDegree*(this: AppBlendApprox): cint {.noSideEffect, cdecl, importcpp: "UDegree",
                                        dynlib: tkgeomalgo.}
proc vDegree*(this: AppBlendApprox): cint {.noSideEffect, cdecl, importcpp: "VDegree",
                                        dynlib: tkgeomalgo.}
proc surfPoles*(this: AppBlendApprox): TColgpArray2OfPnt {.noSideEffect, cdecl,
    importcpp: "SurfPoles", dynlib: tkgeomalgo.}
proc surfWeights*(this: AppBlendApprox): TColStdArray2OfReal {.noSideEffect, cdecl,
    importcpp: "SurfWeights", dynlib: tkgeomalgo.}
proc surfUKnots*(this: AppBlendApprox): TColStdArray1OfReal {.noSideEffect, cdecl,
    importcpp: "SurfUKnots", dynlib: tkgeomalgo.}
proc surfVKnots*(this: AppBlendApprox): TColStdArray1OfReal {.noSideEffect, cdecl,
    importcpp: "SurfVKnots", dynlib: tkgeomalgo.}
proc surfUMults*(this: AppBlendApprox): TColStdArray1OfInteger {.noSideEffect, cdecl,
    importcpp: "SurfUMults", dynlib: tkgeomalgo.}
proc surfVMults*(this: AppBlendApprox): TColStdArray1OfInteger {.noSideEffect, cdecl,
    importcpp: "SurfVMults", dynlib: tkgeomalgo.}
proc nbCurves2d*(this: AppBlendApprox): cint {.noSideEffect, cdecl,
    importcpp: "NbCurves2d", dynlib: tkgeomalgo.}
proc curves2dShape*(this: AppBlendApprox; degree: var cint; nbPoles: var cint;
                   nbKnots: var cint) {.noSideEffect, cdecl,
                                     importcpp: "Curves2dShape",
                                     dynlib: tkgeomalgo.}
proc curve2d*(this: AppBlendApprox; index: cint; tPoles: var TColgpArray1OfPnt2d;
             tKnots: var TColStdArray1OfReal; tMults: var TColStdArray1OfInteger) {.
    noSideEffect, cdecl, importcpp: "Curve2d", dynlib: tkgeomalgo.}
proc curves2dDegree*(this: AppBlendApprox): cint {.noSideEffect, cdecl,
    importcpp: "Curves2dDegree", dynlib: tkgeomalgo.}
proc curve2dPoles*(this: AppBlendApprox; index: cint): TColgpArray1OfPnt2d {.
    noSideEffect, cdecl, importcpp: "Curve2dPoles", dynlib: tkgeomalgo.}
proc curves2dKnots*(this: AppBlendApprox): TColStdArray1OfReal {.noSideEffect, cdecl,
    importcpp: "Curves2dKnots", dynlib: tkgeomalgo.}
proc curves2dMults*(this: AppBlendApprox): TColStdArray1OfInteger {.noSideEffect,
    cdecl, importcpp: "Curves2dMults", dynlib: tkgeomalgo.}
proc tolReached*(this: AppBlendApprox; tol3d: var cfloat; tol2d: var cfloat) {.
    noSideEffect, cdecl, importcpp: "TolReached", dynlib: tkgeomalgo.}
proc tolCurveOnSurf*(this: AppBlendApprox; index: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "TolCurveOnSurf", dynlib: tkgeomalgo.}
proc destroyAppBlendApprox*(this: var AppBlendApprox) {.cdecl,
    importcpp: "#.~AppBlend_Approx()", dynlib: tkgeomalgo.}