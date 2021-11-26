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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Approx_SweepFunction"
type
  BRepBlendAppSurface* {.importcpp: "BRepBlend_AppSurface",
                        header: "BRepBlend_AppSurface.hxx", bycopy.} = object of AppBlendApprox ##
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


proc newBRepBlendAppSurface*(funct: Handle[ApproxSweepFunction]; first: cfloat;
                            last: cfloat; tol3d: cfloat; tol2d: cfloat;
                            tolAngular: cfloat;
                            continuity: GeomAbsShape = geomAbsC0; degmax: cint = 11;
                            segmax: cint = 50): BRepBlendAppSurface {.cdecl,
    constructor, importcpp: "BRepBlend_AppSurface(@)", dynlib: tkfillet.}
proc isDone*(this: BRepBlendAppSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", dynlib: tkfillet.}
proc surfShape*(this: BRepBlendAppSurface; uDegree: var cint; vDegree: var cint;
               nbUPoles: var cint; nbVPoles: var cint; nbUKnots: var cint;
               nbVKnots: var cint) {.noSideEffect, cdecl, importcpp: "SurfShape",
                                  dynlib: tkfillet.}
proc surface*(this: BRepBlendAppSurface; tPoles: var TColgpArray2OfPnt;
             tWeights: var TColStdArray2OfReal; tUKnots: var TColStdArray1OfReal;
             tVKnots: var TColStdArray1OfReal; tUMults: var TColStdArray1OfInteger;
             tVMults: var TColStdArray1OfInteger) {.noSideEffect, cdecl,
    importcpp: "Surface", dynlib: tkfillet.}
proc uDegree*(this: BRepBlendAppSurface): cint {.noSideEffect, cdecl,
    importcpp: "UDegree", dynlib: tkfillet.}
proc vDegree*(this: BRepBlendAppSurface): cint {.noSideEffect, cdecl,
    importcpp: "VDegree", dynlib: tkfillet.}
proc surfPoles*(this: BRepBlendAppSurface): TColgpArray2OfPnt {.noSideEffect, cdecl,
    importcpp: "SurfPoles", dynlib: tkfillet.}
proc surfWeights*(this: BRepBlendAppSurface): TColStdArray2OfReal {.noSideEffect,
    cdecl, importcpp: "SurfWeights", dynlib: tkfillet.}
proc surfUKnots*(this: BRepBlendAppSurface): TColStdArray1OfReal {.noSideEffect,
    cdecl, importcpp: "SurfUKnots", dynlib: tkfillet.}
proc surfVKnots*(this: BRepBlendAppSurface): TColStdArray1OfReal {.noSideEffect,
    cdecl, importcpp: "SurfVKnots", dynlib: tkfillet.}
proc surfUMults*(this: BRepBlendAppSurface): TColStdArray1OfInteger {.noSideEffect,
    cdecl, importcpp: "SurfUMults", dynlib: tkfillet.}
proc surfVMults*(this: BRepBlendAppSurface): TColStdArray1OfInteger {.noSideEffect,
    cdecl, importcpp: "SurfVMults", dynlib: tkfillet.}
proc maxErrorOnSurf*(this: BRepBlendAppSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "MaxErrorOnSurf", dynlib: tkfillet.}
proc nbCurves2d*(this: BRepBlendAppSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbCurves2d", dynlib: tkfillet.}
proc curves2dShape*(this: BRepBlendAppSurface; degree: var cint; nbPoles: var cint;
                   nbKnots: var cint) {.noSideEffect, cdecl,
                                     importcpp: "Curves2dShape", dynlib: tkfillet.}
proc curve2d*(this: BRepBlendAppSurface; index: cint;
             tPoles: var TColgpArray1OfPnt2d; tKnots: var TColStdArray1OfReal;
             tMults: var TColStdArray1OfInteger) {.noSideEffect, cdecl,
    importcpp: "Curve2d", dynlib: tkfillet.}
proc curves2dDegree*(this: BRepBlendAppSurface): cint {.noSideEffect, cdecl,
    importcpp: "Curves2dDegree", dynlib: tkfillet.}
proc curve2dPoles*(this: BRepBlendAppSurface; index: cint): TColgpArray1OfPnt2d {.
    noSideEffect, cdecl, importcpp: "Curve2dPoles", dynlib: tkfillet.}
proc curves2dKnots*(this: BRepBlendAppSurface): TColStdArray1OfReal {.noSideEffect,
    cdecl, importcpp: "Curves2dKnots", dynlib: tkfillet.}
proc curves2dMults*(this: BRepBlendAppSurface): TColStdArray1OfInteger {.
    noSideEffect, cdecl, importcpp: "Curves2dMults", dynlib: tkfillet.}
proc tolReached*(this: BRepBlendAppSurface; tol3d: var cfloat; tol2d: var cfloat) {.
    noSideEffect, cdecl, importcpp: "TolReached", dynlib: tkfillet.}
proc max2dError*(this: BRepBlendAppSurface; index: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Max2dError", dynlib: tkfillet.}
proc tolCurveOnSurf*(this: BRepBlendAppSurface; index: cint): cfloat {.noSideEffect,
    cdecl, importcpp: "TolCurveOnSurf", dynlib: tkfillet.}
proc dump*(this: BRepBlendAppSurface; o: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", dynlib: tkfillet.}