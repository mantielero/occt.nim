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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_MapOfInteger, TFunction_ExecutionStatus,
  ../TDF/TDF_Attribute, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../Standard/Standard_OStream

discard "forward decl of TDF_Label"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_DataSet"
discard "forward decl of TFunction_GraphNode"
discard "forward decl of TFunction_GraphNode"
type
  Handle_TFunction_GraphNode* = handle[TFunction_GraphNode]

## ! Provides links between functions.

type
  TFunction_GraphNode* {.importcpp: "TFunction_GraphNode",
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


proc Set*(L: TDF_Label): handle[TFunction_GraphNode] {.
    importcpp: "TFunction_GraphNode::Set(@)", header: "TFunction_GraphNode.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "TFunction_GraphNode::GetID(@)",
                            header: "TFunction_GraphNode.hxx".}
proc constructTFunction_GraphNode*(): TFunction_GraphNode {.constructor,
    importcpp: "TFunction_GraphNode(@)", header: "TFunction_GraphNode.hxx".}
proc AddPrevious*(this: var TFunction_GraphNode; funcID: Standard_Integer): Standard_Boolean {.
    importcpp: "AddPrevious", header: "TFunction_GraphNode.hxx".}
proc AddPrevious*(this: var TFunction_GraphNode; `func`: TDF_Label): Standard_Boolean {.
    importcpp: "AddPrevious", header: "TFunction_GraphNode.hxx".}
proc RemovePrevious*(this: var TFunction_GraphNode; funcID: Standard_Integer): Standard_Boolean {.
    importcpp: "RemovePrevious", header: "TFunction_GraphNode.hxx".}
proc RemovePrevious*(this: var TFunction_GraphNode; `func`: TDF_Label): Standard_Boolean {.
    importcpp: "RemovePrevious", header: "TFunction_GraphNode.hxx".}
proc GetPrevious*(this: TFunction_GraphNode): TColStd_MapOfInteger {.noSideEffect,
    importcpp: "GetPrevious", header: "TFunction_GraphNode.hxx".}
proc RemoveAllPrevious*(this: var TFunction_GraphNode) {.
    importcpp: "RemoveAllPrevious", header: "TFunction_GraphNode.hxx".}
proc AddNext*(this: var TFunction_GraphNode; funcID: Standard_Integer): Standard_Boolean {.
    importcpp: "AddNext", header: "TFunction_GraphNode.hxx".}
proc AddNext*(this: var TFunction_GraphNode; `func`: TDF_Label): Standard_Boolean {.
    importcpp: "AddNext", header: "TFunction_GraphNode.hxx".}
proc RemoveNext*(this: var TFunction_GraphNode; funcID: Standard_Integer): Standard_Boolean {.
    importcpp: "RemoveNext", header: "TFunction_GraphNode.hxx".}
proc RemoveNext*(this: var TFunction_GraphNode; `func`: TDF_Label): Standard_Boolean {.
    importcpp: "RemoveNext", header: "TFunction_GraphNode.hxx".}
proc GetNext*(this: TFunction_GraphNode): TColStd_MapOfInteger {.noSideEffect,
    importcpp: "GetNext", header: "TFunction_GraphNode.hxx".}
proc RemoveAllNext*(this: var TFunction_GraphNode) {.importcpp: "RemoveAllNext",
    header: "TFunction_GraphNode.hxx".}
proc GetStatus*(this: TFunction_GraphNode): TFunction_ExecutionStatus {.
    noSideEffect, importcpp: "GetStatus", header: "TFunction_GraphNode.hxx".}
proc SetStatus*(this: var TFunction_GraphNode; status: TFunction_ExecutionStatus) {.
    importcpp: "SetStatus", header: "TFunction_GraphNode.hxx".}
proc ID*(this: TFunction_GraphNode): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TFunction_GraphNode.hxx".}
proc Restore*(this: var TFunction_GraphNode; with: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TFunction_GraphNode.hxx".}
proc Paste*(this: TFunction_GraphNode; into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TFunction_GraphNode.hxx".}
proc NewEmpty*(this: TFunction_GraphNode): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TFunction_GraphNode.hxx".}
proc References*(this: TFunction_GraphNode; aDataSet: handle[TDF_DataSet]) {.
    noSideEffect, importcpp: "References", header: "TFunction_GraphNode.hxx".}
proc Dump*(this: TFunction_GraphNode; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TFunction_GraphNode.hxx".}
type
  TFunction_GraphNodebase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TFunction_GraphNode::get_type_name(@)",
                              header: "TFunction_GraphNode.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TFunction_GraphNode::get_type_descriptor(@)",
    header: "TFunction_GraphNode.hxx".}
proc DynamicType*(this: TFunction_GraphNode): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TFunction_GraphNode.hxx".}