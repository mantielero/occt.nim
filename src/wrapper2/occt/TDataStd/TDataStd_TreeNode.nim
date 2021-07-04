##  Created on: 1999-06-10
##  Created by: Vladislav ROMASHKO
##  Copyright (c) 1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, TDataStd_PtrTreeNode,
  ../Standard/Standard_GUID, ../TDF/TDF_Attribute, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../Standard/Standard_OStream

discard "forward decl of TDataStd_ChildNodeIterator"
discard "forward decl of TDF_Label"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_AttributeDelta"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_DataSet"
discard "forward decl of TDataStd_TreeNode"
discard "forward decl of TDataStd_TreeNode"
type
  Handle_TDataStd_TreeNode* = handle[TDataStd_TreeNode]

## ! Allows you to define an explicit tree of labels
## ! which you can also edit.
## ! Without this class, the data structure cannot be fully edited.
## ! This service is required if for presentation
## ! purposes, you want to create an application with
## ! a tree which allows you to organize and link data
## ! as a function of application features.

type
  TDataStd_TreeNode* {.importcpp: "TDataStd_TreeNode",
                      header: "TDataStd_TreeNode.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                   ## !
                                                                                   ## class
                                                                                   ## methods
                                                                                   ## working
                                                                                   ## on
                                                                                   ## the
                                                                                   ## node
                                                                                   ##
                                                                                   ## !
                                                                                   ## ===================================
                                                                                   ##
                                                                                   ## !
                                                                                   ## Returns
                                                                                   ## true
                                                                                   ## if
                                                                                   ## the
                                                                                   ## tree
                                                                                   ## node
                                                                                   ## T
                                                                                   ## is
                                                                                   ## found
                                                                                   ## on
                                                                                   ## the
                                                                                   ## label
                                                                                   ## L.
                                                                                   ##
                                                                                   ## !
                                                                                   ## Otherwise,
                                                                                   ## false
                                                                                   ## is
                                                                                   ## returned.


proc Find*(L: TDF_Label; T: var handle[TDataStd_TreeNode]): Standard_Boolean {.
    importcpp: "TDataStd_TreeNode::Find(@)", header: "TDataStd_TreeNode.hxx".}
proc Set*(L: TDF_Label): handle[TDataStd_TreeNode] {.
    importcpp: "TDataStd_TreeNode::Set(@)", header: "TDataStd_TreeNode.hxx".}
proc Set*(L: TDF_Label; ExplicitTreeID: Standard_GUID): handle[TDataStd_TreeNode] {.
    importcpp: "TDataStd_TreeNode::Set(@)", header: "TDataStd_TreeNode.hxx".}
proc GetDefaultTreeID*(): Standard_GUID {.importcpp: "TDataStd_TreeNode::GetDefaultTreeID(@)",
                                       header: "TDataStd_TreeNode.hxx".}
proc constructTDataStd_TreeNode*(): TDataStd_TreeNode {.constructor,
    importcpp: "TDataStd_TreeNode(@)", header: "TDataStd_TreeNode.hxx".}
proc Append*(this: var TDataStd_TreeNode; Child: handle[TDataStd_TreeNode]): Standard_Boolean {.
    importcpp: "Append", header: "TDataStd_TreeNode.hxx".}
proc Prepend*(this: var TDataStd_TreeNode; Child: handle[TDataStd_TreeNode]): Standard_Boolean {.
    importcpp: "Prepend", header: "TDataStd_TreeNode.hxx".}
proc InsertBefore*(this: var TDataStd_TreeNode; Node: handle[TDataStd_TreeNode]): Standard_Boolean {.
    importcpp: "InsertBefore", header: "TDataStd_TreeNode.hxx".}
proc InsertAfter*(this: var TDataStd_TreeNode; Node: handle[TDataStd_TreeNode]): Standard_Boolean {.
    importcpp: "InsertAfter", header: "TDataStd_TreeNode.hxx".}
proc Remove*(this: var TDataStd_TreeNode): Standard_Boolean {.importcpp: "Remove",
    header: "TDataStd_TreeNode.hxx".}
proc Depth*(this: TDataStd_TreeNode): Standard_Integer {.noSideEffect,
    importcpp: "Depth", header: "TDataStd_TreeNode.hxx".}
proc NbChildren*(this: TDataStd_TreeNode;
                allLevels: Standard_Boolean = Standard_False): Standard_Integer {.
    noSideEffect, importcpp: "NbChildren", header: "TDataStd_TreeNode.hxx".}
proc IsAscendant*(this: TDataStd_TreeNode; `of`: handle[TDataStd_TreeNode]): Standard_Boolean {.
    noSideEffect, importcpp: "IsAscendant", header: "TDataStd_TreeNode.hxx".}
proc IsDescendant*(this: TDataStd_TreeNode; `of`: handle[TDataStd_TreeNode]): Standard_Boolean {.
    noSideEffect, importcpp: "IsDescendant", header: "TDataStd_TreeNode.hxx".}
proc IsRoot*(this: TDataStd_TreeNode): Standard_Boolean {.noSideEffect,
    importcpp: "IsRoot", header: "TDataStd_TreeNode.hxx".}
proc Root*(this: TDataStd_TreeNode): handle[TDataStd_TreeNode] {.noSideEffect,
    importcpp: "Root", header: "TDataStd_TreeNode.hxx".}
proc IsFather*(this: TDataStd_TreeNode; `of`: handle[TDataStd_TreeNode]): Standard_Boolean {.
    noSideEffect, importcpp: "IsFather", header: "TDataStd_TreeNode.hxx".}
proc IsChild*(this: TDataStd_TreeNode; `of`: handle[TDataStd_TreeNode]): Standard_Boolean {.
    noSideEffect, importcpp: "IsChild", header: "TDataStd_TreeNode.hxx".}
proc HasFather*(this: TDataStd_TreeNode): Standard_Boolean {.noSideEffect,
    importcpp: "HasFather", header: "TDataStd_TreeNode.hxx".}
proc Father*(this: TDataStd_TreeNode): handle[TDataStd_TreeNode] {.noSideEffect,
    importcpp: "Father", header: "TDataStd_TreeNode.hxx".}
proc HasNext*(this: TDataStd_TreeNode): Standard_Boolean {.noSideEffect,
    importcpp: "HasNext", header: "TDataStd_TreeNode.hxx".}
proc Next*(this: TDataStd_TreeNode): handle[TDataStd_TreeNode] {.noSideEffect,
    importcpp: "Next", header: "TDataStd_TreeNode.hxx".}
proc HasPrevious*(this: TDataStd_TreeNode): Standard_Boolean {.noSideEffect,
    importcpp: "HasPrevious", header: "TDataStd_TreeNode.hxx".}
proc Previous*(this: TDataStd_TreeNode): handle[TDataStd_TreeNode] {.noSideEffect,
    importcpp: "Previous", header: "TDataStd_TreeNode.hxx".}
proc HasFirst*(this: TDataStd_TreeNode): Standard_Boolean {.noSideEffect,
    importcpp: "HasFirst", header: "TDataStd_TreeNode.hxx".}
proc First*(this: TDataStd_TreeNode): handle[TDataStd_TreeNode] {.noSideEffect,
    importcpp: "First", header: "TDataStd_TreeNode.hxx".}
proc HasLast*(this: TDataStd_TreeNode): Standard_Boolean {.noSideEffect,
    importcpp: "HasLast", header: "TDataStd_TreeNode.hxx".}
proc Last*(this: var TDataStd_TreeNode): handle[TDataStd_TreeNode] {.
    importcpp: "Last", header: "TDataStd_TreeNode.hxx".}
proc FindLast*(this: var TDataStd_TreeNode): handle[TDataStd_TreeNode] {.
    importcpp: "FindLast", header: "TDataStd_TreeNode.hxx".}
proc SetTreeID*(this: var TDataStd_TreeNode; explicitID: Standard_GUID) {.
    importcpp: "SetTreeID", header: "TDataStd_TreeNode.hxx".}
proc SetFather*(this: var TDataStd_TreeNode; F: handle[TDataStd_TreeNode]) {.
    importcpp: "SetFather", header: "TDataStd_TreeNode.hxx".}
proc SetNext*(this: var TDataStd_TreeNode; F: handle[TDataStd_TreeNode]) {.
    importcpp: "SetNext", header: "TDataStd_TreeNode.hxx".}
proc SetPrevious*(this: var TDataStd_TreeNode; F: handle[TDataStd_TreeNode]) {.
    importcpp: "SetPrevious", header: "TDataStd_TreeNode.hxx".}
proc SetFirst*(this: var TDataStd_TreeNode; F: handle[TDataStd_TreeNode]) {.
    importcpp: "SetFirst", header: "TDataStd_TreeNode.hxx".}
proc SetLast*(this: var TDataStd_TreeNode; F: handle[TDataStd_TreeNode]) {.
    importcpp: "SetLast", header: "TDataStd_TreeNode.hxx".}
proc AfterAddition*(this: var TDataStd_TreeNode) {.importcpp: "AfterAddition",
    header: "TDataStd_TreeNode.hxx".}
proc BeforeForget*(this: var TDataStd_TreeNode) {.importcpp: "BeforeForget",
    header: "TDataStd_TreeNode.hxx".}
proc AfterResume*(this: var TDataStd_TreeNode) {.importcpp: "AfterResume",
    header: "TDataStd_TreeNode.hxx".}
proc BeforeUndo*(this: var TDataStd_TreeNode;
                anAttDelta: handle[TDF_AttributeDelta];
                forceIt: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "BeforeUndo", header: "TDataStd_TreeNode.hxx".}
proc AfterUndo*(this: var TDataStd_TreeNode; anAttDelta: handle[TDF_AttributeDelta];
               forceIt: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "AfterUndo", header: "TDataStd_TreeNode.hxx".}
proc ID*(this: TDataStd_TreeNode): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_TreeNode.hxx".}
proc Restore*(this: var TDataStd_TreeNode; with: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_TreeNode.hxx".}
proc Paste*(this: TDataStd_TreeNode; into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_TreeNode.hxx".}
proc NewEmpty*(this: TDataStd_TreeNode): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_TreeNode.hxx".}
proc References*(this: TDataStd_TreeNode; aDataSet: handle[TDF_DataSet]) {.
    noSideEffect, importcpp: "References", header: "TDataStd_TreeNode.hxx".}
proc Dump*(this: TDataStd_TreeNode; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_TreeNode.hxx".}
proc DumpJson*(this: TDataStd_TreeNode; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TDataStd_TreeNode.hxx".}
type
  TDataStd_TreeNodebase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TDataStd_TreeNode::get_type_name(@)",
                              header: "TDataStd_TreeNode.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDataStd_TreeNode::get_type_descriptor(@)",
    header: "TDataStd_TreeNode.hxx".}
proc DynamicType*(this: TDataStd_TreeNode): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataStd_TreeNode.hxx".}