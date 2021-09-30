##  Created on: 2008-06-21
##  Created by: Vladislav ROMASHKO
##  Copyright (c) 2008-2014 OPEN CASCADE SAS
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

discard "forward decl of TDF_Label"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_DataSet"
discard "forward decl of TFunction_GraphNode"
discard "forward decl of TFunction_GraphNode"
type
  HandleC1C1* = Handle[TFunctionGraphNode]

## ! Provides links between functions.

type
  TFunctionGraphNode* {.importcpp: "TFunction_GraphNode",
                       header: "TFunction_GraphNode.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                      ## !
                                                                                      ## Static
                                                                                      ## methods
                                                                                      ##
                                                                                      ## !
                                                                                      ## ==============
                                                                                      ##
                                                                                      ## !
                                                                                      ## Finds
                                                                                      ## or
                                                                                      ## Creates
                                                                                      ## a
                                                                                      ## graph
                                                                                      ## node
                                                                                      ## attribute
                                                                                      ## at
                                                                                      ## the
                                                                                      ## label
                                                                                      ## <L>.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## the
                                                                                      ## attribute.


proc set*(L: TDF_Label): Handle[TFunctionGraphNode] {.
    importcpp: "TFunction_GraphNode::Set(@)", header: "TFunction_GraphNode.hxx".}
proc getID*(): StandardGUID {.importcpp: "TFunction_GraphNode::GetID(@)",
                           header: "TFunction_GraphNode.hxx".}
proc constructTFunctionGraphNode*(): TFunctionGraphNode {.constructor,
    importcpp: "TFunction_GraphNode(@)", header: "TFunction_GraphNode.hxx".}
proc addPrevious*(this: var TFunctionGraphNode; funcID: cint): bool {.
    importcpp: "AddPrevious", header: "TFunction_GraphNode.hxx".}
proc addPrevious*(this: var TFunctionGraphNode; `func`: TDF_Label): bool {.
    importcpp: "AddPrevious", header: "TFunction_GraphNode.hxx".}
proc removePrevious*(this: var TFunctionGraphNode; funcID: cint): bool {.
    importcpp: "RemovePrevious", header: "TFunction_GraphNode.hxx".}
proc removePrevious*(this: var TFunctionGraphNode; `func`: TDF_Label): bool {.
    importcpp: "RemovePrevious", header: "TFunction_GraphNode.hxx".}
proc getPrevious*(this: TFunctionGraphNode): TColStdMapOfInteger {.noSideEffect,
    importcpp: "GetPrevious", header: "TFunction_GraphNode.hxx".}
proc removeAllPrevious*(this: var TFunctionGraphNode) {.
    importcpp: "RemoveAllPrevious", header: "TFunction_GraphNode.hxx".}
proc addNext*(this: var TFunctionGraphNode; funcID: cint): bool {.importcpp: "AddNext",
    header: "TFunction_GraphNode.hxx".}
proc addNext*(this: var TFunctionGraphNode; `func`: TDF_Label): bool {.
    importcpp: "AddNext", header: "TFunction_GraphNode.hxx".}
proc removeNext*(this: var TFunctionGraphNode; funcID: cint): bool {.
    importcpp: "RemoveNext", header: "TFunction_GraphNode.hxx".}
proc removeNext*(this: var TFunctionGraphNode; `func`: TDF_Label): bool {.
    importcpp: "RemoveNext", header: "TFunction_GraphNode.hxx".}
proc getNext*(this: TFunctionGraphNode): TColStdMapOfInteger {.noSideEffect,
    importcpp: "GetNext", header: "TFunction_GraphNode.hxx".}
proc removeAllNext*(this: var TFunctionGraphNode) {.importcpp: "RemoveAllNext",
    header: "TFunction_GraphNode.hxx".}
proc getStatus*(this: TFunctionGraphNode): TFunctionExecutionStatus {.noSideEffect,
    importcpp: "GetStatus", header: "TFunction_GraphNode.hxx".}
proc setStatus*(this: var TFunctionGraphNode; status: TFunctionExecutionStatus) {.
    importcpp: "SetStatus", header: "TFunction_GraphNode.hxx".}
proc id*(this: TFunctionGraphNode): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TFunction_GraphNode.hxx".}
proc restore*(this: var TFunctionGraphNode; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TFunction_GraphNode.hxx".}
proc paste*(this: TFunctionGraphNode; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TFunction_GraphNode.hxx".}
proc newEmpty*(this: TFunctionGraphNode): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TFunction_GraphNode.hxx".}
proc references*(this: TFunctionGraphNode; aDataSet: Handle[TDF_DataSet]) {.
    noSideEffect, importcpp: "References", header: "TFunction_GraphNode.hxx".}
proc dump*(this: TFunctionGraphNode; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TFunction_GraphNode.hxx".}
type
  TFunctionGraphNodebaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TFunction_GraphNode::get_type_name(@)",
                            header: "TFunction_GraphNode.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TFunction_GraphNode::get_type_descriptor(@)",
    header: "TFunction_GraphNode.hxx".}
proc dynamicType*(this: TFunctionGraphNode): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TFunction_GraphNode.hxx".}

























