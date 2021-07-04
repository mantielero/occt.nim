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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../TColGeom/TColGeom_Array2OfBezierSurface,
  ../TColStd/TColStd_Array1OfReal

discard "forward decl of Geom_BSplineSurface"
discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom_BezierSurface"
type
  GeomConvert_BSplineSurfaceToBezierSurface* {.
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


proc constructGeomConvert_BSplineSurfaceToBezierSurface*(
    BasisSurface: handle[Geom_BSplineSurface]): GeomConvert_BSplineSurfaceToBezierSurface {.
    constructor, importcpp: "GeomConvert_BSplineSurfaceToBezierSurface(@)",
    header: "GeomConvert_BSplineSurfaceToBezierSurface.hxx".}
proc constructGeomConvert_BSplineSurfaceToBezierSurface*(
    BasisSurface: handle[Geom_BSplineSurface]; U1: Standard_Real; U2: Standard_Real;
    V1: Standard_Real; V2: Standard_Real; ParametricTolerance: Standard_Real): GeomConvert_BSplineSurfaceToBezierSurface {.
    constructor, importcpp: "GeomConvert_BSplineSurfaceToBezierSurface(@)",
    header: "GeomConvert_BSplineSurfaceToBezierSurface.hxx".}
proc Patch*(this: var GeomConvert_BSplineSurfaceToBezierSurface;
           UIndex: Standard_Integer; VIndex: Standard_Integer): handle[
    Geom_BezierSurface] {.importcpp: "Patch", header: "GeomConvert_BSplineSurfaceToBezierSurface.hxx".}
proc Patches*(this: var GeomConvert_BSplineSurfaceToBezierSurface;
             Surfaces: var TColGeom_Array2OfBezierSurface) {.importcpp: "Patches",
    header: "GeomConvert_BSplineSurfaceToBezierSurface.hxx".}
proc UKnots*(this: GeomConvert_BSplineSurfaceToBezierSurface;
            TKnots: var TColStd_Array1OfReal) {.noSideEffect, importcpp: "UKnots",
    header: "GeomConvert_BSplineSurfaceToBezierSurface.hxx".}
proc VKnots*(this: GeomConvert_BSplineSurfaceToBezierSurface;
            TKnots: var TColStd_Array1OfReal) {.noSideEffect, importcpp: "VKnots",
    header: "GeomConvert_BSplineSurfaceToBezierSurface.hxx".}
proc NbUPatches*(this: GeomConvert_BSplineSurfaceToBezierSurface): Standard_Integer {.
    noSideEffect, importcpp: "NbUPatches",
    header: "GeomConvert_BSplineSurfaceToBezierSurface.hxx".}
proc NbVPatches*(this: GeomConvert_BSplineSurfaceToBezierSurface): Standard_Integer {.
    noSideEffect, importcpp: "NbVPatches",
    header: "GeomConvert_BSplineSurfaceToBezierSurface.hxx".}