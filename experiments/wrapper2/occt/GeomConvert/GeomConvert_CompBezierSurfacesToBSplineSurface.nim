##  Created on: 1996-06-06
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

discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_NotImplemented"
discard "forward decl of Standard_ConstructionError"
type
  GeomConvertCompBezierSurfacesToBSplineSurface* {.
      importcpp: "GeomConvert_CompBezierSurfacesToBSplineSurface",
      header: "GeomConvert_CompBezierSurfacesToBSplineSurface.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Computes
                                                                                 ## all
                                                                                 ## the
                                                                                 ## data
                                                                                 ## needed
                                                                                 ## to
                                                                                 ## build
                                                                                 ## a
                                                                                 ## "C0"
                                                                                 ##
                                                                                 ## !
                                                                                 ## continuous
                                                                                 ## BSpline
                                                                                 ## surface
                                                                                 ## equivalent
                                                                                 ## to
                                                                                 ## the
                                                                                 ## grid
                                                                                 ## of
                                                                                 ##
                                                                                 ## !
                                                                                 ## adjacent
                                                                                 ## non-rational
                                                                                 ## Bezier
                                                                                 ## surfaces
                                                                                 ## Beziers.
                                                                                 ##
                                                                                 ## !
                                                                                 ## Each
                                                                                 ## surface
                                                                                 ## in
                                                                                 ## the
                                                                                 ## Beziers
                                                                                 ## grid
                                                                                 ## becomes
                                                                                 ## a
                                                                                 ## natural
                                                                                 ##
                                                                                 ## !
                                                                                 ## patch,
                                                                                 ## limited
                                                                                 ## by
                                                                                 ## knots
                                                                                 ## values,
                                                                                 ## on
                                                                                 ## the
                                                                                 ## BSpline
                                                                                 ## surface
                                                                                 ##
                                                                                 ## !
                                                                                 ## whose
                                                                                 ## data
                                                                                 ## is
                                                                                 ## computed.
                                                                                 ## Surfaces
                                                                                 ## in
                                                                                 ## the
                                                                                 ## grid
                                                                                 ## must
                                                                                 ##
                                                                                 ## !
                                                                                 ## satisfy
                                                                                 ## the
                                                                                 ## following
                                                                                 ## conditions:
                                                                                 ##
                                                                                 ## !
                                                                                 ## -
                                                                                 ## Coincident
                                                                                 ## bounding
                                                                                 ## curves
                                                                                 ## between
                                                                                 ## two
                                                                                 ##
                                                                                 ## !
                                                                                 ## consecutive
                                                                                 ## surfaces
                                                                                 ## in
                                                                                 ## a
                                                                                 ## row
                                                                                 ## of
                                                                                 ## the
                                                                                 ## Beziers
                                                                                 ## grid
                                                                                 ##
                                                                                 ## !
                                                                                 ## must
                                                                                 ## be
                                                                                 ## u-isoparametric
                                                                                 ## bounding
                                                                                 ## curves
                                                                                 ## of
                                                                                 ## these
                                                                                 ## two
                                                                                 ## surfaces.
                                                                                 ##
                                                                                 ## !
                                                                                 ## -
                                                                                 ## Coincident
                                                                                 ## bounding
                                                                                 ## curves
                                                                                 ## between
                                                                                 ## two
                                                                                 ##
                                                                                 ## !
                                                                                 ## consecutive
                                                                                 ## surfaces
                                                                                 ## in
                                                                                 ## a
                                                                                 ## column
                                                                                 ## of
                                                                                 ## the
                                                                                 ## Beziers
                                                                                 ##
                                                                                 ## !
                                                                                 ## grid
                                                                                 ## must
                                                                                 ## be
                                                                                 ## v-isoparametric
                                                                                 ## bounding
                                                                                 ## curves
                                                                                 ## of
                                                                                 ## these
                                                                                 ## two
                                                                                 ## surfaces.
                                                                                 ##
                                                                                 ## !
                                                                                 ## The
                                                                                 ## BSpline
                                                                                 ## surface
                                                                                 ## whose
                                                                                 ## data
                                                                                 ## is
                                                                                 ## computed
                                                                                 ## has
                                                                                 ## the
                                                                                 ##
                                                                                 ## !
                                                                                 ## following
                                                                                 ## characteristics:
                                                                                 ##
                                                                                 ## !
                                                                                 ## -
                                                                                 ## Its
                                                                                 ## degree
                                                                                 ## in
                                                                                 ## the
                                                                                 ## u
                                                                                 ## (respectively
                                                                                 ## v)
                                                                                 ## parametric
                                                                                 ##
                                                                                 ## !
                                                                                 ## direction
                                                                                 ## is
                                                                                 ## equal
                                                                                 ## to
                                                                                 ## that
                                                                                 ## of
                                                                                 ## the
                                                                                 ## Bezier
                                                                                 ## surface
                                                                                 ##
                                                                                 ## !
                                                                                 ## which
                                                                                 ## has
                                                                                 ## the
                                                                                 ## highest
                                                                                 ## degree
                                                                                 ## in
                                                                                 ## the
                                                                                 ## u
                                                                                 ##
                                                                                 ## !
                                                                                 ## (respectively
                                                                                 ## v)
                                                                                 ## parametric
                                                                                 ## direction
                                                                                 ## in
                                                                                 ## the
                                                                                 ## Beziers
                                                                                 ## grid.
                                                                                 ##
                                                                                 ## !
                                                                                 ## -
                                                                                 ## It
                                                                                 ## is
                                                                                 ## a
                                                                                 ## "Piecewise
                                                                                 ## Bezier"
                                                                                 ## in
                                                                                 ## both
                                                                                 ## u
                                                                                 ## and
                                                                                 ## v
                                                                                 ##
                                                                                 ## !
                                                                                 ## parametric
                                                                                 ## directions,
                                                                                 ## i.e.:
                                                                                 ##
                                                                                 ## !
                                                                                 ## -
                                                                                 ## the
                                                                                 ## knots
                                                                                 ## are
                                                                                 ## regularly
                                                                                 ## spaced
                                                                                 ## in
                                                                                 ## each
                                                                                 ##
                                                                                 ## !
                                                                                 ## parametric
                                                                                 ## direction
                                                                                 ## (i.e.
                                                                                 ## the
                                                                                 ## difference
                                                                                 ## between
                                                                                 ##
                                                                                 ## !
                                                                                 ## two
                                                                                 ## consecutive
                                                                                 ## knots
                                                                                 ## is
                                                                                 ## a
                                                                                 ## constant),
                                                                                 ## and
                                                                                 ##
                                                                                 ## !
                                                                                 ## -
                                                                                 ## all
                                                                                 ## the
                                                                                 ## multiplicities
                                                                                 ## of
                                                                                 ## the
                                                                                 ## surface
                                                                                 ## knots
                                                                                 ## in
                                                                                 ## a
                                                                                 ##
                                                                                 ## !
                                                                                 ## given
                                                                                 ## parametric
                                                                                 ## direction
                                                                                 ## are
                                                                                 ## equal
                                                                                 ## to
                                                                                 ##
                                                                                 ## !
                                                                                 ## Degree,
                                                                                 ## which
                                                                                 ## is
                                                                                 ## the
                                                                                 ## degree
                                                                                 ## of
                                                                                 ## the
                                                                                 ## BSpline
                                                                                 ##
                                                                                 ## !
                                                                                 ## surface
                                                                                 ## in
                                                                                 ## this
                                                                                 ## parametric
                                                                                 ## direction,
                                                                                 ## except
                                                                                 ## for
                                                                                 ##
                                                                                 ## !
                                                                                 ## the
                                                                                 ## first
                                                                                 ## and
                                                                                 ## last
                                                                                 ## knots
                                                                                 ## for
                                                                                 ## which
                                                                                 ## the
                                                                                 ## multiplicity
                                                                                 ## is
                                                                                 ##
                                                                                 ## !
                                                                                 ## equal
                                                                                 ## to
                                                                                 ## Degree
                                                                                 ## +
                                                                                 ## 1.
                                                                                 ##
                                                                                 ## !
                                                                                 ## -
                                                                                 ## Coincident
                                                                                 ## bounding
                                                                                 ## curves
                                                                                 ## between
                                                                                 ## two
                                                                                 ##
                                                                                 ## !
                                                                                 ## consecutive
                                                                                 ## columns
                                                                                 ## of
                                                                                 ## Bezier
                                                                                 ## surfaces
                                                                                 ## in
                                                                                 ## the
                                                                                 ##
                                                                                 ## !
                                                                                 ## Beziers
                                                                                 ## grid
                                                                                 ## become
                                                                                 ## u-isoparametric
                                                                                 ## curves,
                                                                                 ##
                                                                                 ## !
                                                                                 ## corresponding
                                                                                 ## to
                                                                                 ## knots
                                                                                 ## values
                                                                                 ## of
                                                                                 ## the
                                                                                 ## BSpline
                                                                                 ## surface.
                                                                                 ##
                                                                                 ## !
                                                                                 ## -
                                                                                 ## Coincident
                                                                                 ## bounding
                                                                                 ## curves
                                                                                 ## between
                                                                                 ## two
                                                                                 ##
                                                                                 ## !
                                                                                 ## consecutive
                                                                                 ## rows
                                                                                 ## of
                                                                                 ## Bezier
                                                                                 ## surfaces
                                                                                 ## in
                                                                                 ## the
                                                                                 ## Beziers
                                                                                 ##
                                                                                 ## !
                                                                                 ## grid
                                                                                 ## become
                                                                                 ## v-isoparametric
                                                                                 ## curves
                                                                                 ##
                                                                                 ## !
                                                                                 ## corresponding
                                                                                 ## to
                                                                                 ## knots
                                                                                 ## values
                                                                                 ## of
                                                                                 ## the
                                                                                 ## BSpline
                                                                                 ## surface.
                                                                                 ##
                                                                                 ## !
                                                                                 ## Use
                                                                                 ## the
                                                                                 ## available
                                                                                 ## consultation
                                                                                 ## functions
                                                                                 ## to
                                                                                 ## access
                                                                                 ## the
                                                                                 ##
                                                                                 ## !
                                                                                 ## computed
                                                                                 ## data.
                                                                                 ## This
                                                                                 ## data
                                                                                 ## may
                                                                                 ## be
                                                                                 ## used
                                                                                 ## to
                                                                                 ## construct
                                                                                 ## the
                                                                                 ## BSpline
                                                                                 ## surface.
                                                                                 ##
                                                                                 ## !
                                                                                 ## Warning
                                                                                 ##
                                                                                 ## !
                                                                                 ## The
                                                                                 ## surfaces
                                                                                 ## in
                                                                                 ## the
                                                                                 ## Beziers
                                                                                 ## grid
                                                                                 ## must
                                                                                 ## be
                                                                                 ## adjacent,
                                                                                 ## i.e.
                                                                                 ##
                                                                                 ## !
                                                                                 ## two
                                                                                 ## consecutive
                                                                                 ## Bezier
                                                                                 ## surfaces
                                                                                 ## in
                                                                                 ## the
                                                                                 ## grid
                                                                                 ## (in
                                                                                 ## a
                                                                                 ## row
                                                                                 ##
                                                                                 ## !
                                                                                 ## or
                                                                                 ## column)
                                                                                 ## must
                                                                                 ## have
                                                                                 ## a
                                                                                 ## coincident
                                                                                 ## bounding
                                                                                 ## curve.
                                                                                 ## In
                                                                                 ##
                                                                                 ## !
                                                                                 ## addition,
                                                                                 ## the
                                                                                 ## location
                                                                                 ## of
                                                                                 ## the
                                                                                 ## parameterization
                                                                                 ## on
                                                                                 ## each
                                                                                 ##
                                                                                 ## !
                                                                                 ## of
                                                                                 ## these
                                                                                 ## surfaces
                                                                                 ## (i.e.
                                                                                 ## the
                                                                                 ## relative
                                                                                 ## location
                                                                                 ## of
                                                                                 ## u
                                                                                 ## and
                                                                                 ## v
                                                                                 ##
                                                                                 ## !
                                                                                 ## isoparametric
                                                                                 ## curves
                                                                                 ## on
                                                                                 ## the
                                                                                 ## surface)
                                                                                 ## is
                                                                                 ## of
                                                                                 ## importance
                                                                                 ##
                                                                                 ## !
                                                                                 ## with
                                                                                 ## regard
                                                                                 ## to
                                                                                 ## the
                                                                                 ## positioning
                                                                                 ## of
                                                                                 ## the
                                                                                 ## surfaces
                                                                                 ## in
                                                                                 ## the
                                                                                 ##
                                                                                 ## !
                                                                                 ## Beziers
                                                                                 ## grid.
                                                                                 ## Care
                                                                                 ## must
                                                                                 ## be
                                                                                 ## taken
                                                                                 ## with
                                                                                 ## respect
                                                                                 ## to
                                                                                 ## the
                                                                                 ##
                                                                                 ## !
                                                                                 ## above,
                                                                                 ## as
                                                                                 ## these
                                                                                 ## properties
                                                                                 ## are
                                                                                 ## not
                                                                                 ## checked
                                                                                 ## and
                                                                                 ## an
                                                                                 ##
                                                                                 ## !
                                                                                 ## error
                                                                                 ## may
                                                                                 ## occur
                                                                                 ## if
                                                                                 ## they
                                                                                 ## are
                                                                                 ## not
                                                                                 ## satisfied.
                                                                                 ##
                                                                                 ## !
                                                                                 ## Exceptions
                                                                                 ##
                                                                                 ## !
                                                                                 ## Standard_NotImplemented
                                                                                 ## if
                                                                                 ## one
                                                                                 ## of
                                                                                 ## the
                                                                                 ## Bezier
                                                                                 ##
                                                                                 ## !
                                                                                 ## surfaces
                                                                                 ## of
                                                                                 ## the
                                                                                 ## Beziers
                                                                                 ## grid
                                                                                 ## is
                                                                                 ## rational.
                                                                                 ##
                                                                                 ## !
                                                                                 ## It
                                                                                 ## used
                                                                                 ## internaly
                                                                                 ## by
                                                                                 ## the
                                                                                 ## constructors.


proc constructGeomConvertCompBezierSurfacesToBSplineSurface*(
    beziers: TColGeomArray2OfBezierSurface): GeomConvertCompBezierSurfacesToBSplineSurface {.
    constructor, importcpp: "GeomConvert_CompBezierSurfacesToBSplineSurface(@)",
    header: "GeomConvert_CompBezierSurfacesToBSplineSurface.hxx".}
proc constructGeomConvertCompBezierSurfacesToBSplineSurface*(
    beziers: TColGeomArray2OfBezierSurface; tolerance: float;
    removeKnots: bool = true): GeomConvertCompBezierSurfacesToBSplineSurface {.
    constructor, importcpp: "GeomConvert_CompBezierSurfacesToBSplineSurface(@)",
    header: "GeomConvert_CompBezierSurfacesToBSplineSurface.hxx".}
proc constructGeomConvertCompBezierSurfacesToBSplineSurface*(
    beziers: TColGeomArray2OfBezierSurface; uKnots: TColStdArray1OfReal;
    vKnots: TColStdArray1OfReal; uContinuity: GeomAbsShape = geomAbsC0;
    vContinuity: GeomAbsShape = geomAbsC0; tolerance: float = 1.0e-4): GeomConvertCompBezierSurfacesToBSplineSurface {.
    constructor, importcpp: "GeomConvert_CompBezierSurfacesToBSplineSurface(@)",
    header: "GeomConvert_CompBezierSurfacesToBSplineSurface.hxx".}
proc nbUKnots*(this: GeomConvertCompBezierSurfacesToBSplineSurface): int {.
    noSideEffect, importcpp: "NbUKnots",
    header: "GeomConvert_CompBezierSurfacesToBSplineSurface.hxx".}
proc nbUPoles*(this: GeomConvertCompBezierSurfacesToBSplineSurface): int {.
    noSideEffect, importcpp: "NbUPoles",
    header: "GeomConvert_CompBezierSurfacesToBSplineSurface.hxx".}
proc nbVKnots*(this: GeomConvertCompBezierSurfacesToBSplineSurface): int {.
    noSideEffect, importcpp: "NbVKnots",
    header: "GeomConvert_CompBezierSurfacesToBSplineSurface.hxx".}
proc nbVPoles*(this: GeomConvertCompBezierSurfacesToBSplineSurface): int {.
    noSideEffect, importcpp: "NbVPoles",
    header: "GeomConvert_CompBezierSurfacesToBSplineSurface.hxx".}
proc poles*(this: GeomConvertCompBezierSurfacesToBSplineSurface): Handle[
    TColgpHArray2OfPnt] {.noSideEffect, importcpp: "Poles", header: "GeomConvert_CompBezierSurfacesToBSplineSurface.hxx".}
proc uKnots*(this: GeomConvertCompBezierSurfacesToBSplineSurface): Handle[
    TColStdHArray1OfReal] {.noSideEffect, importcpp: "UKnots", header: "GeomConvert_CompBezierSurfacesToBSplineSurface.hxx".}
proc uDegree*(this: GeomConvertCompBezierSurfacesToBSplineSurface): int {.
    noSideEffect, importcpp: "UDegree",
    header: "GeomConvert_CompBezierSurfacesToBSplineSurface.hxx".}
proc vKnots*(this: GeomConvertCompBezierSurfacesToBSplineSurface): Handle[
    TColStdHArray1OfReal] {.noSideEffect, importcpp: "VKnots", header: "GeomConvert_CompBezierSurfacesToBSplineSurface.hxx".}
proc vDegree*(this: GeomConvertCompBezierSurfacesToBSplineSurface): int {.
    noSideEffect, importcpp: "VDegree",
    header: "GeomConvert_CompBezierSurfacesToBSplineSurface.hxx".}
proc uMultiplicities*(this: GeomConvertCompBezierSurfacesToBSplineSurface): Handle[
    TColStdHArray1OfInteger] {.noSideEffect, importcpp: "UMultiplicities", header: "GeomConvert_CompBezierSurfacesToBSplineSurface.hxx".}
proc vMultiplicities*(this: GeomConvertCompBezierSurfacesToBSplineSurface): Handle[
    TColStdHArray1OfInteger] {.noSideEffect, importcpp: "VMultiplicities", header: "GeomConvert_CompBezierSurfacesToBSplineSurface.hxx".}
proc isDone*(this: GeomConvertCompBezierSurfacesToBSplineSurface): bool {.
    noSideEffect, importcpp: "IsDone",
    header: "GeomConvert_CompBezierSurfacesToBSplineSurface.hxx".}
