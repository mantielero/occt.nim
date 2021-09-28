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

discard "forward decl of HLRAlgo_WiresBlock"
discard "forward decl of HLRAlgo_WiresBlock"
type
  HandleC1C1* = Handle[HLRAlgoWiresBlock]

## ! A WiresBlock is a set of Blocks. It is used by the
## ! DataStructure to structure the Edges.
## !
## ! A WiresBlock contains :
## !
## ! * An Array  of Blocks.

type
  HLRAlgoWiresBlock* {.importcpp: "HLRAlgo_WiresBlock",
                      header: "HLRAlgo_WiresBlock.hxx", bycopy.} = object of StandardTransient ##
                                                                                        ## !
                                                                                        ## Create
                                                                                        ## a
                                                                                        ## Block
                                                                                        ## of
                                                                                        ## Blocks.


proc constructHLRAlgoWiresBlock*(nbWires: cint): HLRAlgoWiresBlock {.constructor,
    importcpp: "HLRAlgo_WiresBlock(@)", header: "HLRAlgo_WiresBlock.hxx".}
proc nbWires*(this: HLRAlgoWiresBlock): cint {.noSideEffect, importcpp: "NbWires",
    header: "HLRAlgo_WiresBlock.hxx".}
proc set*(this: var HLRAlgoWiresBlock; i: cint; w: Handle[HLRAlgoEdgesBlock]) {.
    importcpp: "Set", header: "HLRAlgo_WiresBlock.hxx".}
proc wire*(this: var HLRAlgoWiresBlock; i: cint): var Handle[HLRAlgoEdgesBlock] {.
    importcpp: "Wire", header: "HLRAlgo_WiresBlock.hxx".}
proc updateMinMax*(this: var HLRAlgoWiresBlock; theMinMaxes: MinMaxIndices) {.
    importcpp: "UpdateMinMax", header: "HLRAlgo_WiresBlock.hxx".}
proc minMax*(this: var HLRAlgoWiresBlock): var MinMaxIndices {.importcpp: "MinMax",
    header: "HLRAlgo_WiresBlock.hxx".}
type
  HLRAlgoWiresBlockbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "HLRAlgo_WiresBlock::get_type_name(@)",
                            header: "HLRAlgo_WiresBlock.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "HLRAlgo_WiresBlock::get_type_descriptor(@)",
    header: "HLRAlgo_WiresBlock.hxx".}
proc dynamicType*(this: HLRAlgoWiresBlock): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "HLRAlgo_WiresBlock.hxx".}

























