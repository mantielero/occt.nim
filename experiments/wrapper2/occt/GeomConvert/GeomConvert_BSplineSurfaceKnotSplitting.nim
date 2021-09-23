##  Created on: 1991-10-04
##  Copyright (c) 1991-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TColStd/TColStd_HArray1OfInteger,
  ../Standard/Standard_Integer, ../TColStd/TColStd_Array1OfInteger

discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_RangeError"
discard "forward decl of Geom_BSplineSurface"
type
  GeomConvert_BSplineSurfaceKnotSplitting* {.
      importcpp: "GeomConvert_BSplineSurfaceKnotSplitting",
      header: "GeomConvert_BSplineSurfaceKnotSplitting.hxx", bycopy.} = object ## !
                                                                          ## Determines the u- and
                                                                          ## v-isoparametric curves
                                                                          ## ! along which the
                                                                          ## BSpline
                                                                          ## surface
                                                                          ## BasisSurface
                                                                          ## ! should be split in order to obtain
                                                                          ## patches with a
                                                                          ## ! degree of
                                                                          ## continuity equal to
                                                                          ## UContinuityRange in
                                                                          ## ! the u
                                                                          ## parametric
                                                                          ## direction, and to
                                                                          ## !
                                                                          ## VContinuityRange in the v
                                                                          ## parametric
                                                                          ## direction.
                                                                          ## ! These
                                                                          ## isoparametric curves are
                                                                          ## defined by
                                                                          ## !
                                                                          ## parameters, which are
                                                                          ## BasisSurface knot values in
                                                                          ## ! the u or v
                                                                          ## parametric
                                                                          ## direction. They are
                                                                          ## identified
                                                                          ## ! by
                                                                          ## indices in the
                                                                          ## BasisSurface knots table in the
                                                                          ## !
                                                                          ## corresponding
                                                                          ## parametric
                                                                          ## direction.
                                                                          ## ! Use the
                                                                          ## available
                                                                          ## interrogation
                                                                          ## functions to access
                                                                          ## !
                                                                          ## computed
                                                                          ## values,
                                                                          ## followed by the global
                                                                          ## function
                                                                          ## !
                                                                          ## SplitBSplineSurface
                                                                          ## (provided by the
                                                                          ## package
                                                                          ## !
                                                                          ## GeomConvert) to split the
                                                                          ## surface.
                                                                          ## !
                                                                          ## Exceptions
                                                                          ## !
                                                                          ## Standard_RangeError if
                                                                          ## UContinuityRange or
                                                                          ## !
                                                                          ## VContinuityRange is less than zero.


proc constructGeomConvert_BSplineSurfaceKnotSplitting*(
    BasisSurface: handle[Geom_BSplineSurface]; UContinuityRange: Standard_Integer;
    VContinuityRange: Standard_Integer): GeomConvert_BSplineSurfaceKnotSplitting {.
    constructor, importcpp: "GeomConvert_BSplineSurfaceKnotSplitting(@)",
    header: "GeomConvert_BSplineSurfaceKnotSplitting.hxx".}
proc NbUSplits*(this: GeomConvert_BSplineSurfaceKnotSplitting): Standard_Integer {.
    noSideEffect, importcpp: "NbUSplits",
    header: "GeomConvert_BSplineSurfaceKnotSplitting.hxx".}
proc NbVSplits*(this: GeomConvert_BSplineSurfaceKnotSplitting): Standard_Integer {.
    noSideEffect, importcpp: "NbVSplits",
    header: "GeomConvert_BSplineSurfaceKnotSplitting.hxx".}
proc Splitting*(this: GeomConvert_BSplineSurfaceKnotSplitting;
               USplit: var TColStd_Array1OfInteger;
               VSplit: var TColStd_Array1OfInteger) {.noSideEffect,
    importcpp: "Splitting", header: "GeomConvert_BSplineSurfaceKnotSplitting.hxx".}
proc USplitValue*(this: GeomConvert_BSplineSurfaceKnotSplitting;
                 UIndex: Standard_Integer): Standard_Integer {.noSideEffect,
    importcpp: "USplitValue",
    header: "GeomConvert_BSplineSurfaceKnotSplitting.hxx".}
proc VSplitValue*(this: GeomConvert_BSplineSurfaceKnotSplitting;
                 VIndex: Standard_Integer): Standard_Integer {.noSideEffect,
    importcpp: "VSplitValue",
    header: "GeomConvert_BSplineSurfaceKnotSplitting.hxx".}