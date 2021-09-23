##  Created on: 1997-09-11
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
  ../Standard/Standard_Integer, ../Standard/Standard_OStream

discard "forward decl of Geom2d_BSplineCurve"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Adaptor2d_HCurve2d"
type
  Geom2dConvert_ApproxCurve* {.importcpp: "Geom2dConvert_ApproxCurve",
                              header: "Geom2dConvert_ApproxCurve.hxx", bycopy.} = object ##
                                                                                    ## !
                                                                                    ## Constructs
                                                                                    ## an
                                                                                    ## approximation
                                                                                    ## framework
                                                                                    ## defined
                                                                                    ## by
                                                                                    ##
                                                                                    ## !
                                                                                    ## -
                                                                                    ## the
                                                                                    ## 2D
                                                                                    ## conic
                                                                                    ## Curve
                                                                                    ##
                                                                                    ## !
                                                                                    ## -
                                                                                    ## the
                                                                                    ## tolerance
                                                                                    ## value
                                                                                    ## Tol2d
                                                                                    ##
                                                                                    ## !
                                                                                    ## -
                                                                                    ## the
                                                                                    ## degree
                                                                                    ## of
                                                                                    ## continuity
                                                                                    ## Order
                                                                                    ##
                                                                                    ## !
                                                                                    ## -
                                                                                    ## the
                                                                                    ## maximum
                                                                                    ## number
                                                                                    ## of
                                                                                    ## segments
                                                                                    ## allowed
                                                                                    ## MaxSegments
                                                                                    ##
                                                                                    ## !
                                                                                    ## -
                                                                                    ## the
                                                                                    ## highest
                                                                                    ## degree
                                                                                    ## MaxDegree
                                                                                    ## which
                                                                                    ## the
                                                                                    ##
                                                                                    ## !
                                                                                    ## polynomial
                                                                                    ## defining
                                                                                    ## the
                                                                                    ## BSpline
                                                                                    ## is
                                                                                    ## allowed
                                                                                    ## to
                                                                                    ## have.
                                                                                    ##
                                                                                    ## !
                                                                                    ## Converts
                                                                                    ## a
                                                                                    ## curve
                                                                                    ## to
                                                                                    ## B-spline


proc constructGeom2dConvert_ApproxCurve*(Curve: handle[Geom2d_Curve];
                                        Tol2d: Standard_Real;
                                        Order: GeomAbs_Shape;
                                        MaxSegments: Standard_Integer;
                                        MaxDegree: Standard_Integer): Geom2dConvert_ApproxCurve {.
    constructor, importcpp: "Geom2dConvert_ApproxCurve(@)",
    header: "Geom2dConvert_ApproxCurve.hxx".}
proc constructGeom2dConvert_ApproxCurve*(Curve: handle[Adaptor2d_HCurve2d];
                                        Tol2d: Standard_Real;
                                        Order: GeomAbs_Shape;
                                        MaxSegments: Standard_Integer;
                                        MaxDegree: Standard_Integer): Geom2dConvert_ApproxCurve {.
    constructor, importcpp: "Geom2dConvert_ApproxCurve(@)",
    header: "Geom2dConvert_ApproxCurve.hxx".}
proc Curve*(this: Geom2dConvert_ApproxCurve): handle[Geom2d_BSplineCurve] {.
    noSideEffect, importcpp: "Curve", header: "Geom2dConvert_ApproxCurve.hxx".}
proc IsDone*(this: Geom2dConvert_ApproxCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Geom2dConvert_ApproxCurve.hxx".}
proc HasResult*(this: Geom2dConvert_ApproxCurve): Standard_Boolean {.noSideEffect,
    importcpp: "HasResult", header: "Geom2dConvert_ApproxCurve.hxx".}
proc MaxError*(this: Geom2dConvert_ApproxCurve): Standard_Real {.noSideEffect,
    importcpp: "MaxError", header: "Geom2dConvert_ApproxCurve.hxx".}
proc Dump*(this: Geom2dConvert_ApproxCurve; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "Geom2dConvert_ApproxCurve.hxx".}