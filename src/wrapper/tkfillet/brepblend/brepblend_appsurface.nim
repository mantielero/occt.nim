import ../../tkmath/tcolgp/tcolgp_types
import brepblend_types
import ../../tkgeombase/approx/approx_types
import ../../tkernel/standard/standard_types
import ../../tkernel/tcolstd/tcolstd_types





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



proc newBRepBlendAppSurface*(funct: Handle[ApproxSweepFunction]; first: cfloat;
                            last: cfloat; tol3d: cfloat; tol2d: cfloat;
                            tolAngular: cfloat;
                            continuity: GeomAbsShape = geomAbsC0; degmax: cint = 11;
                            segmax: cint = 50): BRepBlendAppSurface {.cdecl,
    constructor, importcpp: "BRepBlend_AppSurface(@)", header: "BRepBlend_AppSurface.hxx".}
proc isDone*(this: BRepBlendAppSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "BRepBlend_AppSurface.hxx".}
proc surfShape*(this: BRepBlendAppSurface; uDegree: var cint; vDegree: var cint;
               nbUPoles: var cint; nbVPoles: var cint; nbUKnots: var cint;
               nbVKnots: var cint) {.noSideEffect, cdecl, importcpp: "SurfShape",
                                  header: "BRepBlend_AppSurface.hxx".}
proc surface*(this: BRepBlendAppSurface; tPoles: var TColgpArray2OfPnt;
             tWeights: var TColStdArray2OfReal; tUKnots: var TColStdArray1OfReal;
             tVKnots: var TColStdArray1OfReal; tUMults: var TColStdArray1OfInteger;
             tVMults: var TColStdArray1OfInteger) {.noSideEffect, cdecl,
    importcpp: "Surface", header: "BRepBlend_AppSurface.hxx".}
proc uDegree*(this: BRepBlendAppSurface): cint {.noSideEffect, cdecl,
    importcpp: "UDegree", header: "BRepBlend_AppSurface.hxx".}
proc vDegree*(this: BRepBlendAppSurface): cint {.noSideEffect, cdecl,
    importcpp: "VDegree", header: "BRepBlend_AppSurface.hxx".}
proc surfPoles*(this: BRepBlendAppSurface): TColgpArray2OfPnt {.noSideEffect, cdecl,
    importcpp: "SurfPoles", header: "BRepBlend_AppSurface.hxx".}
proc surfWeights*(this: BRepBlendAppSurface): TColStdArray2OfReal {.noSideEffect,
    cdecl, importcpp: "SurfWeights", header: "BRepBlend_AppSurface.hxx".}
proc surfUKnots*(this: BRepBlendAppSurface): TColStdArray1OfReal {.noSideEffect,
    cdecl, importcpp: "SurfUKnots", header: "BRepBlend_AppSurface.hxx".}
proc surfVKnots*(this: BRepBlendAppSurface): TColStdArray1OfReal {.noSideEffect,
    cdecl, importcpp: "SurfVKnots", header: "BRepBlend_AppSurface.hxx".}
proc surfUMults*(this: BRepBlendAppSurface): TColStdArray1OfInteger {.noSideEffect,
    cdecl, importcpp: "SurfUMults", header: "BRepBlend_AppSurface.hxx".}
proc surfVMults*(this: BRepBlendAppSurface): TColStdArray1OfInteger {.noSideEffect,
    cdecl, importcpp: "SurfVMults", header: "BRepBlend_AppSurface.hxx".}
proc maxErrorOnSurf*(this: BRepBlendAppSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "MaxErrorOnSurf", header: "BRepBlend_AppSurface.hxx".}
proc nbCurves2d*(this: BRepBlendAppSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbCurves2d", header: "BRepBlend_AppSurface.hxx".}
proc curves2dShape*(this: BRepBlendAppSurface; degree: var cint; nbPoles: var cint;
                   nbKnots: var cint) {.noSideEffect, cdecl,
                                     importcpp: "Curves2dShape", header: "BRepBlend_AppSurface.hxx".}
proc curve2d*(this: BRepBlendAppSurface; index: cint;
             tPoles: var TColgpArray1OfPnt2d; tKnots: var TColStdArray1OfReal;
             tMults: var TColStdArray1OfInteger) {.noSideEffect, cdecl,
    importcpp: "Curve2d", header: "BRepBlend_AppSurface.hxx".}
proc curves2dDegree*(this: BRepBlendAppSurface): cint {.noSideEffect, cdecl,
    importcpp: "Curves2dDegree", header: "BRepBlend_AppSurface.hxx".}
proc curve2dPoles*(this: BRepBlendAppSurface; index: cint): TColgpArray1OfPnt2d {.
    noSideEffect, cdecl, importcpp: "Curve2dPoles", header: "BRepBlend_AppSurface.hxx".}
proc curves2dKnots*(this: BRepBlendAppSurface): TColStdArray1OfReal {.noSideEffect,
    cdecl, importcpp: "Curves2dKnots", header: "BRepBlend_AppSurface.hxx".}
proc curves2dMults*(this: BRepBlendAppSurface): TColStdArray1OfInteger {.
    noSideEffect, cdecl, importcpp: "Curves2dMults", header: "BRepBlend_AppSurface.hxx".}
proc tolReached*(this: BRepBlendAppSurface; tol3d: var cfloat; tol2d: var cfloat) {.
    noSideEffect, cdecl, importcpp: "TolReached", header: "BRepBlend_AppSurface.hxx".}
proc max2dError*(this: BRepBlendAppSurface; index: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Max2dError", header: "BRepBlend_AppSurface.hxx".}
proc tolCurveOnSurf*(this: BRepBlendAppSurface; index: cint): cfloat {.noSideEffect,
    cdecl, importcpp: "TolCurveOnSurf", header: "BRepBlend_AppSurface.hxx".}
proc dump*(this: BRepBlendAppSurface; o: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", header: "BRepBlend_AppSurface.hxx".}


