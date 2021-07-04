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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../Standard/Standard_Transient, ../gp/gp_XYZ,
  ../gp/gp_XY

discard "forward decl of HLRAlgo_PolyInternalNode"
discard "forward decl of HLRAlgo_PolyInternalNode"
type
  Handle_HLRAlgo_PolyInternalNode* = handle[HLRAlgo_PolyInternalNode]

## ! to Update OutLines.

type
  HLRAlgo_PolyInternalNode* {.importcpp: "HLRAlgo_PolyInternalNode",
                             header: "HLRAlgo_PolyInternalNode.hxx", bycopy.} = object of Standard_Transient

  HLRAlgo_PolyInternalNodeNodeIndices* {.importcpp: "HLRAlgo_PolyInternalNode::NodeIndices",
                                        header: "HLRAlgo_PolyInternalNode.hxx",
                                        bycopy.} = object
    NdSg* {.importc: "NdSg".}: Standard_Integer
    Flag* {.importc: "Flag".}: Standard_Integer
    Edg1* {.importc: "Edg1".}: Standard_Integer
    Edg2* {.importc: "Edg2".}: Standard_Integer

  HLRAlgo_PolyInternalNodeNodeData* {.importcpp: "HLRAlgo_PolyInternalNode::NodeData",
                                     header: "HLRAlgo_PolyInternalNode.hxx",
                                     bycopy.} = object
    Point* {.importc: "Point".}: gp_XYZ
    Normal* {.importc: "Normal".}: gp_XYZ
    UV* {.importc: "UV".}: gp_XY
    PCu1* {.importc: "PCu1".}: Standard_Real
    PCu2* {.importc: "PCu2".}: Standard_Real
    Scal* {.importc: "Scal".}: Standard_Real


proc constructHLRAlgo_PolyInternalNodeNodeData*(): HLRAlgo_PolyInternalNodeNodeData {.
    constructor, importcpp: "HLRAlgo_PolyInternalNode::NodeData(@)",
    header: "HLRAlgo_PolyInternalNode.hxx".}
proc constructHLRAlgo_PolyInternalNode*(): HLRAlgo_PolyInternalNode {.constructor,
    importcpp: "HLRAlgo_PolyInternalNode(@)",
    header: "HLRAlgo_PolyInternalNode.hxx".}
proc Indices*(this: var HLRAlgo_PolyInternalNode): var HLRAlgo_PolyInternalNodeNodeIndices {.
    importcpp: "Indices", header: "HLRAlgo_PolyInternalNode.hxx".}
proc Data*(this: var HLRAlgo_PolyInternalNode): var HLRAlgo_PolyInternalNodeNodeData {.
    importcpp: "Data", header: "HLRAlgo_PolyInternalNode.hxx".}
type
  HLRAlgo_PolyInternalNodebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "HLRAlgo_PolyInternalNode::get_type_name(@)",
                              header: "HLRAlgo_PolyInternalNode.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "HLRAlgo_PolyInternalNode::get_type_descriptor(@)",
    header: "HLRAlgo_PolyInternalNode.hxx".}
proc DynamicType*(this: HLRAlgo_PolyInternalNode): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "HLRAlgo_PolyInternalNode.hxx".}