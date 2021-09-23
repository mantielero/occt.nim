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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Real

## ! Data structure of a set of Hiding Triangles.

type
  HLRAlgo_PolyHidingData* {.importcpp: "HLRAlgo_PolyHidingData",
                           header: "HLRAlgo_PolyHidingData.hxx", bycopy.} = object

  HLRAlgo_PolyHidingDataTriangleIndices* {.
      importcpp: "HLRAlgo_PolyHidingData::TriangleIndices",
      header: "HLRAlgo_PolyHidingData.hxx", bycopy.} = object
    Index* {.importc: "Index".}: Standard_Integer
    Min* {.importc: "Min".}: Standard_Integer
    Max* {.importc: "Max".}: Standard_Integer

  HLRAlgo_PolyHidingDataPlaneT* {.importcpp: "HLRAlgo_PolyHidingData::PlaneT",
                                 header: "HLRAlgo_PolyHidingData.hxx", bycopy.} = object
    Normal* {.importc: "Normal".}: gp_XYZ
    D* {.importc: "D".}: Standard_Real


proc constructHLRAlgo_PolyHidingDataPlaneT*(): HLRAlgo_PolyHidingDataPlaneT {.
    constructor, importcpp: "HLRAlgo_PolyHidingData::PlaneT(@)",
    header: "HLRAlgo_PolyHidingData.hxx".}
proc constructHLRAlgo_PolyHidingData*(): HLRAlgo_PolyHidingData {.constructor,
    importcpp: "HLRAlgo_PolyHidingData(@)", header: "HLRAlgo_PolyHidingData.hxx".}
proc Set*(this: var HLRAlgo_PolyHidingData; Index: Standard_Integer;
         Minim: Standard_Integer; Maxim: Standard_Integer; A: Standard_Real;
         B: Standard_Real; C: Standard_Real; D: Standard_Real) {.importcpp: "Set",
    header: "HLRAlgo_PolyHidingData.hxx".}
proc Indices*(this: var HLRAlgo_PolyHidingData): var HLRAlgo_PolyHidingDataTriangleIndices {.
    importcpp: "Indices", header: "HLRAlgo_PolyHidingData.hxx".}
proc Plane*(this: var HLRAlgo_PolyHidingData): var HLRAlgo_PolyHidingDataPlaneT {.
    importcpp: "Plane", header: "HLRAlgo_PolyHidingData.hxx".}