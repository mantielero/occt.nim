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
  ../Standard/Standard_Transient, ../gp/gp_Pnt, ../gp/gp_Vec,
  ../TColgp/TColgp_Array2OfPnt, ../TColStd/TColStd_Array1OfInteger,
  ../TColStd/TColStd_HArray2OfReal, ../TColStd/TColStd_HArray1OfReal,
  ../TColStd/TColStd_Array1OfReal, ../TColStd/TColStd_Array2OfReal,
  ../BSplCLib/BSplCLib_CacheParams

## ! \brief A cache class for Bezier and B-spline surfaces.
## !
## ! Defines all data, that can be cached on a span of the surface.
## ! The data should be recalculated in going from span to span.

type
  BSplSLib_Cache* {.importcpp: "BSplSLib_Cache", header: "BSplSLib_Cache.hxx", bycopy.} = object of Standard_Transient ##
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


proc constructBSplSLib_Cache*(theDegreeU: Standard_Integer;
                             thePeriodicU: Standard_Boolean;
                             theFlatKnotsU: TColStd_Array1OfReal;
                             theDegreeV: Standard_Integer;
                             thePeriodicV: Standard_Boolean;
                             theFlatKnotsV: TColStd_Array1OfReal;
                             theWeights: ptr TColStd_Array2OfReal = nil): BSplSLib_Cache {.
    constructor, importcpp: "BSplSLib_Cache(@)", header: "BSplSLib_Cache.hxx".}
proc IsCacheValid*(this: BSplSLib_Cache; theParameterU: Standard_Real;
                  theParameterV: Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "IsCacheValid", header: "BSplSLib_Cache.hxx".}
proc BuildCache*(this: var BSplSLib_Cache; theParameterU: Standard_Real;
                theParameterV: Standard_Real; theFlatKnotsU: TColStd_Array1OfReal;
                theFlatKnotsV: TColStd_Array1OfReal; thePoles: TColgp_Array2OfPnt;
                theWeights: ptr TColStd_Array2OfReal = nil) {.
    importcpp: "BuildCache", header: "BSplSLib_Cache.hxx".}
proc D0*(this: BSplSLib_Cache; theU: Standard_Real; theV: Standard_Real;
        thePoint: var gp_Pnt) {.noSideEffect, importcpp: "D0",
                             header: "BSplSLib_Cache.hxx".}
proc D1*(this: BSplSLib_Cache; theU: Standard_Real; theV: Standard_Real;
        thePoint: var gp_Pnt; theTangentU: var gp_Vec; theTangentV: var gp_Vec) {.
    noSideEffect, importcpp: "D1", header: "BSplSLib_Cache.hxx".}
proc D2*(this: BSplSLib_Cache; theU: Standard_Real; theV: Standard_Real;
        thePoint: var gp_Pnt; theTangentU: var gp_Vec; theTangentV: var gp_Vec;
        theCurvatureU: var gp_Vec; theCurvatureV: var gp_Vec;
        theCurvatureUV: var gp_Vec) {.noSideEffect, importcpp: "D2",
                                   header: "BSplSLib_Cache.hxx".}
type
  BSplSLib_Cachebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "BSplSLib_Cache::get_type_name(@)",
                              header: "BSplSLib_Cache.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BSplSLib_Cache::get_type_descriptor(@)",
    header: "BSplSLib_Cache.hxx".}
proc DynamicType*(this: BSplSLib_Cache): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BSplSLib_Cache.hxx".}
discard "forward decl of BSplSLib_Cache"
type
  Handle_BSplSLib_Cache* = handle[BSplSLib_Cache]
