##  Created on: 1997-09-30
##  Created by: Roman BORISOV
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of Geom2d_BSplineCurve"
discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Adaptor3d_HSurface"
type
  ApproxCurveOnSurface* {.importcpp: "Approx_CurveOnSurface",
                         header: "Approx_CurveOnSurface.hxx", bycopy.} = object ## ! This
                                                                           ## constructor calls
                                                                           ## perform
                                                                           ## method. This
                                                                           ## constructor is
                                                                           ## deprecated.
                                                                           ## !
                                                                           ## Checks
                                                                           ## whether the 2d curve is a
                                                                           ## isoline. It can be
                                                                           ## represented by
                                                                           ## b-spline,
                                                                           ## bezier,
                                                                           ## ! or
                                                                           ## geometric line. This line
                                                                           ## should have
                                                                           ## natural
                                                                           ## parameterization.
                                                                           ## !
                                                                           ## @param
                                                                           ## theC2D
                                                                           ## Trimmed curve to be
                                                                           ## checked.
                                                                           ## !
                                                                           ## @param
                                                                           ## theIsU       Flag
                                                                           ## indicating that line is u
                                                                           ## const.
                                                                           ## !
                                                                           ## @param
                                                                           ## theParam     Line
                                                                           ## parameter.
                                                                           ## !
                                                                           ## @param
                                                                           ## theIsForward Flag
                                                                           ## indicating
                                                                           ## forward
                                                                           ## parameterization on a
                                                                           ## isoline.
                                                                           ## !
                                                                           ## @return
                                                                           ## Standard_True when 2d curve is a line and
                                                                           ## Standard_False
                                                                           ## otherwise.
                                                                           ## ! Input
                                                                           ## curve.
    ## ! Input surface.
    ## ! First parameter of the result.
    ## ! Last parameter of the result.
    ## ! Tolerance.


proc newApproxCurveOnSurface*(c2d: Handle[Adaptor2dHCurve2d];
                             surf: Handle[Adaptor3dHSurface]; first: cfloat;
                             last: cfloat; tol: cfloat; continuity: GeomAbsShape;
                             maxDegree: cint; maxSegments: cint;
                             only3d: bool = false; only2d: bool = false): ApproxCurveOnSurface {.
    cdecl, constructor, importcpp: "Approx_CurveOnSurface(@)", dynlib: tkgeombase.}
proc newApproxCurveOnSurface*(theC2D: Handle[Adaptor2dHCurve2d];
                             theSurf: Handle[Adaptor3dHSurface]; theFirst: cfloat;
                             theLast: cfloat; theTol: cfloat): ApproxCurveOnSurface {.
    cdecl, constructor, importcpp: "Approx_CurveOnSurface(@)", dynlib: tkgeombase.}
proc isDone*(this: ApproxCurveOnSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", dynlib: tkgeombase.}
proc hasResult*(this: ApproxCurveOnSurface): bool {.noSideEffect, cdecl,
    importcpp: "HasResult", dynlib: tkgeombase.}
proc curve3d*(this: ApproxCurveOnSurface): Handle[GeomBSplineCurve] {.noSideEffect,
    cdecl, importcpp: "Curve3d", dynlib: tkgeombase.}
proc maxError3d*(this: ApproxCurveOnSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "MaxError3d", dynlib: tkgeombase.}
proc curve2d*(this: ApproxCurveOnSurface): Handle[Geom2dBSplineCurve] {.
    noSideEffect, cdecl, importcpp: "Curve2d", dynlib: tkgeombase.}
proc maxError2dU*(this: ApproxCurveOnSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "MaxError2dU", dynlib: tkgeombase.}
proc maxError2dV*(this: ApproxCurveOnSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "MaxError2dV", dynlib: tkgeombase.}
proc perform*(this: var ApproxCurveOnSurface; theMaxSegments: cint;
             theMaxDegree: cint; theContinuity: GeomAbsShape;
             theOnly3d: bool = false; theOnly2d: bool = false) {.cdecl,
    importcpp: "Perform", dynlib: tkgeombase.}