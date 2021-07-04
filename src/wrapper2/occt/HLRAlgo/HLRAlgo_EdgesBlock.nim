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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_Array1OfInteger, ../TColStd/TColStd_Array1OfBoolean,
  ../Standard/Standard_Integer, ../Standard/Standard_Transient,
  ../TopAbs/TopAbs_Orientation, ../Standard/Standard_Boolean

discard "forward decl of HLRAlgo_EdgesBlock"
discard "forward decl of HLRAlgo_EdgesBlock"
type
  Handle_HLRAlgo_EdgesBlock* = handle[HLRAlgo_EdgesBlock]

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
  HLRAlgo_EdgesBlock* {.importcpp: "HLRAlgo_EdgesBlock",
                       header: "HLRAlgo_EdgesBlock.hxx", bycopy.} = object of Standard_Transient

  HLRAlgo_EdgesBlockMinMaxIndices* {.importcpp: "HLRAlgo_EdgesBlock::MinMaxIndices",
                                    header: "HLRAlgo_EdgesBlock.hxx", bycopy.} = object
    Min* {.importc: "Min".}: array[8, Standard_Integer]
    Max* {.importc: "Max".}: array[8, Standard_Integer]


proc Minimize*(this: var HLRAlgo_EdgesBlockMinMaxIndices;
              theMinMaxIndices: HLRAlgo_EdgesBlockMinMaxIndices): var HLRAlgo_EdgesBlockMinMaxIndices {.
    importcpp: "Minimize", header: "HLRAlgo_EdgesBlock.hxx".}
proc Maximize*(this: var HLRAlgo_EdgesBlockMinMaxIndices;
              theMinMaxIndices: HLRAlgo_EdgesBlockMinMaxIndices): var HLRAlgo_EdgesBlockMinMaxIndices {.
    importcpp: "Maximize", header: "HLRAlgo_EdgesBlock.hxx".}
proc constructHLRAlgo_EdgesBlock*(NbEdges: Standard_Integer): HLRAlgo_EdgesBlock {.
    constructor, importcpp: "HLRAlgo_EdgesBlock(@)",
    header: "HLRAlgo_EdgesBlock.hxx".}
proc NbEdges*(this: HLRAlgo_EdgesBlock): Standard_Integer {.noSideEffect,
    importcpp: "NbEdges", header: "HLRAlgo_EdgesBlock.hxx".}
proc Edge*(this: var HLRAlgo_EdgesBlock; I: Standard_Integer; EI: Standard_Integer) {.
    importcpp: "Edge", header: "HLRAlgo_EdgesBlock.hxx".}
proc Edge*(this: HLRAlgo_EdgesBlock; I: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Edge", header: "HLRAlgo_EdgesBlock.hxx".}
proc Orientation*(this: var HLRAlgo_EdgesBlock; I: Standard_Integer;
                 Or: TopAbs_Orientation) {.importcpp: "Orientation",
    header: "HLRAlgo_EdgesBlock.hxx".}
proc Orientation*(this: HLRAlgo_EdgesBlock; I: Standard_Integer): TopAbs_Orientation {.
    noSideEffect, importcpp: "Orientation", header: "HLRAlgo_EdgesBlock.hxx".}
proc OutLine*(this: HLRAlgo_EdgesBlock; I: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "OutLine", header: "HLRAlgo_EdgesBlock.hxx".}
proc OutLine*(this: var HLRAlgo_EdgesBlock; I: Standard_Integer; B: Standard_Boolean) {.
    importcpp: "OutLine", header: "HLRAlgo_EdgesBlock.hxx".}
proc Internal*(this: HLRAlgo_EdgesBlock; I: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "Internal", header: "HLRAlgo_EdgesBlock.hxx".}
proc Internal*(this: var HLRAlgo_EdgesBlock; I: Standard_Integer; B: Standard_Boolean) {.
    importcpp: "Internal", header: "HLRAlgo_EdgesBlock.hxx".}
proc Double*(this: HLRAlgo_EdgesBlock; I: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "Double", header: "HLRAlgo_EdgesBlock.hxx".}
proc Double*(this: var HLRAlgo_EdgesBlock; I: Standard_Integer; B: Standard_Boolean) {.
    importcpp: "Double", header: "HLRAlgo_EdgesBlock.hxx".}
proc IsoLine*(this: HLRAlgo_EdgesBlock; I: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsoLine", header: "HLRAlgo_EdgesBlock.hxx".}
proc IsoLine*(this: var HLRAlgo_EdgesBlock; I: Standard_Integer; B: Standard_Boolean) {.
    importcpp: "IsoLine", header: "HLRAlgo_EdgesBlock.hxx".}
proc UpdateMinMax*(this: var HLRAlgo_EdgesBlock;
                  TotMinMax: HLRAlgo_EdgesBlockMinMaxIndices) {.
    importcpp: "UpdateMinMax", header: "HLRAlgo_EdgesBlock.hxx".}
proc MinMax*(this: var HLRAlgo_EdgesBlock): var HLRAlgo_EdgesBlockMinMaxIndices {.
    importcpp: "MinMax", header: "HLRAlgo_EdgesBlock.hxx".}
type
  HLRAlgo_EdgesBlockbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "HLRAlgo_EdgesBlock::get_type_name(@)",
                              header: "HLRAlgo_EdgesBlock.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "HLRAlgo_EdgesBlock::get_type_descriptor(@)",
    header: "HLRAlgo_EdgesBlock.hxx".}
proc DynamicType*(this: HLRAlgo_EdgesBlock): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "HLRAlgo_EdgesBlock.hxx".}