##  Created on: 1996-03-12
##  Created by: Bruno DUMORTIER
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

discard "forward decl of Geom_BSplineSurface"
discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom_BezierSurface"
type
  GeomConvertBSplineSurfaceToBezierSurface* {.
      importcpp: "GeomConvert_BSplineSurfaceToBezierSurface",
      header: "GeomConvert_BSplineSurfaceToBezierSurface.hxx", bycopy.} = object ## !
                                                                            ## Computes all the data
                                                                            ## needed to
                                                                            ## convert
                                                                            ## ! -   the
                                                                            ## BSpline
                                                                            ## surface
                                                                            ## BasisSurface into a
                                                                            ## series of
                                                                            ## adjacent
                                                                            ## Bezier
                                                                            ## surfaces.
                                                                            ## ! The
                                                                            ## result
                                                                            ## consists of a grid of
                                                                            ## BasisSurface
                                                                            ## patches
                                                                            ## !
                                                                            ## limited by
                                                                            ## isoparametric
                                                                            ## curves
                                                                            ## corresponding to knot
                                                                            ## !
                                                                            ## values, both in the u and v
                                                                            ## parametric
                                                                            ## directions of
                                                                            ## ! the
                                                                            ## surface. A row in the grid
                                                                            ## corresponds to a
                                                                            ## series
                                                                            ## ! of
                                                                            ## adjacent
                                                                            ## patches, all
                                                                            ## limited by the same two
                                                                            ## !
                                                                            ## u-isoparametric
                                                                            ## curves. A
                                                                            ## column in the grid
                                                                            ## !
                                                                            ## corresponds to a
                                                                            ## series of
                                                                            ## adjacent
                                                                            ## patches, all
                                                                            ## !
                                                                            ## limited by the same two
                                                                            ## v-isoparametric
                                                                            ## curves.
                                                                            ## ! Use the
                                                                            ## available
                                                                            ## interrogation
                                                                            ## functions to
                                                                            ## ascertain
                                                                            ## ! the
                                                                            ## number of
                                                                            ## computed
                                                                            ## Bezier
                                                                            ## patches, and then to
                                                                            ## !
                                                                            ## construct each
                                                                            ## individual
                                                                            ## Bezier
                                                                            ## surface (or all
                                                                            ## Bezier
                                                                            ## surfaces).
                                                                            ## !
                                                                            ## Note:
                                                                            ## ParametricTolerance is not
                                                                            ## used.


proc constructGeomConvertBSplineSurfaceToBezierSurface*(
    basisSurface: Handle[GeomBSplineSurface]): GeomConvertBSplineSurfaceToBezierSurface {.
    constructor, importcpp: "GeomConvert_BSplineSurfaceToBezierSurface(@)",
    header: "GeomConvert_BSplineSurfaceToBezierSurface.hxx".}
proc constructGeomConvertBSplineSurfaceToBezierSurface*(
    basisSurface: Handle[GeomBSplineSurface]; u1: float; u2: float; v1: float;
    v2: float; parametricTolerance: float): GeomConvertBSplineSurfaceToBezierSurface {.
    constructor, importcpp: "GeomConvert_BSplineSurfaceToBezierSurface(@)",
    header: "GeomConvert_BSplineSurfaceToBezierSurface.hxx".}
proc patch*(this: var GeomConvertBSplineSurfaceToBezierSurface; uIndex: int;
           vIndex: int): Handle[GeomBezierSurface] {.importcpp: "Patch",
    header: "GeomConvert_BSplineSurfaceToBezierSurface.hxx".}
proc patches*(this: var GeomConvertBSplineSurfaceToBezierSurface;
             surfaces: var TColGeomArray2OfBezierSurface) {.importcpp: "Patches",
    header: "GeomConvert_BSplineSurfaceToBezierSurface.hxx".}
proc uKnots*(this: GeomConvertBSplineSurfaceToBezierSurface;
            tKnots: var TColStdArray1OfReal) {.noSideEffect, importcpp: "UKnots",
    header: "GeomConvert_BSplineSurfaceToBezierSurface.hxx".}
proc vKnots*(this: GeomConvertBSplineSurfaceToBezierSurface;
            tKnots: var TColStdArray1OfReal) {.noSideEffect, importcpp: "VKnots",
    header: "GeomConvert_BSplineSurfaceToBezierSurface.hxx".}
proc nbUPatches*(this: GeomConvertBSplineSurfaceToBezierSurface): int {.
    noSideEffect, importcpp: "NbUPatches",
    header: "GeomConvert_BSplineSurfaceToBezierSurface.hxx".}
proc nbVPatches*(this: GeomConvertBSplineSurfaceToBezierSurface): int {.
    noSideEffect, importcpp: "NbVPatches",
    header: "GeomConvert_BSplineSurfaceToBezierSurface.hxx".}
