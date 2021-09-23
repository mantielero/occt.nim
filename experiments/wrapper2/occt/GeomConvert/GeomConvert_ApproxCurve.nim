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

discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Geom_Curve"
discard "forward decl of Adaptor3d_HCurve"
type
  GeomConvert_ApproxCurve* {.importcpp: "GeomConvert_ApproxCurve",
                            header: "GeomConvert_ApproxCurve.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Constructs
                                                                                ## a
                                                                                ## curve
                                                                                ## approximation
                                                                                ## framework
                                                                                ## defined
                                                                                ## by
                                                                                ## -
                                                                                ##
                                                                                ## !
                                                                                ## -
                                                                                ## the
                                                                                ## conic
                                                                                ## Curve,
                                                                                ##
                                                                                ## !
                                                                                ## -
                                                                                ## the
                                                                                ## tolerance
                                                                                ## value
                                                                                ## Tol3d,
                                                                                ##
                                                                                ## !
                                                                                ## -
                                                                                ## the
                                                                                ## degree
                                                                                ## of
                                                                                ## continuity
                                                                                ## Order,
                                                                                ##
                                                                                ## !
                                                                                ## -
                                                                                ## the
                                                                                ## maximum
                                                                                ## number
                                                                                ## of
                                                                                ## segments
                                                                                ##
                                                                                ## !
                                                                                ## MaxSegments
                                                                                ## allowed
                                                                                ## in
                                                                                ## the
                                                                                ## resulting
                                                                                ## BSpline
                                                                                ## curve,
                                                                                ## and
                                                                                ##
                                                                                ## !
                                                                                ## -
                                                                                ## the
                                                                                ## highest
                                                                                ## degree
                                                                                ## MaxDeg
                                                                                ## which
                                                                                ## the
                                                                                ##
                                                                                ## !
                                                                                ## polynomial
                                                                                ## defining
                                                                                ## the
                                                                                ## BSpline
                                                                                ## curve
                                                                                ## may
                                                                                ## have.
                                                                                ##
                                                                                ## !
                                                                                ## Converts
                                                                                ## a
                                                                                ## curve
                                                                                ## to
                                                                                ## B-spline


proc constructGeomConvert_ApproxCurve*(Curve: handle[Geom_Curve];
                                      Tol3d: Standard_Real; Order: GeomAbs_Shape;
                                      MaxSegments: Standard_Integer;
                                      MaxDegree: Standard_Integer): GeomConvert_ApproxCurve {.
    constructor, importcpp: "GeomConvert_ApproxCurve(@)",
    header: "GeomConvert_ApproxCurve.hxx".}
proc constructGeomConvert_ApproxCurve*(Curve: handle[Adaptor3d_HCurve];
                                      Tol3d: Standard_Real; Order: GeomAbs_Shape;
                                      MaxSegments: Standard_Integer;
                                      MaxDegree: Standard_Integer): GeomConvert_ApproxCurve {.
    constructor, importcpp: "GeomConvert_ApproxCurve(@)",
    header: "GeomConvert_ApproxCurve.hxx".}
proc Curve*(this: GeomConvert_ApproxCurve): handle[Geom_BSplineCurve] {.
    noSideEffect, importcpp: "Curve", header: "GeomConvert_ApproxCurve.hxx".}
proc IsDone*(this: GeomConvert_ApproxCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "GeomConvert_ApproxCurve.hxx".}
proc HasResult*(this: GeomConvert_ApproxCurve): Standard_Boolean {.noSideEffect,
    importcpp: "HasResult", header: "GeomConvert_ApproxCurve.hxx".}
proc MaxError*(this: GeomConvert_ApproxCurve): Standard_Real {.noSideEffect,
    importcpp: "MaxError", header: "GeomConvert_ApproxCurve.hxx".}
proc Dump*(this: GeomConvert_ApproxCurve; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "GeomConvert_ApproxCurve.hxx".}