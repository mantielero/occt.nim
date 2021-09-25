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
  HandleTDataStdTreeNode* = Handle[TDataStdTreeNode]

## ! Allows you to define an explicit tree of labels
## ! which you can also edit.
## ! Without this class, the data structure cannot be fully edited.
## ! This service is required if for presentation
## ! purposes, you want to create an application with
## ! a tree which allows you to organize and link data
## ! as a function of application features.

type
  TDataStdTreeNode* {.importcpp: "TDataStd_TreeNode",
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


proc find*(L: TDF_Label; t: var Handle[TDataStdTreeNode]): bool {.
    importcpp: "TDataStd_TreeNode::Find(@)", header: "TDataStd_TreeNode.hxx".}
proc set*(L: TDF_Label): Handle[TDataStdTreeNode] {.
    importcpp: "TDataStd_TreeNode::Set(@)", header: "TDataStd_TreeNode.hxx".}
proc set*(L: TDF_Label; explicitTreeID: StandardGUID): Handle[TDataStdTreeNode] {.
    importcpp: "TDataStd_TreeNode::Set(@)", header: "TDataStd_TreeNode.hxx".}
proc getDefaultTreeID*(): StandardGUID {.importcpp: "TDataStd_TreeNode::GetDefaultTreeID(@)",
                                      header: "TDataStd_TreeNode.hxx".}
proc constructTDataStdTreeNode*(): TDataStdTreeNode {.constructor,
    importcpp: "TDataStd_TreeNode(@)", header: "TDataStd_TreeNode.hxx".}
proc append*(this: var TDataStdTreeNode; child: Handle[TDataStdTreeNode]): bool {.
    importcpp: "Append", header: "TDataStd_TreeNode.hxx".}
proc prepend*(this: var TDataStdTreeNode; child: Handle[TDataStdTreeNode]): bool {.
    importcpp: "Prepend", header: "TDataStd_TreeNode.hxx".}
proc insertBefore*(this: var TDataStdTreeNode; node: Handle[TDataStdTreeNode]): bool {.
    importcpp: "InsertBefore", header: "TDataStd_TreeNode.hxx".}
proc insertAfter*(this: var TDataStdTreeNode; node: Handle[TDataStdTreeNode]): bool {.
    importcpp: "InsertAfter", header: "TDataStd_TreeNode.hxx".}
proc remove*(this: var TDataStdTreeNode): bool {.importcpp: "Remove",
    header: "TDataStd_TreeNode.hxx".}
proc depth*(this: TDataStdTreeNode): int {.noSideEffect, importcpp: "Depth",
                                       header: "TDataStd_TreeNode.hxx".}
proc nbChildren*(this: TDataStdTreeNode; allLevels: bool = false): int {.noSideEffect,
    importcpp: "NbChildren", header: "TDataStd_TreeNode.hxx".}
proc isAscendant*(this: TDataStdTreeNode; `of`: Handle[TDataStdTreeNode]): bool {.
    noSideEffect, importcpp: "IsAscendant", header: "TDataStd_TreeNode.hxx".}
proc isDescendant*(this: TDataStdTreeNode; `of`: Handle[TDataStdTreeNode]): bool {.
    noSideEffect, importcpp: "IsDescendant", header: "TDataStd_TreeNode.hxx".}
proc isRoot*(this: TDataStdTreeNode): bool {.noSideEffect, importcpp: "IsRoot",
    header: "TDataStd_TreeNode.hxx".}
proc root*(this: TDataStdTreeNode): Handle[TDataStdTreeNode] {.noSideEffect,
    importcpp: "Root", header: "TDataStd_TreeNode.hxx".}
proc isFather*(this: TDataStdTreeNode; `of`: Handle[TDataStdTreeNode]): bool {.
    noSideEffect, importcpp: "IsFather", header: "TDataStd_TreeNode.hxx".}
proc isChild*(this: TDataStdTreeNode; `of`: Handle[TDataStdTreeNode]): bool {.
    noSideEffect, importcpp: "IsChild", header: "TDataStd_TreeNode.hxx".}
proc hasFather*(this: TDataStdTreeNode): bool {.noSideEffect, importcpp: "HasFather",
    header: "TDataStd_TreeNode.hxx".}
proc father*(this: TDataStdTreeNode): Handle[TDataStdTreeNode] {.noSideEffect,
    importcpp: "Father", header: "TDataStd_TreeNode.hxx".}
proc hasNext*(this: TDataStdTreeNode): bool {.noSideEffect, importcpp: "HasNext",
    header: "TDataStd_TreeNode.hxx".}
proc next*(this: TDataStdTreeNode): Handle[TDataStdTreeNode] {.noSideEffect,
    importcpp: "Next", header: "TDataStd_TreeNode.hxx".}
proc hasPrevious*(this: TDataStdTreeNode): bool {.noSideEffect,
    importcpp: "HasPrevious", header: "TDataStd_TreeNode.hxx".}
proc previous*(this: TDataStdTreeNode): Handle[TDataStdTreeNode] {.noSideEffect,
    importcpp: "Previous", header: "TDataStd_TreeNode.hxx".}
proc hasFirst*(this: TDataStdTreeNode): bool {.noSideEffect, importcpp: "HasFirst",
    header: "TDataStd_TreeNode.hxx".}
proc first*(this: TDataStdTreeNode): Handle[TDataStdTreeNode] {.noSideEffect,
    importcpp: "First", header: "TDataStd_TreeNode.hxx".}
proc hasLast*(this: TDataStdTreeNode): bool {.noSideEffect, importcpp: "HasLast",
    header: "TDataStd_TreeNode.hxx".}
proc last*(this: var TDataStdTreeNode): Handle[TDataStdTreeNode] {.importcpp: "Last",
    header: "TDataStd_TreeNode.hxx".}
proc findLast*(this: var TDataStdTreeNode): Handle[TDataStdTreeNode] {.
    importcpp: "FindLast", header: "TDataStd_TreeNode.hxx".}
proc setTreeID*(this: var TDataStdTreeNode; explicitID: StandardGUID) {.
    importcpp: "SetTreeID", header: "TDataStd_TreeNode.hxx".}
proc setFather*(this: var TDataStdTreeNode; f: Handle[TDataStdTreeNode]) {.
    importcpp: "SetFather", header: "TDataStd_TreeNode.hxx".}
proc setNext*(this: var TDataStdTreeNode; f: Handle[TDataStdTreeNode]) {.
    importcpp: "SetNext", header: "TDataStd_TreeNode.hxx".}
proc setPrevious*(this: var TDataStdTreeNode; f: Handle[TDataStdTreeNode]) {.
    importcpp: "SetPrevious", header: "TDataStd_TreeNode.hxx".}
proc setFirst*(this: var TDataStdTreeNode; f: Handle[TDataStdTreeNode]) {.
    importcpp: "SetFirst", header: "TDataStd_TreeNode.hxx".}
proc setLast*(this: var TDataStdTreeNode; f: Handle[TDataStdTreeNode]) {.
    importcpp: "SetLast", header: "TDataStd_TreeNode.hxx".}
proc afterAddition*(this: var TDataStdTreeNode) {.importcpp: "AfterAddition",
    header: "TDataStd_TreeNode.hxx".}
proc beforeForget*(this: var TDataStdTreeNode) {.importcpp: "BeforeForget",
    header: "TDataStd_TreeNode.hxx".}
proc afterResume*(this: var TDataStdTreeNode) {.importcpp: "AfterResume",
    header: "TDataStd_TreeNode.hxx".}
proc beforeUndo*(this: var TDataStdTreeNode; anAttDelta: Handle[TDF_AttributeDelta];
                forceIt: bool = false): bool {.importcpp: "BeforeUndo",
    header: "TDataStd_TreeNode.hxx".}
proc afterUndo*(this: var TDataStdTreeNode; anAttDelta: Handle[TDF_AttributeDelta];
               forceIt: bool = false): bool {.importcpp: "AfterUndo",
    header: "TDataStd_TreeNode.hxx".}
proc id*(this: TDataStdTreeNode): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_TreeNode.hxx".}
proc restore*(this: var TDataStdTreeNode; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_TreeNode.hxx".}
proc paste*(this: TDataStdTreeNode; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_TreeNode.hxx".}
proc newEmpty*(this: TDataStdTreeNode): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_TreeNode.hxx".}
proc references*(this: TDataStdTreeNode; aDataSet: Handle[TDF_DataSet]) {.
    noSideEffect, importcpp: "References", header: "TDataStd_TreeNode.hxx".}
proc dump*(this: TDataStdTreeNode; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_TreeNode.hxx".}
proc dumpJson*(this: TDataStdTreeNode; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "TDataStd_TreeNode.hxx".}
type
  TDataStdTreeNodebaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TDataStd_TreeNode::get_type_name(@)",
                            header: "TDataStd_TreeNode.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDataStd_TreeNode::get_type_descriptor(@)",
    header: "TDataStd_TreeNode.hxx".}
proc dynamicType*(this: TDataStdTreeNode): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataStd_TreeNode.hxx".}
