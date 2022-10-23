##  Created on: 1995-10-17
##  Created by: Laurent BOURESCHE
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of Law_Function"
discard "forward decl of Adaptor3d_CurveOnSurface"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of GeomFill_BoundWithSurf"
type
  HandleGeomFillBoundWithSurf* = Handle[GeomFillBoundWithSurf]

## ! Defines a 3d curve as a boundary for a
## ! GeomFill_ConstrainedFilling algorithm.
## ! This curve is attached to an existing surface.
## ! Defines a  constrained boundary for  filling
## ! the computations are done with a CurveOnSurf and a
## ! normals field  defined by the normalized normal to
## ! the surface along the PCurve.
## ! Contains fields  to allow a reparametrization of curve
## ! and normals field.

type
  GeomFillBoundWithSurf* {.importcpp: "GeomFill_BoundWithSurf",
                          header: "GeomFill_BoundWithSurf.hxx", bycopy.} = object of GeomFillBoundary ##
                                                                                               ## !
                                                                                               ## Constructs
                                                                                               ## a
                                                                                               ## boundary
                                                                                               ## object
                                                                                               ## defined
                                                                                               ## by
                                                                                               ## the
                                                                                               ## 3d
                                                                                               ## curve
                                                                                               ## CurveOnSurf.
                                                                                               ##
                                                                                               ## !
                                                                                               ## The
                                                                                               ## surface
                                                                                               ## to
                                                                                               ## be
                                                                                               ## filled
                                                                                               ## along
                                                                                               ## this
                                                                                               ## boundary
                                                                                               ## will
                                                                                               ## be
                                                                                               ## in
                                                                                               ## the
                                                                                               ##
                                                                                               ## !
                                                                                               ## tolerance
                                                                                               ## range
                                                                                               ## defined
                                                                                               ## by
                                                                                               ## Tol3d.
                                                                                               ##
                                                                                               ## !
                                                                                               ## What's
                                                                                               ## more,
                                                                                               ## at
                                                                                               ## each
                                                                                               ## point
                                                                                               ## of
                                                                                               ## CurveOnSurf,
                                                                                               ## the
                                                                                               ## angle
                                                                                               ##
                                                                                               ## !
                                                                                               ## between
                                                                                               ## the
                                                                                               ## normal
                                                                                               ## to
                                                                                               ## the
                                                                                               ## surface
                                                                                               ## to
                                                                                               ## be
                                                                                               ## filled
                                                                                               ## along
                                                                                               ## this
                                                                                               ##
                                                                                               ## !
                                                                                               ## boundary,
                                                                                               ## and
                                                                                               ## the
                                                                                               ## normal
                                                                                               ## to
                                                                                               ## the
                                                                                               ## surface
                                                                                               ## on
                                                                                               ## which
                                                                                               ##
                                                                                               ## !
                                                                                               ## CurveOnSurf
                                                                                               ## lies,
                                                                                               ## must
                                                                                               ## not
                                                                                               ## be
                                                                                               ## greater
                                                                                               ## than
                                                                                               ## TolAng.
                                                                                               ##
                                                                                               ## !
                                                                                               ## This
                                                                                               ## object
                                                                                               ## is
                                                                                               ## to
                                                                                               ## be
                                                                                               ## used
                                                                                               ## as
                                                                                               ## a
                                                                                               ## boundary
                                                                                               ## for
                                                                                               ## a
                                                                                               ##
                                                                                               ## !
                                                                                               ## GeomFill_ConstrainedFilling
                                                                                               ## framework.
                                                                                               ##
                                                                                               ## !
                                                                                               ## Warning
                                                                                               ##
                                                                                               ## !
                                                                                               ## CurveOnSurf
                                                                                               ## is
                                                                                               ## an
                                                                                               ## adapted
                                                                                               ## curve,
                                                                                               ## that
                                                                                               ## is,
                                                                                               ## an
                                                                                               ## object
                                                                                               ##
                                                                                               ## !
                                                                                               ## which
                                                                                               ## is
                                                                                               ## an
                                                                                               ## interface
                                                                                               ## between:
                                                                                               ##
                                                                                               ## !
                                                                                               ## -
                                                                                               ## the
                                                                                               ## services
                                                                                               ## provided
                                                                                               ## by
                                                                                               ## a
                                                                                               ## curve
                                                                                               ## lying
                                                                                               ## on
                                                                                               ## a
                                                                                               ## surface
                                                                                               ## from
                                                                                               ## the
                                                                                               ## package
                                                                                               ## Geom
                                                                                               ##
                                                                                               ## !
                                                                                               ## -
                                                                                               ## and
                                                                                               ## those
                                                                                               ## required
                                                                                               ## of
                                                                                               ## the
                                                                                               ## curve
                                                                                               ## by
                                                                                               ## the
                                                                                               ## computation
                                                                                               ## algorithm
                                                                                               ## which
                                                                                               ## uses
                                                                                               ## it.
                                                                                               ##
                                                                                               ## !
                                                                                               ## The
                                                                                               ## adapted
                                                                                               ## curve
                                                                                               ## is
                                                                                               ## created
                                                                                               ## in
                                                                                               ## the
                                                                                               ## following
                                                                                               ## way:
                                                                                               ##
                                                                                               ## !
                                                                                               ## Handle(Geom_Surface)
                                                                                               ## mySurface
                                                                                               ## =
                                                                                               ## ...
                                                                                               ## ;
                                                                                               ##
                                                                                               ## !
                                                                                               ## Handle(Geom2d_Curve)
                                                                                               ## myParamCurve
                                                                                               ## =
                                                                                               ## ...
                                                                                               ## ;
                                                                                               ##
                                                                                               ## !
                                                                                               ## //
                                                                                               ## where
                                                                                               ## myParamCurve
                                                                                               ## is
                                                                                               ## a
                                                                                               ## 2D
                                                                                               ## curve
                                                                                               ## in
                                                                                               ## the
                                                                                               ## parametric
                                                                                               ## space
                                                                                               ## of
                                                                                               ## the
                                                                                               ## surface
                                                                                               ## mySurface
                                                                                               ##
                                                                                               ## !
                                                                                               ## Handle(GeomAdaptor_HSurface)
                                                                                               ##
                                                                                               ## !
                                                                                               ## Surface
                                                                                               ## =
                                                                                               ## new
                                                                                               ##
                                                                                               ## !
                                                                                               ## GeomAdaptor_HSurface(mySurface);
                                                                                               ##
                                                                                               ## !
                                                                                               ## Handle(Geom2dAdaptor_HCurve)
                                                                                               ##
                                                                                               ## !
                                                                                               ## ParamCurve
                                                                                               ## =
                                                                                               ## new
                                                                                               ##
                                                                                               ## !
                                                                                               ## Geom2dAdaptor_HCurve(myParamCurve);
                                                                                               ##
                                                                                               ## !
                                                                                               ## CurveOnSurf
                                                                                               ## =
                                                                                               ## Adaptor3d_CurveOnSurface(ParamCurve,Surface);
                                                                                               ##
                                                                                               ## !
                                                                                               ## The
                                                                                               ## boundary
                                                                                               ## is
                                                                                               ## then
                                                                                               ## constructed
                                                                                               ## with
                                                                                               ## the
                                                                                               ## CurveOnSurf
                                                                                               ## object:
                                                                                               ##
                                                                                               ## !
                                                                                               ## Standard_Real
                                                                                               ## Tol
                                                                                               ## =
                                                                                               ## ...
                                                                                               ## ;
                                                                                               ##
                                                                                               ## !
                                                                                               ## Standard_Real
                                                                                               ## TolAng
                                                                                               ## =
                                                                                               ## ...
                                                                                               ## ;
                                                                                               ##
                                                                                               ## !
                                                                                               ## myBoundary
                                                                                               ## =
                                                                                               ## GeomFill_BoundWithSurf
                                                                                               ## (
                                                                                               ##
                                                                                               ## !
                                                                                               ## CurveOnSurf,
                                                                                               ## Tol,
                                                                                               ## TolAng
                                                                                               ## );


proc newGeomFillBoundWithSurf*(curveOnSurf: Adaptor3dCurveOnSurface; tol3d: cfloat;
                              tolang: cfloat): GeomFillBoundWithSurf {.cdecl,
    constructor, importcpp: "GeomFill_BoundWithSurf(@)", header: "GeomFill_BoundWithSurf.hxx".}
proc value*(this: GeomFillBoundWithSurf; u: cfloat): PntObj {.noSideEffect, cdecl,
    importcpp: "Value", header: "GeomFill_BoundWithSurf.hxx".}
proc d1*(this: GeomFillBoundWithSurf; u: cfloat; p: var PntObj; v: var VecObj) {.noSideEffect,
    cdecl, importcpp: "D1", header: "GeomFill_BoundWithSurf.hxx".}
proc hasNormals*(this: GeomFillBoundWithSurf): bool {.noSideEffect, cdecl,
    importcpp: "HasNormals", header: "GeomFill_BoundWithSurf.hxx".}
proc norm*(this: GeomFillBoundWithSurf; u: cfloat): VecObj {.noSideEffect, cdecl,
    importcpp: "Norm", header: "GeomFill_BoundWithSurf.hxx".}
proc d1Norm*(this: GeomFillBoundWithSurf; u: cfloat; n: var VecObj; dn: var VecObj) {.
    noSideEffect, cdecl, importcpp: "D1Norm", header: "GeomFill_BoundWithSurf.hxx".}
proc reparametrize*(this: var GeomFillBoundWithSurf; first: cfloat; last: cfloat;
                   hasDF: bool; hasDL: bool; df: cfloat; dl: cfloat; rev: bool) {.cdecl,
    importcpp: "Reparametrize", header: "GeomFill_BoundWithSurf.hxx".}
proc bounds*(this: GeomFillBoundWithSurf; first: var cfloat; last: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Bounds", header: "GeomFill_BoundWithSurf.hxx".}
proc isDegenerated*(this: GeomFillBoundWithSurf): bool {.noSideEffect, cdecl,
    importcpp: "IsDegenerated", header: "GeomFill_BoundWithSurf.hxx".}