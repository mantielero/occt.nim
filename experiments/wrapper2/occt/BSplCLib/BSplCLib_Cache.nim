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

## ! \brief A cache class for Bezier and B-spline curves.
## !
## ! Defines all data, that can be cached on a span of a curve.
## ! The data should be recalculated in going from span to span.

type
  BSplCLibCache* {.importcpp: "BSplCLib_Cache", header: "BSplCLib_Cache.hxx", bycopy.} = object of StandardTransient ##
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


proc constructBSplCLibCache*(theDegree: int; thePeriodic: bool;
                            theFlatKnots: TColStdArray1OfReal;
                            thePoles2d: TColgpArray1OfPnt2d;
                            theWeights: ptr TColStdArray1OfReal = nil): BSplCLibCache {.
    constructor, importcpp: "BSplCLib_Cache(@)", header: "BSplCLib_Cache.hxx".}
proc constructBSplCLibCache*(theDegree: int; thePeriodic: bool;
                            theFlatKnots: TColStdArray1OfReal;
                            thePoles: TColgpArray1OfPnt;
                            theWeights: ptr TColStdArray1OfReal = nil): BSplCLibCache {.
    constructor, importcpp: "BSplCLib_Cache(@)", header: "BSplCLib_Cache.hxx".}
proc isCacheValid*(this: BSplCLibCache; theParameter: float): bool {.noSideEffect,
    importcpp: "IsCacheValid", header: "BSplCLib_Cache.hxx".}
proc buildCache*(this: var BSplCLibCache; theParameter: float;
                theFlatKnots: TColStdArray1OfReal;
                thePoles2d: TColgpArray1OfPnt2d;
                theWeights: ptr TColStdArray1OfReal) {.importcpp: "BuildCache",
    header: "BSplCLib_Cache.hxx".}
proc buildCache*(this: var BSplCLibCache; theParameter: float;
                theFlatKnots: TColStdArray1OfReal; thePoles: TColgpArray1OfPnt;
                theWeights: ptr TColStdArray1OfReal = nil) {.importcpp: "BuildCache",
    header: "BSplCLib_Cache.hxx".}
proc d0*(this: BSplCLibCache; theParameter: float; thePoint: var Pnt2d) {.noSideEffect,
    importcpp: "D0", header: "BSplCLib_Cache.hxx".}
proc d0*(this: BSplCLibCache; theParameter: float; thePoint: var Pnt) {.noSideEffect,
    importcpp: "D0", header: "BSplCLib_Cache.hxx".}
proc d1*(this: BSplCLibCache; theParameter: float; thePoint: var Pnt2d;
        theTangent: var Vec2d) {.noSideEffect, importcpp: "D1",
                              header: "BSplCLib_Cache.hxx".}
proc d1*(this: BSplCLibCache; theParameter: float; thePoint: var Pnt;
        theTangent: var Vec) {.noSideEffect, importcpp: "D1",
                            header: "BSplCLib_Cache.hxx".}
proc d2*(this: BSplCLibCache; theParameter: float; thePoint: var Pnt2d;
        theTangent: var Vec2d; theCurvature: var Vec2d) {.noSideEffect,
    importcpp: "D2", header: "BSplCLib_Cache.hxx".}
proc d2*(this: BSplCLibCache; theParameter: float; thePoint: var Pnt;
        theTangent: var Vec; theCurvature: var Vec) {.noSideEffect, importcpp: "D2",
    header: "BSplCLib_Cache.hxx".}
proc d3*(this: BSplCLibCache; theParameter: float; thePoint: var Pnt2d;
        theTangent: var Vec2d; theCurvature: var Vec2d; theTorsion: var Vec2d) {.
    noSideEffect, importcpp: "D3", header: "BSplCLib_Cache.hxx".}
proc d3*(this: BSplCLibCache; theParameter: float; thePoint: var Pnt;
        theTangent: var Vec; theCurvature: var Vec; theTorsion: var Vec) {.noSideEffect,
    importcpp: "D3", header: "BSplCLib_Cache.hxx".}
type
  BSplCLibCachebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "BSplCLib_Cache::get_type_name(@)",
                            header: "BSplCLib_Cache.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BSplCLib_Cache::get_type_descriptor(@)",
    header: "BSplCLib_Cache.hxx".}
proc dynamicType*(this: BSplCLibCache): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BSplCLib_Cache.hxx".}
discard "forward decl of BSplCLib_Cache"
type
  HandleBSplCLibCache* = Handle[BSplCLibCache]

