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

discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Geom_Curve"
discard "forward decl of Adaptor3d_HCurve"
type
  GeomConvertApproxCurve* {.importcpp: "GeomConvert_ApproxCurve",
                           header: "GeomConvert_ApproxCurve.hxx", bycopy.} = object ## !
                                                                               ## Constructs a
                                                                               ## curve
                                                                               ## approximation
                                                                               ## framework
                                                                               ## defined
                                                                               ## by -
                                                                               ## ! -
                                                                               ## the
                                                                               ## conic
                                                                               ## Curve,
                                                                               ## ! -
                                                                               ## the
                                                                               ## tolerance
                                                                               ## value
                                                                               ## Tol3d,
                                                                               ## ! -
                                                                               ## the
                                                                               ## degree
                                                                               ## of
                                                                               ## continuity
                                                                               ## Order,
                                                                               ## ! -
                                                                               ## the
                                                                               ## maximum
                                                                               ## number
                                                                               ## of
                                                                               ## segments
                                                                               ## !
                                                                               ## MaxSegments
                                                                               ## allowed
                                                                               ## in
                                                                               ## the
                                                                               ## resulting
                                                                               ## BSpline
                                                                               ## curve,
                                                                               ## and
                                                                               ## ! -
                                                                               ## the
                                                                               ## highest
                                                                               ## degree
                                                                               ## MaxDeg
                                                                               ## which
                                                                               ## the
                                                                               ## !
                                                                               ## polynomial
                                                                               ## defining
                                                                               ## the
                                                                               ## BSpline
                                                                               ## curve
                                                                               ## may
                                                                               ## have.
                                                                               ## !
                                                                               ## Converts a
                                                                               ## curve
                                                                               ## to
                                                                               ## B-spline


proc constructGeomConvertApproxCurve*(curve: Handle[GeomCurve]; tol3d: float;
                                     order: GeomAbsShape; maxSegments: int;
                                     maxDegree: int): GeomConvertApproxCurve {.
    constructor, importcpp: "GeomConvert_ApproxCurve(@)",
    header: "GeomConvert_ApproxCurve.hxx".}
proc constructGeomConvertApproxCurve*(curve: Handle[Adaptor3dHCurve]; tol3d: float;
                                     order: GeomAbsShape; maxSegments: int;
                                     maxDegree: int): GeomConvertApproxCurve {.
    constructor, importcpp: "GeomConvert_ApproxCurve(@)",
    header: "GeomConvert_ApproxCurve.hxx".}
proc curve*(this: GeomConvertApproxCurve): Handle[GeomBSplineCurve] {.noSideEffect,
    importcpp: "Curve", header: "GeomConvert_ApproxCurve.hxx".}
proc isDone*(this: GeomConvertApproxCurve): bool {.noSideEffect, importcpp: "IsDone",
    header: "GeomConvert_ApproxCurve.hxx".}
proc hasResult*(this: GeomConvertApproxCurve): bool {.noSideEffect,
    importcpp: "HasResult", header: "GeomConvert_ApproxCurve.hxx".}
proc maxError*(this: GeomConvertApproxCurve): float {.noSideEffect,
    importcpp: "MaxError", header: "GeomConvert_ApproxCurve.hxx".}
proc dump*(this: GeomConvertApproxCurve; o: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "GeomConvert_ApproxCurve.hxx".}
