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

discard "forward decl of HLRAlgo_PolyShellData"
discard "forward decl of HLRAlgo_PolyShellData"
type
  HandleHLRAlgoPolyShellData* = Handle[HLRAlgoPolyShellData]

## ! All the PolyData of a Shell

type
  HLRAlgoPolyShellData* {.importcpp: "HLRAlgo_PolyShellData",
                         header: "HLRAlgo_PolyShellData.hxx", bycopy.} = object of StandardTransient

  HLRAlgoPolyShellDataShellIndices* {.importcpp: "HLRAlgo_PolyShellData::ShellIndices",
                                     header: "HLRAlgo_PolyShellData.hxx", bycopy.} = object
    min* {.importc: "Min".}: int
    max* {.importc: "Max".}: int


proc constructHLRAlgoPolyShellData*(nbFace: int): HLRAlgoPolyShellData {.
    constructor, importcpp: "HLRAlgo_PolyShellData(@)",
    header: "HLRAlgo_PolyShellData.hxx".}
proc updateGlobalMinMax*(this: var HLRAlgoPolyShellData; theBox: var Box) {.
    importcpp: "UpdateGlobalMinMax", header: "HLRAlgo_PolyShellData.hxx".}
proc updateHiding*(this: var HLRAlgoPolyShellData; nbHiding: int) {.
    importcpp: "UpdateHiding", header: "HLRAlgo_PolyShellData.hxx".}
proc hiding*(this: HLRAlgoPolyShellData): bool {.noSideEffect, importcpp: "Hiding",
    header: "HLRAlgo_PolyShellData.hxx".}
proc polyData*(this: var HLRAlgoPolyShellData): var TColStdArray1OfTransient {.
    importcpp: "PolyData", header: "HLRAlgo_PolyShellData.hxx".}
proc hidingPolyData*(this: var HLRAlgoPolyShellData): var TColStdArray1OfTransient {.
    importcpp: "HidingPolyData", header: "HLRAlgo_PolyShellData.hxx".}
proc edges*(this: var HLRAlgoPolyShellData): var HLRAlgoListOfBPoint {.
    importcpp: "Edges", header: "HLRAlgo_PolyShellData.hxx".}
proc indices*(this: var HLRAlgoPolyShellData): var HLRAlgoPolyShellDataShellIndices {.
    importcpp: "Indices", header: "HLRAlgo_PolyShellData.hxx".}
type
  HLRAlgoPolyShellDatabaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "HLRAlgo_PolyShellData::get_type_name(@)",
                            header: "HLRAlgo_PolyShellData.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "HLRAlgo_PolyShellData::get_type_descriptor(@)",
    header: "HLRAlgo_PolyShellData.hxx".}
proc dynamicType*(this: HLRAlgoPolyShellData): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "HLRAlgo_PolyShellData.hxx".}
