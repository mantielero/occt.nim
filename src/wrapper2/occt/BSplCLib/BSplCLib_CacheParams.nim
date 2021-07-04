##  Copyright (c) 2018 OPEN CASCADE SAS
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
  ../Standard/Standard_Real, ../TColStd/TColStd_Array1OfReal, BSplCLib

## ! Simple structure containing parameters describing parameterization
## ! of a B-spline curve or a surface in one direction (U or V),
## ! and data of the current span for its caching

type
  BSplCLib_CacheParams* {.importcpp: "BSplCLib_CacheParams",
                         header: "BSplCLib_CacheParams.hxx", bycopy.} = object ##  copying is prohibited
    Degree* {.importc: "Degree".}: Standard_Integer ## /< degree of Bezier/B-spline
    IsPeriodic* {.importc: "IsPeriodic".}: Standard_Boolean ## /< true of the B-spline is periodic
    FirstParameter* {.importc: "FirstParameter".}: Standard_Real ## /< first valid parameter
    LastParameter* {.importc: "LastParameter".}: Standard_Real ## /< last valid parameter
    SpanIndexMin* {.importc: "SpanIndexMin".}: Standard_Integer ## /< minimal index of span
    SpanIndexMax* {.importc: "SpanIndexMax".}: Standard_Integer ## /< maximal index of span
    SpanStart* {.importc: "SpanStart".}: Standard_Real ## /< parameter for the frst point of the span
    SpanLength* {.importc: "SpanLength".}: Standard_Real ## /< length of the span
    SpanIndex* {.importc: "SpanIndex".}: Standard_Integer ## /< index of the span
                                                      ## ! Constructor, prepares data structures for caching.
                                                      ## ! \param theDegree     degree of the B-spline (or Bezier)
                                                      ## ! \param thePeriodic   identify whether the B-spline is periodic
                                                      ## ! \param theFlatKnots  knots of Bezier / B-spline parameterization


proc constructBSplCLib_CacheParams*(theDegree: Standard_Integer;
                                   thePeriodic: Standard_Boolean;
                                   theFlatKnots: TColStd_Array1OfReal): BSplCLib_CacheParams {.
    constructor, importcpp: "BSplCLib_CacheParams(@)",
    header: "BSplCLib_CacheParams.hxx".}
proc PeriodicNormalization*(this: BSplCLib_CacheParams; theParameter: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "PeriodicNormalization",
    header: "BSplCLib_CacheParams.hxx".}
proc IsCacheValid*(this: BSplCLib_CacheParams; theParameter: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsCacheValid", header: "BSplCLib_CacheParams.hxx".}
proc LocateParameter*(this: var BSplCLib_CacheParams;
                     theParameter: var Standard_Real;
                     theFlatKnots: TColStd_Array1OfReal) {.
    importcpp: "LocateParameter", header: "BSplCLib_CacheParams.hxx".}