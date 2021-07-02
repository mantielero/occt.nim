##  Created on: 1997-01-10
##  Created by: Christophe MARION
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of HLRAlgo_PolyInternalNode"
discard "forward decl of HLRAlgo_PolyInternalNode"
type
  HandleHLRAlgoPolyInternalNode* = Handle[HLRAlgoPolyInternalNode]

## ! to Update OutLines.

type
  HLRAlgoPolyInternalNode* {.importcpp: "HLRAlgo_PolyInternalNode",
                            header: "HLRAlgo_PolyInternalNode.hxx", bycopy.} = object of StandardTransient

  HLRAlgoPolyInternalNodeNodeIndices* {.importcpp: "HLRAlgo_PolyInternalNode::NodeIndices",
                                       header: "HLRAlgo_PolyInternalNode.hxx",
                                       bycopy.} = object
    ndSg* {.importc: "NdSg".}: StandardInteger
    flag* {.importc: "Flag".}: StandardInteger
    edg1* {.importc: "Edg1".}: StandardInteger
    edg2* {.importc: "Edg2".}: StandardInteger

  HLRAlgoPolyInternalNodeNodeData* {.importcpp: "HLRAlgo_PolyInternalNode::NodeData",
                                    header: "HLRAlgo_PolyInternalNode.hxx", bycopy.} = object
    point* {.importc: "Point".}: GpXYZ
    normal* {.importc: "Normal".}: GpXYZ
    uv* {.importc: "UV".}: GpXY
    pCu1* {.importc: "PCu1".}: StandardReal
    pCu2* {.importc: "PCu2".}: StandardReal
    scal* {.importc: "Scal".}: StandardReal


proc constructHLRAlgoPolyInternalNodeNodeData*(): HLRAlgoPolyInternalNodeNodeData {.
    constructor, importcpp: "HLRAlgo_PolyInternalNode::NodeData(@)",
    header: "HLRAlgo_PolyInternalNode.hxx".}
proc constructHLRAlgoPolyInternalNode*(): HLRAlgoPolyInternalNode {.constructor,
    importcpp: "HLRAlgo_PolyInternalNode(@)",
    header: "HLRAlgo_PolyInternalNode.hxx".}
proc indices*(this: var HLRAlgoPolyInternalNode): var HLRAlgoPolyInternalNodeNodeIndices {.
    importcpp: "Indices", header: "HLRAlgo_PolyInternalNode.hxx".}
proc data*(this: var HLRAlgoPolyInternalNode): var HLRAlgoPolyInternalNodeNodeData {.
    importcpp: "Data", header: "HLRAlgo_PolyInternalNode.hxx".}
type
  HLRAlgoPolyInternalNodebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "HLRAlgo_PolyInternalNode::get_type_name(@)",
                            header: "HLRAlgo_PolyInternalNode.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "HLRAlgo_PolyInternalNode::get_type_descriptor(@)",
    header: "HLRAlgo_PolyInternalNode.hxx".}
proc dynamicType*(this: HLRAlgoPolyInternalNode): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "HLRAlgo_PolyInternalNode.hxx".}

