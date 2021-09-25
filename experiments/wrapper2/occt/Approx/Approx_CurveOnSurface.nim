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


## !!!Ignored construct:  public : ! This constructor calls perform method. This constructor is deprecated. Standard_DEPRECATED ( This constructor is deprecated. Use other constructor and perform method instead. ) Approx_CurveOnSurface ( const opencascade :: handle < Adaptor2d_HCurve2d > & C2D , const opencascade :: handle < Adaptor3d_HSurface > & Surf , const Standard_Real First , const Standard_Real Last , const Standard_Real Tol , const GeomAbs_Shape Continuity , const Standard_Integer MaxDegree , const Standard_Integer MaxSegments , const Standard_Boolean Only3d = Standard_False , const Standard_Boolean Only2d = Standard_False ) ;
## Error: identifier expected, but got: This constructor is deprecated. Use other constructor and perform method instead.!!!

proc constructApproxCurveOnSurface*(theC2D: Handle[Adaptor2dHCurve2d];
                                   theSurf: Handle[Adaptor3dHSurface];
                                   theFirst: float; theLast: float; theTol: float): ApproxCurveOnSurface {.
    constructor, importcpp: "Approx_CurveOnSurface(@)",
    header: "Approx_CurveOnSurface.hxx".}
proc isDone*(this: ApproxCurveOnSurface): bool {.noSideEffect, importcpp: "IsDone",
    header: "Approx_CurveOnSurface.hxx".}
proc hasResult*(this: ApproxCurveOnSurface): bool {.noSideEffect,
    importcpp: "HasResult", header: "Approx_CurveOnSurface.hxx".}
proc curve3d*(this: ApproxCurveOnSurface): Handle[GeomBSplineCurve] {.noSideEffect,
    importcpp: "Curve3d", header: "Approx_CurveOnSurface.hxx".}
proc maxError3d*(this: ApproxCurveOnSurface): float {.noSideEffect,
    importcpp: "MaxError3d", header: "Approx_CurveOnSurface.hxx".}
proc curve2d*(this: ApproxCurveOnSurface): Handle[Geom2dBSplineCurve] {.
    noSideEffect, importcpp: "Curve2d", header: "Approx_CurveOnSurface.hxx".}
proc maxError2dU*(this: ApproxCurveOnSurface): float {.noSideEffect,
    importcpp: "MaxError2dU", header: "Approx_CurveOnSurface.hxx".}
proc maxError2dV*(this: ApproxCurveOnSurface): float {.noSideEffect,
    importcpp: "MaxError2dV", header: "Approx_CurveOnSurface.hxx".}
proc perform*(this: var ApproxCurveOnSurface; theMaxSegments: int; theMaxDegree: int;
             theContinuity: GeomAbsShape; theOnly3d: bool = false;
             theOnly2d: bool = false) {.importcpp: "Perform",
                                    header: "Approx_CurveOnSurface.hxx".}
