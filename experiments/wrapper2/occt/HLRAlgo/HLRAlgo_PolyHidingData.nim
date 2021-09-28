##  Created on: 1993-10-29
##  Created by: Christophe MARION
##  Copyright (c) 1993-1999 Matra Datavision
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

## ! Data structure of a set of Hiding Triangles.

type
  HLRAlgoPolyHidingData* {.importcpp: "HLRAlgo_PolyHidingData",
                          header: "HLRAlgo_PolyHidingData.hxx", bycopy.} = object

  HLRAlgoPolyHidingDataTriangleIndices* {.
      importcpp: "HLRAlgo_PolyHidingData::TriangleIndices",
      header: "HLRAlgo_PolyHidingData.hxx", bycopy.} = object
    index* {.importc: "Index".}: cint
    min* {.importc: "Min".}: cint
    max* {.importc: "Max".}: cint

  HLRAlgoPolyHidingDataPlaneT* {.importcpp: "HLRAlgo_PolyHidingData::PlaneT",
                                header: "HLRAlgo_PolyHidingData.hxx", bycopy.} = object
    normal* {.importc: "Normal".}: Xyz
    d* {.importc: "D".}: cfloat


proc constructHLRAlgoPolyHidingDataPlaneT*(): HLRAlgoPolyHidingDataPlaneT {.
    constructor, importcpp: "HLRAlgo_PolyHidingData::PlaneT(@)",
    header: "HLRAlgo_PolyHidingData.hxx".}
proc constructHLRAlgoPolyHidingData*(): HLRAlgoPolyHidingData {.constructor,
    importcpp: "HLRAlgo_PolyHidingData(@)", header: "HLRAlgo_PolyHidingData.hxx".}
proc set*(this: var HLRAlgoPolyHidingData; index: cint; minim: cint; maxim: cint;
         a: cfloat; b: cfloat; c: cfloat; d: cfloat) {.importcpp: "Set",
    header: "HLRAlgo_PolyHidingData.hxx".}
proc indices*(this: var HLRAlgoPolyHidingData): var HLRAlgoPolyHidingDataTriangleIndices {.
    importcpp: "Indices", header: "HLRAlgo_PolyHidingData.hxx".}
proc plane*(this: var HLRAlgoPolyHidingData): var HLRAlgoPolyHidingDataPlaneT {.
    importcpp: "Plane", header: "HLRAlgo_PolyHidingData.hxx".}

























