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

## ! \brief A cache class for Bezier and B-spline surfaces.
## !
## ! Defines all data, that can be cached on a span of the surface.
## ! The data should be recalculated in going from span to span.

type
  BSplSLibCache* {.importcpp: "BSplSLib_Cache", header: "BSplSLib_Cache.hxx", bycopy.} = object of StandardTransient ##
                                                                                                           ## !
                                                                                                           ## Constructor
                                                                                                           ## for
                                                                                                           ## caching
                                                                                                           ## of
                                                                                                           ## the
                                                                                                           ## span
                                                                                                           ## for
                                                                                                           ## the
                                                                                                           ## surface
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## \param
                                                                                                           ## theDegreeU
                                                                                                           ## degree
                                                                                                           ## along
                                                                                                           ## the
                                                                                                           ## first
                                                                                                           ## parameter
                                                                                                           ## (U)
                                                                                                           ## of
                                                                                                           ## the
                                                                                                           ## surface
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## \param
                                                                                                           ## thePeriodicU
                                                                                                           ## identify
                                                                                                           ## the
                                                                                                           ## surface
                                                                                                           ## is
                                                                                                           ## periodical
                                                                                                           ## along
                                                                                                           ## U
                                                                                                           ## axis
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## \param
                                                                                                           ## theFlatKnotsU
                                                                                                           ## knots
                                                                                                           ## of
                                                                                                           ## the
                                                                                                           ## surface
                                                                                                           ## (with
                                                                                                           ## repetition)
                                                                                                           ## along
                                                                                                           ## U
                                                                                                           ## axis
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## \param
                                                                                                           ## theDegreeV
                                                                                                           ## degree
                                                                                                           ## alogn
                                                                                                           ## the
                                                                                                           ## second
                                                                                                           ## parameter
                                                                                                           ## (V)
                                                                                                           ## of
                                                                                                           ## the
                                                                                                           ## surface
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## \param
                                                                                                           ## thePeriodicV
                                                                                                           ## identify
                                                                                                           ## the
                                                                                                           ## surface
                                                                                                           ## is
                                                                                                           ## periodical
                                                                                                           ## along
                                                                                                           ## V
                                                                                                           ## axis
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## \param
                                                                                                           ## theFlatKnotsV
                                                                                                           ## knots
                                                                                                           ## of
                                                                                                           ## the
                                                                                                           ## surface
                                                                                                           ## (with
                                                                                                           ## repetition)
                                                                                                           ## along
                                                                                                           ## V
                                                                                                           ## axis
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
                                                                                                           ## copying
                                                                                                           ## is
                                                                                                           ## prohibited
    ## !< identifies the rationality of Bezier/B-spline surface
    ## !< cach parameters by U and V directions
    ## !< array of poles and weights of calculated cache
    ##  the array has following structure:
    ##        x11 y11 z11 [w11] x12 y12 z12 [w12] ...
    ##        x21 y21 z21 [w21] x22 y22 z22 [w22] etc
    ##  for non-rational surfaces there is no weight;
    ##  size of array: (max(myDegree)+1) * A*(min(myDegree)+1), where A = 4 or 3


proc constructBSplSLibCache*(theDegreeU: cint; thePeriodicU: bool;
                            theFlatKnotsU: TColStdArray1OfReal; theDegreeV: cint;
                            thePeriodicV: bool;
                            theFlatKnotsV: TColStdArray1OfReal;
                            theWeights: ptr TColStdArray2OfReal = nil): BSplSLibCache {.
    constructor, importcpp: "BSplSLib_Cache(@)", header: "BSplSLib_Cache.hxx".}
proc isCacheValid*(this: BSplSLibCache; theParameterU: cfloat; theParameterV: cfloat): bool {.
    noSideEffect, importcpp: "IsCacheValid", header: "BSplSLib_Cache.hxx".}
proc buildCache*(this: var BSplSLibCache; theParameterU: cfloat;
                theParameterV: cfloat; theFlatKnotsU: TColStdArray1OfReal;
                theFlatKnotsV: TColStdArray1OfReal; thePoles: TColgpArray2OfPnt;
                theWeights: ptr TColStdArray2OfReal = nil) {.importcpp: "BuildCache",
    header: "BSplSLib_Cache.hxx".}
proc d0*(this: BSplSLibCache; theU: cfloat; theV: cfloat; thePoint: var Pnt) {.
    noSideEffect, importcpp: "D0", header: "BSplSLib_Cache.hxx".}
proc d1*(this: BSplSLibCache; theU: cfloat; theV: cfloat; thePoint: var Pnt;
        theTangentU: var Vec; theTangentV: var Vec) {.noSideEffect, importcpp: "D1",
    header: "BSplSLib_Cache.hxx".}
proc d2*(this: BSplSLibCache; theU: cfloat; theV: cfloat; thePoint: var Pnt;
        theTangentU: var Vec; theTangentV: var Vec; theCurvatureU: var Vec;
        theCurvatureV: var Vec; theCurvatureUV: var Vec) {.noSideEffect,
    importcpp: "D2", header: "BSplSLib_Cache.hxx".}
type
  BSplSLibCachebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "BSplSLib_Cache::get_type_name(@)",
                            header: "BSplSLib_Cache.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BSplSLib_Cache::get_type_descriptor(@)",
    header: "BSplSLib_Cache.hxx".}
proc dynamicType*(this: BSplSLibCache): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BSplSLib_Cache.hxx".}
discard "forward decl of BSplSLib_Cache"
type
  HandleC1C1* = Handle[BSplSLibCache]


























