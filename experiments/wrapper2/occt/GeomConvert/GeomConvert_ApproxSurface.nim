##  Created on: 1997-08-26
##  Created by: Stepan MISHIN
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

discard "forward decl of Geom_BSplineSurface"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom_Surface"
discard "forward decl of Adaptor3d_HSurface"
type
  GeomConvertApproxSurface* {.importcpp: "GeomConvert_ApproxSurface",
                             header: "GeomConvert_ApproxSurface.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Constructs
                                                                                   ## a
                                                                                   ## surface
                                                                                   ## approximation
                                                                                   ## framework
                                                                                   ## defined
                                                                                   ## by
                                                                                   ##
                                                                                   ## !
                                                                                   ## -
                                                                                   ## the
                                                                                   ## conic
                                                                                   ## Surf
                                                                                   ##
                                                                                   ## !
                                                                                   ## -
                                                                                   ## the
                                                                                   ## tolerance
                                                                                   ## value
                                                                                   ## Tol3d
                                                                                   ##
                                                                                   ## !
                                                                                   ## -
                                                                                   ## the
                                                                                   ## degree
                                                                                   ## of
                                                                                   ## continuity
                                                                                   ## UContinuity,
                                                                                   ## VContinuity
                                                                                   ##
                                                                                   ## !
                                                                                   ## in
                                                                                   ## the
                                                                                   ## directions
                                                                                   ## of
                                                                                   ## the
                                                                                   ## U
                                                                                   ## and
                                                                                   ## V
                                                                                   ## parameters
                                                                                   ##
                                                                                   ## !
                                                                                   ## -
                                                                                   ## the
                                                                                   ## highest
                                                                                   ## degree
                                                                                   ## MaxDegU,
                                                                                   ## MaxDegV
                                                                                   ## which
                                                                                   ##
                                                                                   ## !
                                                                                   ## the
                                                                                   ## polynomial
                                                                                   ## defining
                                                                                   ## the
                                                                                   ## BSpline
                                                                                   ## curve
                                                                                   ## may
                                                                                   ##
                                                                                   ## !
                                                                                   ## have
                                                                                   ## in
                                                                                   ## the
                                                                                   ## directions
                                                                                   ## of
                                                                                   ## the
                                                                                   ## U
                                                                                   ## and
                                                                                   ## V
                                                                                   ## parameters
                                                                                   ##
                                                                                   ## !
                                                                                   ## -
                                                                                   ## the
                                                                                   ## maximum
                                                                                   ## number
                                                                                   ## of
                                                                                   ## segments
                                                                                   ## MaxSegments
                                                                                   ##
                                                                                   ## !
                                                                                   ## allowed
                                                                                   ## in
                                                                                   ## the
                                                                                   ## resulting
                                                                                   ## BSpline
                                                                                   ## curve
                                                                                   ##
                                                                                   ## !
                                                                                   ## -
                                                                                   ## the
                                                                                   ## index
                                                                                   ## of
                                                                                   ## precision
                                                                                   ## PrecisCode.
                                                                                   ##
                                                                                   ## !
                                                                                   ## Converts
                                                                                   ## a
                                                                                   ## surface
                                                                                   ## to
                                                                                   ## B-spline


proc constructGeomConvertApproxSurface*(surf: Handle[GeomSurface]; tol3d: float;
                                       uContinuity: GeomAbsShape;
                                       vContinuity: GeomAbsShape; maxDegU: int;
                                       maxDegV: int; maxSegments: int;
                                       precisCode: int): GeomConvertApproxSurface {.
    constructor, importcpp: "GeomConvert_ApproxSurface(@)",
    header: "GeomConvert_ApproxSurface.hxx".}
proc constructGeomConvertApproxSurface*(surf: Handle[Adaptor3dHSurface];
                                       tol3d: float; uContinuity: GeomAbsShape;
                                       vContinuity: GeomAbsShape; maxDegU: int;
                                       maxDegV: int; maxSegments: int;
                                       precisCode: int): GeomConvertApproxSurface {.
    constructor, importcpp: "GeomConvert_ApproxSurface(@)",
    header: "GeomConvert_ApproxSurface.hxx".}
proc surface*(this: GeomConvertApproxSurface): Handle[GeomBSplineSurface] {.
    noSideEffect, importcpp: "Surface", header: "GeomConvert_ApproxSurface.hxx".}
proc isDone*(this: GeomConvertApproxSurface): bool {.noSideEffect,
    importcpp: "IsDone", header: "GeomConvert_ApproxSurface.hxx".}
proc hasResult*(this: GeomConvertApproxSurface): bool {.noSideEffect,
    importcpp: "HasResult", header: "GeomConvert_ApproxSurface.hxx".}
proc maxError*(this: GeomConvertApproxSurface): float {.noSideEffect,
    importcpp: "MaxError", header: "GeomConvert_ApproxSurface.hxx".}
proc dump*(this: GeomConvertApproxSurface; o: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "GeomConvert_ApproxSurface.hxx".}
