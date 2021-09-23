##  Copyright (c) 2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Macro, ../Standard/Standard_Type,
  ../Standard/Standard_Transient, ../gp/gp_Pnt2d, ../gp/gp_Pnt, ../gp/gp_Vec2d,
  ../gp/gp_Vec, ../TColStd/TColStd_HArray2OfReal,
  ../TColStd/TColStd_HArray1OfReal, ../TColStd/TColStd_Array1OfReal,
  ../TColgp/TColgp_Array1OfPnt, ../TColgp/TColgp_Array1OfPnt2d,
  BSplCLib_CacheParams

## ! \brief A cache class for Bezier and B-spline curves.
## !
## ! Defines all data, that can be cached on a span of a curve.
## ! The data should be recalculated in going from span to span.

type
  BSplCLib_Cache* {.importcpp: "BSplCLib_Cache", header: "BSplCLib_Cache.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                             ## !
                                                                                                             ## Constructor,
                                                                                                             ## prepares
                                                                                                             ## data
                                                                                                             ## structures
                                                                                                             ## for
                                                                                                             ## caching
                                                                                                             ## values
                                                                                                             ## on
                                                                                                             ## a
                                                                                                             ## 2d
                                                                                                             ## curve.
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## \param
                                                                                                             ## theDegree
                                                                                                             ## degree
                                                                                                             ## of
                                                                                                             ## the
                                                                                                             ## curve
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## \param
                                                                                                             ## thePeriodic
                                                                                                             ## identify
                                                                                                             ## whether
                                                                                                             ## the
                                                                                                             ## curve
                                                                                                             ## is
                                                                                                             ## periodic
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## \param
                                                                                                             ## theFlatKnots
                                                                                                             ## knots
                                                                                                             ## of
                                                                                                             ## Bezier/B-spline
                                                                                                             ## curve
                                                                                                             ## (with
                                                                                                             ## repetitions)
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## \param
                                                                                                             ## thePoles2d
                                                                                                             ## array
                                                                                                             ## of
                                                                                                             ## poles
                                                                                                             ## of
                                                                                                             ## 2D
                                                                                                             ## curve
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## \param
                                                                                                             ## theWeights
                                                                                                             ## array
                                                                                                             ## of
                                                                                                             ## weights
                                                                                                             ## of
                                                                                                             ## corresponding
                                                                                                             ## poles
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## Fills
                                                                                                             ## array
                                                                                                             ## of
                                                                                                             ## derivatives
                                                                                                             ## in
                                                                                                             ## the
                                                                                                             ## selected
                                                                                                             ## point
                                                                                                             ## of
                                                                                                             ## the
                                                                                                             ## curve
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## \param[in]
                                                                                                             ## theParameter
                                                                                                             ## parameter
                                                                                                             ## of
                                                                                                             ## the
                                                                                                             ## calculation
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## \param[in]
                                                                                                             ## theDerivative
                                                                                                             ## maximal
                                                                                                             ## derivative
                                                                                                             ## to
                                                                                                             ## be
                                                                                                             ## calculated
                                                                                                             ## (computes
                                                                                                             ## all
                                                                                                             ## derivatives
                                                                                                             ## lesser
                                                                                                             ## than
                                                                                                             ## specified)
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## \param[out]
                                                                                                             ## theDerivArray
                                                                                                             ## result
                                                                                                             ## array
                                                                                                             ## of
                                                                                                             ## derivatives
                                                                                                             ## (with
                                                                                                             ## size
                                                                                                             ## (theDerivative+1)*(PntDim+1),
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## where
                                                                                                             ## PntDim
                                                                                                             ## =
                                                                                                             ## 2
                                                                                                             ## or
                                                                                                             ## 3
                                                                                                             ## is
                                                                                                             ## a
                                                                                                             ## dimension
                                                                                                             ## of
                                                                                                             ## the
                                                                                                             ## curve)
    ## !< identifies the rationality of Bezier/B-spline curve
    ## !< cache parameters
    ## !< array of poles and weights of calculated cache
    ##  the array has following structure:
    ##        x1 y1 [z1] [w1]
    ##        x2 y2 [z2] [w2] etc
    ##  for 2D-curves there is no z conponent, for non-rational curves there is no weight


proc constructBSplCLib_Cache*(theDegree: Standard_Integer;
                             thePeriodic: Standard_Boolean;
                             theFlatKnots: TColStd_Array1OfReal;
                             thePoles2d: TColgp_Array1OfPnt2d;
                             theWeights: ptr TColStd_Array1OfReal = nil): BSplCLib_Cache {.
    constructor, importcpp: "BSplCLib_Cache(@)", header: "BSplCLib_Cache.hxx".}
proc constructBSplCLib_Cache*(theDegree: Standard_Integer;
                             thePeriodic: Standard_Boolean;
                             theFlatKnots: TColStd_Array1OfReal;
                             thePoles: TColgp_Array1OfPnt;
                             theWeights: ptr TColStd_Array1OfReal = nil): BSplCLib_Cache {.
    constructor, importcpp: "BSplCLib_Cache(@)", header: "BSplCLib_Cache.hxx".}
proc IsCacheValid*(this: BSplCLib_Cache; theParameter: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsCacheValid", header: "BSplCLib_Cache.hxx".}
proc BuildCache*(this: var BSplCLib_Cache; theParameter: Standard_Real;
                theFlatKnots: TColStd_Array1OfReal;
                thePoles2d: TColgp_Array1OfPnt2d;
                theWeights: ptr TColStd_Array1OfReal) {.importcpp: "BuildCache",
    header: "BSplCLib_Cache.hxx".}
proc BuildCache*(this: var BSplCLib_Cache; theParameter: Standard_Real;
                theFlatKnots: TColStd_Array1OfReal; thePoles: TColgp_Array1OfPnt;
                theWeights: ptr TColStd_Array1OfReal = nil) {.
    importcpp: "BuildCache", header: "BSplCLib_Cache.hxx".}
proc D0*(this: BSplCLib_Cache; theParameter: Standard_Real; thePoint: var gp_Pnt2d) {.
    noSideEffect, importcpp: "D0", header: "BSplCLib_Cache.hxx".}
proc D0*(this: BSplCLib_Cache; theParameter: Standard_Real; thePoint: var gp_Pnt) {.
    noSideEffect, importcpp: "D0", header: "BSplCLib_Cache.hxx".}
proc D1*(this: BSplCLib_Cache; theParameter: Standard_Real; thePoint: var gp_Pnt2d;
        theTangent: var gp_Vec2d) {.noSideEffect, importcpp: "D1",
                                 header: "BSplCLib_Cache.hxx".}
proc D1*(this: BSplCLib_Cache; theParameter: Standard_Real; thePoint: var gp_Pnt;
        theTangent: var gp_Vec) {.noSideEffect, importcpp: "D1",
                               header: "BSplCLib_Cache.hxx".}
proc D2*(this: BSplCLib_Cache; theParameter: Standard_Real; thePoint: var gp_Pnt2d;
        theTangent: var gp_Vec2d; theCurvature: var gp_Vec2d) {.noSideEffect,
    importcpp: "D2", header: "BSplCLib_Cache.hxx".}
proc D2*(this: BSplCLib_Cache; theParameter: Standard_Real; thePoint: var gp_Pnt;
        theTangent: var gp_Vec; theCurvature: var gp_Vec) {.noSideEffect,
    importcpp: "D2", header: "BSplCLib_Cache.hxx".}
proc D3*(this: BSplCLib_Cache; theParameter: Standard_Real; thePoint: var gp_Pnt2d;
        theTangent: var gp_Vec2d; theCurvature: var gp_Vec2d; theTorsion: var gp_Vec2d) {.
    noSideEffect, importcpp: "D3", header: "BSplCLib_Cache.hxx".}
proc D3*(this: BSplCLib_Cache; theParameter: Standard_Real; thePoint: var gp_Pnt;
        theTangent: var gp_Vec; theCurvature: var gp_Vec; theTorsion: var gp_Vec) {.
    noSideEffect, importcpp: "D3", header: "BSplCLib_Cache.hxx".}
type
  BSplCLib_Cachebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "BSplCLib_Cache::get_type_name(@)",
                              header: "BSplCLib_Cache.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BSplCLib_Cache::get_type_descriptor(@)",
    header: "BSplCLib_Cache.hxx".}
proc DynamicType*(this: BSplCLib_Cache): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BSplCLib_Cache.hxx".}
discard "forward decl of BSplCLib_Cache"
type
  Handle_BSplCLib_Cache* = handle[BSplCLib_Cache]
