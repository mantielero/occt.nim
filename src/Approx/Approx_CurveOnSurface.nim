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
    geomBSplineCurve* {.importc: "Geom_BSplineCurve".}: Handle
    geom2dBSplineCurve* {.importc: "Geom2d_BSplineCurve".}: Handle
    ## ! Last parameter of the result.
    ## ! Tolerance.


## !!!Ignored construct:  public : ! This constructor calls perform method. This constructor is deprecated. Standard_DEPRECATED ( This constructor is deprecated. Use other constructor and perform method instead. ) Approx_CurveOnSurface ( const Handle ( Adaptor2d_HCurve2d ) & C2D , const Handle ( Adaptor3d_HSurface ) & Surf , const Standard_Real First , const Standard_Real Last , const Standard_Real Tol , const GeomAbs_Shape Continuity , const Standard_Integer MaxDegree , const Standard_Integer MaxSegments , const Standard_Boolean Only3d = Standard_False , const Standard_Boolean Only2d = Standard_False ) ;
## Error: identifier expected, but got: This constructor is deprecated. Use other constructor and perform method instead.!!!

## !!!Ignored construct:  ! This constructor does not call perform method.
## ! @param theC2D   2D Curve to be approximated in 3D.
## ! @param theSurf  Surface where 2D curve is located.
## ! @param theFirst First parameter of resulting curve.
## ! @param theFirst Last parameter of resulting curve.
## ! @param theTol   Computation tolerance. Approx_CurveOnSurface ( const Handle ( Adaptor2d_HCurve2d ) & theC2D , const Handle ( Adaptor3d_HSurface ) & theSurf , const Standard_Real theFirst , const Standard_Real theLast , const Standard_Real theTol ) ;
## Error: token expected: ) but got: &!!!

proc isDone*(this: ApproxCurveOnSurface): bool {.noSideEffect, importcpp: "IsDone",
    header: "Approx_CurveOnSurface.hxx".}
proc hasResult*(this: ApproxCurveOnSurface): bool {.noSideEffect,
    importcpp: "HasResult", header: "Approx_CurveOnSurface.hxx".}
## !!!Ignored construct:  Curve3d ( ) const ;
## Error: identifier expected, but got: )!!!

proc maxError3d*(this: ApproxCurveOnSurface): float {.noSideEffect,
    importcpp: "MaxError3d", header: "Approx_CurveOnSurface.hxx".}
## !!!Ignored construct:  Curve2d ( ) const ;
## Error: identifier expected, but got: )!!!

proc maxError2dU*(this: ApproxCurveOnSurface): float {.noSideEffect,
    importcpp: "MaxError2dU", header: "Approx_CurveOnSurface.hxx".}
proc maxError2dV*(this: ApproxCurveOnSurface): float {.noSideEffect,
    importcpp: "MaxError2dV", header: "Approx_CurveOnSurface.hxx".}
proc perform*(this: var ApproxCurveOnSurface; theMaxSegments: int; theMaxDegree: int;
             theContinuity: GeomAbsShape; theOnly3d: bool = false;
             theOnly2d: bool = false) {.importcpp: "Perform",
                                    header: "Approx_CurveOnSurface.hxx".}
## !!!Ignored construct:  protected : ! Checks whether the 2d curve is a isoline. It can be represented by b-spline, bezier,
## ! or geometric line. This line should have natural parameterization.
## ! @param theC2D       Trimmed curve to be checked.
## ! @param theIsU       Flag indicating that line is u const.
## ! @param theParam     Line parameter.
## ! @param theIsForward Flag indicating forward parameterization on a isoline.
## ! @return Standard_True when 2d curve is a line and Standard_False otherwise. Standard_Boolean isIsoLine ( const Handle ( Adaptor2d_HCurve2d ) theC2D , Standard_Boolean & theIsU , Standard_Real & theParam , Standard_Boolean & theIsForward ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  ! Builds 3D curve for a isoline. This method takes corresponding isoline from
## ! the input surface.
## ! @param theC2D   Trimmed curve to be approximated.
## ! @param theIsU   Flag indicating that line is u const.
## ! @param theParam Line parameter.
## ! @param theIsForward Flag indicating forward parameterization on a isoline.
## ! @return Standard_True when 3d curve is built and Standard_False otherwise. Standard_Boolean buildC3dOnIsoLine ( const Handle ( Adaptor2d_HCurve2d ) theC2D , const Standard_Boolean theIsU , const Standard_Real theParam , const Standard_Boolean theIsForward ) ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  myC2D ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  mySurf ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  myCurve2d ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  myCurve3d ;
## Error: identifier expected, but got: ;!!!














































