#import ../stepcafcontrol/stepcafcontrol_types
import tdatastd_types
import ../standard/standard_types
import ../tdf/tdf_types


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





proc find*(L: TDF_Label; t: var Handle[TDataStdTreeNode]): bool {.cdecl,
    importcpp: "TDataStd_TreeNode::Find(@)", header: "TDataStd_TreeNode.hxx".}
proc set*(L: TDF_Label): Handle[TDataStdTreeNode] {.cdecl,
    importcpp: "TDataStd_TreeNode::Set(@)", header: "TDataStd_TreeNode.hxx".}
proc set*(L: TDF_Label; explicitTreeID: StandardGUID): Handle[TDataStdTreeNode] {.
    cdecl, importcpp: "TDataStd_TreeNode::Set(@)", header: "TDataStd_TreeNode.hxx".}
proc getDefaultTreeID*(): StandardGUID {.cdecl, importcpp: "TDataStd_TreeNode::GetDefaultTreeID(@)",
                                      header: "TDataStd_TreeNode.hxx".}
proc newTDataStdTreeNode*(): TDataStdTreeNode {.cdecl, constructor,
    importcpp: "TDataStd_TreeNode(@)", header: "TDataStd_TreeNode.hxx".}
proc append*(this: var TDataStdTreeNode; child: Handle[TDataStdTreeNode]): bool {.
    cdecl, importcpp: "Append", header: "TDataStd_TreeNode.hxx".}
proc prepend*(this: var TDataStdTreeNode; child: Handle[TDataStdTreeNode]): bool {.
    cdecl, importcpp: "Prepend", header: "TDataStd_TreeNode.hxx".}
proc insertBefore*(this: var TDataStdTreeNode; node: Handle[TDataStdTreeNode]): bool {.
    cdecl, importcpp: "InsertBefore", header: "TDataStd_TreeNode.hxx".}
proc insertAfter*(this: var TDataStdTreeNode; node: Handle[TDataStdTreeNode]): bool {.
    cdecl, importcpp: "InsertAfter", header: "TDataStd_TreeNode.hxx".}
proc remove*(this: var TDataStdTreeNode): bool {.cdecl, importcpp: "Remove",
    header: "TDataStd_TreeNode.hxx".}
proc depth*(this: TDataStdTreeNode): cint {.noSideEffect, cdecl, importcpp: "Depth",
                                        header: "TDataStd_TreeNode.hxx".}
proc nbChildren*(this: TDataStdTreeNode; allLevels: bool = false): cint {.noSideEffect,
    cdecl, importcpp: "NbChildren", header: "TDataStd_TreeNode.hxx".}
proc isAscendant*(this: TDataStdTreeNode; `of`: Handle[TDataStdTreeNode]): bool {.
    noSideEffect, cdecl, importcpp: "IsAscendant", header: "TDataStd_TreeNode.hxx".}
proc isDescendant*(this: TDataStdTreeNode; `of`: Handle[TDataStdTreeNode]): bool {.
    noSideEffect, cdecl, importcpp: "IsDescendant", header: "TDataStd_TreeNode.hxx".}
proc isRoot*(this: TDataStdTreeNode): bool {.noSideEffect, cdecl, importcpp: "IsRoot",
    header: "TDataStd_TreeNode.hxx".}
proc root*(this: TDataStdTreeNode): Handle[TDataStdTreeNode] {.noSideEffect, cdecl,
    importcpp: "Root", header: "TDataStd_TreeNode.hxx".}
proc isFather*(this: TDataStdTreeNode; `of`: Handle[TDataStdTreeNode]): bool {.
    noSideEffect, cdecl, importcpp: "IsFather", header: "TDataStd_TreeNode.hxx".}
proc isChild*(this: TDataStdTreeNode; `of`: Handle[TDataStdTreeNode]): bool {.
    noSideEffect, cdecl, importcpp: "IsChild", header: "TDataStd_TreeNode.hxx".}
proc hasFather*(this: TDataStdTreeNode): bool {.noSideEffect, cdecl,
    importcpp: "HasFather", header: "TDataStd_TreeNode.hxx".}
proc father*(this: TDataStdTreeNode): Handle[TDataStdTreeNode] {.noSideEffect, cdecl,
    importcpp: "Father", header: "TDataStd_TreeNode.hxx".}
proc hasNext*(this: TDataStdTreeNode): bool {.noSideEffect, cdecl,
    importcpp: "HasNext", header: "TDataStd_TreeNode.hxx".}
proc next*(this: TDataStdTreeNode): Handle[TDataStdTreeNode] {.noSideEffect, cdecl,
    importcpp: "Next", header: "TDataStd_TreeNode.hxx".}
proc hasPrevious*(this: TDataStdTreeNode): bool {.noSideEffect, cdecl,
    importcpp: "HasPrevious", header: "TDataStd_TreeNode.hxx".}
proc previous*(this: TDataStdTreeNode): Handle[TDataStdTreeNode] {.noSideEffect,
    cdecl, importcpp: "Previous", header: "TDataStd_TreeNode.hxx".}
proc hasFirst*(this: TDataStdTreeNode): bool {.noSideEffect, cdecl,
    importcpp: "HasFirst", header: "TDataStd_TreeNode.hxx".}
proc first*(this: TDataStdTreeNode): Handle[TDataStdTreeNode] {.noSideEffect, cdecl,
    importcpp: "First", header: "TDataStd_TreeNode.hxx".}
proc hasLast*(this: TDataStdTreeNode): bool {.noSideEffect, cdecl,
    importcpp: "HasLast", header: "TDataStd_TreeNode.hxx".}
proc last*(this: var TDataStdTreeNode): Handle[TDataStdTreeNode] {.cdecl,
    importcpp: "Last", header: "TDataStd_TreeNode.hxx".}
proc findLast*(this: var TDataStdTreeNode): Handle[TDataStdTreeNode] {.cdecl,
    importcpp: "FindLast", header: "TDataStd_TreeNode.hxx".}
proc setTreeID*(this: var TDataStdTreeNode; explicitID: StandardGUID) {.cdecl,
    importcpp: "SetTreeID", header: "TDataStd_TreeNode.hxx".}
proc setFather*(this: var TDataStdTreeNode; f: Handle[TDataStdTreeNode]) {.cdecl,
    importcpp: "SetFather", header: "TDataStd_TreeNode.hxx".}
proc setNext*(this: var TDataStdTreeNode; f: Handle[TDataStdTreeNode]) {.cdecl,
    importcpp: "SetNext", header: "TDataStd_TreeNode.hxx".}
proc setPrevious*(this: var TDataStdTreeNode; f: Handle[TDataStdTreeNode]) {.cdecl,
    importcpp: "SetPrevious", header: "TDataStd_TreeNode.hxx".}
proc setFirst*(this: var TDataStdTreeNode; f: Handle[TDataStdTreeNode]) {.cdecl,
    importcpp: "SetFirst", header: "TDataStd_TreeNode.hxx".}
proc setLast*(this: var TDataStdTreeNode; f: Handle[TDataStdTreeNode]) {.cdecl,
    importcpp: "SetLast", header: "TDataStd_TreeNode.hxx".}
proc afterAddition*(this: var TDataStdTreeNode) {.cdecl, importcpp: "AfterAddition",
    header: "TDataStd_TreeNode.hxx".}
proc beforeForget*(this: var TDataStdTreeNode) {.cdecl, importcpp: "BeforeForget",
    header: "TDataStd_TreeNode.hxx".}
proc afterResume*(this: var TDataStdTreeNode) {.cdecl, importcpp: "AfterResume",
    header: "TDataStd_TreeNode.hxx".}
proc beforeUndo*(this: var TDataStdTreeNode; anAttDelta: Handle[TDF_AttributeDelta];
                forceIt: bool = false): bool {.cdecl, importcpp: "BeforeUndo",
    header: "TDataStd_TreeNode.hxx".}
proc afterUndo*(this: var TDataStdTreeNode; anAttDelta: Handle[TDF_AttributeDelta];
               forceIt: bool = false): bool {.cdecl, importcpp: "AfterUndo",
    header: "TDataStd_TreeNode.hxx".}
proc id*(this: TDataStdTreeNode): StandardGUID {.noSideEffect, cdecl, importcpp: "ID",
    header: "TDataStd_TreeNode.hxx".}
proc restore*(this: var TDataStdTreeNode; with: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "TDataStd_TreeNode.hxx".}
proc paste*(this: TDataStdTreeNode; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "TDataStd_TreeNode.hxx".}
proc newEmpty*(this: TDataStdTreeNode): Handle[TDF_Attribute] {.noSideEffect, cdecl,
    importcpp: "NewEmpty", header: "TDataStd_TreeNode.hxx".}
proc references*(this: TDataStdTreeNode; aDataSet: Handle[TDF_DataSet]) {.
    noSideEffect, cdecl, importcpp: "References", header: "TDataStd_TreeNode.hxx".}
proc dump*(this: TDataStdTreeNode; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "TDataStd_TreeNode.hxx".}
proc dumpJson*(this: TDataStdTreeNode; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "TDataStd_TreeNode.hxx".}

