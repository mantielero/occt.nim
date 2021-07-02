##  Created on: 1992-04-06
##  Created by: Christophe MARION
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of HLRAlgo_EdgesBlock"
discard "forward decl of HLRAlgo_EdgesBlock"
type
  HandleHLRAlgoEdgesBlock* = Handle[HLRAlgoEdgesBlock]

## ! An EdgesBlock is a set of Edges. It is used by the
## ! DataStructure to structure the Edges.
## !
## ! An EdgesBlock contains :
## !
## ! * An Array  of index of Edges.
## !
## ! * An Array of flagsf ( Orientation
## ! OutLine
## ! Internal
## ! Double
## ! IsoLine)

type
  HLRAlgoEdgesBlock* {.importcpp: "HLRAlgo_EdgesBlock",
                      header: "HLRAlgo_EdgesBlock.hxx", bycopy.} = object of StandardTransient

  HLRAlgoEdgesBlockMinMaxIndices* {.importcpp: "HLRAlgo_EdgesBlock::MinMaxIndices",
                                   header: "HLRAlgo_EdgesBlock.hxx", bycopy.} = object
    min* {.importc: "Min".}: array[8, StandardInteger]
    max* {.importc: "Max".}: array[8, StandardInteger]


proc minimize*(this: var HLRAlgoEdgesBlockMinMaxIndices;
              theMinMaxIndices: HLRAlgoEdgesBlockMinMaxIndices): var HLRAlgoEdgesBlockMinMaxIndices {.
    importcpp: "Minimize", header: "HLRAlgo_EdgesBlock.hxx".}
proc maximize*(this: var HLRAlgoEdgesBlockMinMaxIndices;
              theMinMaxIndices: HLRAlgoEdgesBlockMinMaxIndices): var HLRAlgoEdgesBlockMinMaxIndices {.
    importcpp: "Maximize", header: "HLRAlgo_EdgesBlock.hxx".}
proc constructHLRAlgoEdgesBlock*(nbEdges: StandardInteger): HLRAlgoEdgesBlock {.
    constructor, importcpp: "HLRAlgo_EdgesBlock(@)",
    header: "HLRAlgo_EdgesBlock.hxx".}
proc nbEdges*(this: HLRAlgoEdgesBlock): StandardInteger {.noSideEffect,
    importcpp: "NbEdges", header: "HLRAlgo_EdgesBlock.hxx".}
proc edge*(this: var HLRAlgoEdgesBlock; i: StandardInteger; ei: StandardInteger) {.
    importcpp: "Edge", header: "HLRAlgo_EdgesBlock.hxx".}
proc edge*(this: HLRAlgoEdgesBlock; i: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "Edge", header: "HLRAlgo_EdgesBlock.hxx".}
proc orientation*(this: var HLRAlgoEdgesBlock; i: StandardInteger;
                 `or`: TopAbsOrientation) {.importcpp: "Orientation",
    header: "HLRAlgo_EdgesBlock.hxx".}
proc orientation*(this: HLRAlgoEdgesBlock; i: StandardInteger): TopAbsOrientation {.
    noSideEffect, importcpp: "Orientation", header: "HLRAlgo_EdgesBlock.hxx".}
proc outLine*(this: HLRAlgoEdgesBlock; i: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "OutLine", header: "HLRAlgo_EdgesBlock.hxx".}
proc outLine*(this: var HLRAlgoEdgesBlock; i: StandardInteger; b: StandardBoolean) {.
    importcpp: "OutLine", header: "HLRAlgo_EdgesBlock.hxx".}
proc internal*(this: HLRAlgoEdgesBlock; i: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "Internal", header: "HLRAlgo_EdgesBlock.hxx".}
proc internal*(this: var HLRAlgoEdgesBlock; i: StandardInteger; b: StandardBoolean) {.
    importcpp: "Internal", header: "HLRAlgo_EdgesBlock.hxx".}
proc double*(this: HLRAlgoEdgesBlock; i: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "Double", header: "HLRAlgo_EdgesBlock.hxx".}
proc double*(this: var HLRAlgoEdgesBlock; i: StandardInteger; b: StandardBoolean) {.
    importcpp: "Double", header: "HLRAlgo_EdgesBlock.hxx".}
proc isoLine*(this: HLRAlgoEdgesBlock; i: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsoLine", header: "HLRAlgo_EdgesBlock.hxx".}
proc isoLine*(this: var HLRAlgoEdgesBlock; i: StandardInteger; b: StandardBoolean) {.
    importcpp: "IsoLine", header: "HLRAlgo_EdgesBlock.hxx".}
proc updateMinMax*(this: var HLRAlgoEdgesBlock;
                  totMinMax: HLRAlgoEdgesBlockMinMaxIndices) {.
    importcpp: "UpdateMinMax", header: "HLRAlgo_EdgesBlock.hxx".}
proc minMax*(this: var HLRAlgoEdgesBlock): var HLRAlgoEdgesBlockMinMaxIndices {.
    importcpp: "MinMax", header: "HLRAlgo_EdgesBlock.hxx".}
type
  HLRAlgoEdgesBlockbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "HLRAlgo_EdgesBlock::get_type_name(@)",
                            header: "HLRAlgo_EdgesBlock.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "HLRAlgo_EdgesBlock::get_type_descriptor(@)",
    header: "HLRAlgo_EdgesBlock.hxx".}
proc dynamicType*(this: HLRAlgoEdgesBlock): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "HLRAlgo_EdgesBlock.hxx".}

