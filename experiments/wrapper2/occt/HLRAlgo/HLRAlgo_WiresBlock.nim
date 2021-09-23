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
  HLRAlgo_EdgesBlock, ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_Array1OfTransient, ../Standard/Standard_Integer,
  ../Standard/Standard_Transient

discard "forward decl of HLRAlgo_WiresBlock"
discard "forward decl of HLRAlgo_WiresBlock"
type
  Handle_HLRAlgo_WiresBlock* = handle[HLRAlgo_WiresBlock]

## ! A WiresBlock is a set of Blocks. It is used by the
## ! DataStructure to structure the Edges.
## !
## ! A WiresBlock contains :
## !
## ! * An Array  of Blocks.

type
  HLRAlgo_WiresBlock* {.importcpp: "HLRAlgo_WiresBlock",
                       header: "HLRAlgo_WiresBlock.hxx", bycopy.} = object of Standard_Transient ##
                                                                                          ## !
                                                                                          ## Create
                                                                                          ## a
                                                                                          ## Block
                                                                                          ## of
                                                                                          ## Blocks.


proc constructHLRAlgo_WiresBlock*(NbWires: Standard_Integer): HLRAlgo_WiresBlock {.
    constructor, importcpp: "HLRAlgo_WiresBlock(@)",
    header: "HLRAlgo_WiresBlock.hxx".}
proc NbWires*(this: HLRAlgo_WiresBlock): Standard_Integer {.noSideEffect,
    importcpp: "NbWires", header: "HLRAlgo_WiresBlock.hxx".}
proc Set*(this: var HLRAlgo_WiresBlock; I: Standard_Integer;
         W: handle[HLRAlgo_EdgesBlock]) {.importcpp: "Set",
                                        header: "HLRAlgo_WiresBlock.hxx".}
proc Wire*(this: var HLRAlgo_WiresBlock; I: Standard_Integer): var handle[
    HLRAlgo_EdgesBlock] {.importcpp: "Wire", header: "HLRAlgo_WiresBlock.hxx".}
proc UpdateMinMax*(this: var HLRAlgo_WiresBlock; theMinMaxes: MinMaxIndices) {.
    importcpp: "UpdateMinMax", header: "HLRAlgo_WiresBlock.hxx".}
proc MinMax*(this: var HLRAlgo_WiresBlock): var MinMaxIndices {.importcpp: "MinMax",
    header: "HLRAlgo_WiresBlock.hxx".}
type
  HLRAlgo_WiresBlockbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "HLRAlgo_WiresBlock::get_type_name(@)",
                              header: "HLRAlgo_WiresBlock.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "HLRAlgo_WiresBlock::get_type_descriptor(@)",
    header: "HLRAlgo_WiresBlock.hxx".}
proc DynamicType*(this: HLRAlgo_WiresBlock): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "HLRAlgo_WiresBlock.hxx".}