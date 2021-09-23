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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, ../GeomAbs/GeomAbs_Shape,
  ../Standard/Standard_Integer

discard "forward decl of Geom2d_BSplineCurve"
discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Adaptor3d_HSurface"
type
  Approx_CurveOnSurface* {.importcpp: "Approx_CurveOnSurface",
                          header: "Approx_CurveOnSurface.hxx", bycopy.} = object ## ! This
                                                                            ## constructor
                                                                            ## calls
                                                                            ## perform
                                                                            ## method. This
                                                                            ## constructor is
                                                                            ## deprecated.
                                                                            ## !
                                                                            ## Checks
                                                                            ## whether the 2d
                                                                            ## curve is a
                                                                            ## isoline. It can be
                                                                            ## represented by
                                                                            ## b-spline,
                                                                            ## bezier,
                                                                            ## ! or
                                                                            ## geometric
                                                                            ## line. This line
                                                                            ## should have
                                                                            ## natural
                                                                            ## parameterization.
                                                                            ## !
                                                                            ## @param
                                                                            ## theC2D
                                                                            ## Trimmed
                                                                            ## curve to be
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
                                                                            ## Standard_True when 2d
                                                                            ## curve is a line and
                                                                            ## Standard_False
                                                                            ## otherwise.
                                                                            ## !
                                                                            ## Input
                                                                            ## curve.
    ## ! Input surface.
    ## ! First parameter of the result.
    ## ! Last parameter of the result.
    ## ! Tolerance.


## !!!Ignored construct:  public : ! This constructor calls perform method. This constructor is deprecated. Standard_DEPRECATED ( This constructor is deprecated. Use other constructor and perform method instead. ) Approx_CurveOnSurface ( const opencascade :: handle < Adaptor2d_HCurve2d > & C2D , const opencascade :: handle < Adaptor3d_HSurface > & Surf , const Standard_Real First , const Standard_Real Last , const Standard_Real Tol , const GeomAbs_Shape Continuity , const Standard_Integer MaxDegree , const Standard_Integer MaxSegments , const Standard_Boolean Only3d = Standard_False , const Standard_Boolean Only2d = Standard_False ) ;
## Error: identifier expected, but got: This constructor is deprecated. Use other constructor and perform method instead.!!!

proc constructApprox_CurveOnSurface*(theC2D: handle[Adaptor2d_HCurve2d];
                                    theSurf: handle[Adaptor3d_HSurface];
                                    theFirst: Standard_Real;
                                    theLast: Standard_Real; theTol: Standard_Real): Approx_CurveOnSurface {.
    constructor, importcpp: "Approx_CurveOnSurface(@)",
    header: "Approx_CurveOnSurface.hxx".}
proc IsDone*(this: Approx_CurveOnSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Approx_CurveOnSurface.hxx".}
proc HasResult*(this: Approx_CurveOnSurface): Standard_Boolean {.noSideEffect,
    importcpp: "HasResult", header: "Approx_CurveOnSurface.hxx".}
proc Curve3d*(this: Approx_CurveOnSurface): handle[Geom_BSplineCurve] {.
    noSideEffect, importcpp: "Curve3d", header: "Approx_CurveOnSurface.hxx".}
proc MaxError3d*(this: Approx_CurveOnSurface): Standard_Real {.noSideEffect,
    importcpp: "MaxError3d", header: "Approx_CurveOnSurface.hxx".}
proc Curve2d*(this: Approx_CurveOnSurface): handle[Geom2d_BSplineCurve] {.
    noSideEffect, importcpp: "Curve2d", header: "Approx_CurveOnSurface.hxx".}
proc MaxError2dU*(this: Approx_CurveOnSurface): Standard_Real {.noSideEffect,
    importcpp: "MaxError2dU", header: "Approx_CurveOnSurface.hxx".}
proc MaxError2dV*(this: Approx_CurveOnSurface): Standard_Real {.noSideEffect,
    importcpp: "MaxError2dV", header: "Approx_CurveOnSurface.hxx".}
proc Perform*(this: var Approx_CurveOnSurface; theMaxSegments: Standard_Integer;
             theMaxDegree: Standard_Integer; theContinuity: GeomAbs_Shape;
             theOnly3d: Standard_Boolean = Standard_False;
             theOnly2d: Standard_Boolean = Standard_False) {.importcpp: "Perform",
    header: "Approx_CurveOnSurface.hxx".}