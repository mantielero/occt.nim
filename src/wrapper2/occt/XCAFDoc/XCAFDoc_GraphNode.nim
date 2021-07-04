##  Created on: 2000-09-27
##  Created by: Pavel TELKOV.
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, XCAFDoc_GraphNodeSequence,
  ../Standard/Standard_GUID, ../TDF/TDF_Attribute, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../Standard/Standard_OStream

discard "forward decl of TDF_Label"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_DataSet"
discard "forward decl of XCAFDoc_GraphNode"
discard "forward decl of XCAFDoc_GraphNode"
type
  Handle_XCAFDoc_GraphNode* = handle[XCAFDoc_GraphNode]

## ! This attribute allow user multirelation tree of labels.
## ! This GraphNode is experimental Graph that not control looping and redundance.
## ! Attribute containg sequence of father's and child's labels.
## ! Provide create and work with Graph in XCAFDocument.

type
  XCAFDoc_GraphNode* {.importcpp: "XCAFDoc_GraphNode",
                      header: "XCAFDoc_GraphNode.hxx", bycopy.} = object of TDF_Attribute ##
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
                                                                                   ## Shortcut
                                                                                   ## to
                                                                                   ## search
                                                                                   ## a
                                                                                   ## Graph
                                                                                   ## node
                                                                                   ## attribute
                                                                                   ## with
                                                                                   ## default
                                                                                   ##
                                                                                   ## !
                                                                                   ## GraphID.
                                                                                   ## Returns
                                                                                   ## true
                                                                                   ## if
                                                                                   ## found.
                                                                                   ##
                                                                                   ## !
                                                                                   ## remove
                                                                                   ## link
                                                                                   ## between
                                                                                   ## father
                                                                                   ## and
                                                                                   ## child.


proc Find*(L: TDF_Label; G: var handle[XCAFDoc_GraphNode]): Standard_Boolean {.
    importcpp: "XCAFDoc_GraphNode::Find(@)", header: "XCAFDoc_GraphNode.hxx".}
proc Set*(L: TDF_Label): handle[XCAFDoc_GraphNode] {.
    importcpp: "XCAFDoc_GraphNode::Set(@)", header: "XCAFDoc_GraphNode.hxx".}
proc Set*(L: TDF_Label; ExplicitGraphID: Standard_GUID): handle[XCAFDoc_GraphNode] {.
    importcpp: "XCAFDoc_GraphNode::Set(@)", header: "XCAFDoc_GraphNode.hxx".}
proc GetDefaultGraphID*(): Standard_GUID {.importcpp: "XCAFDoc_GraphNode::GetDefaultGraphID(@)",
                                        header: "XCAFDoc_GraphNode.hxx".}
proc constructXCAFDoc_GraphNode*(): XCAFDoc_GraphNode {.constructor,
    importcpp: "XCAFDoc_GraphNode(@)", header: "XCAFDoc_GraphNode.hxx".}
proc SetGraphID*(this: var XCAFDoc_GraphNode; explicitID: Standard_GUID) {.
    importcpp: "SetGraphID", header: "XCAFDoc_GraphNode.hxx".}
proc SetFather*(this: var XCAFDoc_GraphNode; F: handle[XCAFDoc_GraphNode]): Standard_Integer {.
    importcpp: "SetFather", header: "XCAFDoc_GraphNode.hxx".}
proc SetChild*(this: var XCAFDoc_GraphNode; Ch: handle[XCAFDoc_GraphNode]): Standard_Integer {.
    importcpp: "SetChild", header: "XCAFDoc_GraphNode.hxx".}
proc UnSetFather*(this: var XCAFDoc_GraphNode; F: handle[XCAFDoc_GraphNode]) {.
    importcpp: "UnSetFather", header: "XCAFDoc_GraphNode.hxx".}
proc UnSetFather*(this: var XCAFDoc_GraphNode; Findex: Standard_Integer) {.
    importcpp: "UnSetFather", header: "XCAFDoc_GraphNode.hxx".}
proc UnSetChild*(this: var XCAFDoc_GraphNode; Ch: handle[XCAFDoc_GraphNode]) {.
    importcpp: "UnSetChild", header: "XCAFDoc_GraphNode.hxx".}
proc UnSetChild*(this: var XCAFDoc_GraphNode; Chindex: Standard_Integer) {.
    importcpp: "UnSetChild", header: "XCAFDoc_GraphNode.hxx".}
proc GetFather*(this: XCAFDoc_GraphNode; Findex: Standard_Integer): handle[
    XCAFDoc_GraphNode] {.noSideEffect, importcpp: "GetFather",
                        header: "XCAFDoc_GraphNode.hxx".}
proc GetChild*(this: XCAFDoc_GraphNode; Chindex: Standard_Integer): handle[
    XCAFDoc_GraphNode] {.noSideEffect, importcpp: "GetChild",
                        header: "XCAFDoc_GraphNode.hxx".}
proc FatherIndex*(this: XCAFDoc_GraphNode; F: handle[XCAFDoc_GraphNode]): Standard_Integer {.
    noSideEffect, importcpp: "FatherIndex", header: "XCAFDoc_GraphNode.hxx".}
proc ChildIndex*(this: XCAFDoc_GraphNode; Ch: handle[XCAFDoc_GraphNode]): Standard_Integer {.
    noSideEffect, importcpp: "ChildIndex", header: "XCAFDoc_GraphNode.hxx".}
proc IsFather*(this: XCAFDoc_GraphNode; Ch: handle[XCAFDoc_GraphNode]): Standard_Boolean {.
    noSideEffect, importcpp: "IsFather", header: "XCAFDoc_GraphNode.hxx".}
proc IsChild*(this: XCAFDoc_GraphNode; F: handle[XCAFDoc_GraphNode]): Standard_Boolean {.
    noSideEffect, importcpp: "IsChild", header: "XCAFDoc_GraphNode.hxx".}
proc NbFathers*(this: XCAFDoc_GraphNode): Standard_Integer {.noSideEffect,
    importcpp: "NbFathers", header: "XCAFDoc_GraphNode.hxx".}
proc NbChildren*(this: XCAFDoc_GraphNode): Standard_Integer {.noSideEffect,
    importcpp: "NbChildren", header: "XCAFDoc_GraphNode.hxx".}
proc ID*(this: XCAFDoc_GraphNode): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_GraphNode.hxx".}
proc Restore*(this: var XCAFDoc_GraphNode; with: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "XCAFDoc_GraphNode.hxx".}
proc Paste*(this: XCAFDoc_GraphNode; into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "XCAFDoc_GraphNode.hxx".}
proc NewEmpty*(this: XCAFDoc_GraphNode): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "XCAFDoc_GraphNode.hxx".}
proc References*(this: XCAFDoc_GraphNode; aDataSet: handle[TDF_DataSet]) {.
    noSideEffect, importcpp: "References", header: "XCAFDoc_GraphNode.hxx".}
proc Dump*(this: XCAFDoc_GraphNode; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "XCAFDoc_GraphNode.hxx".}
proc BeforeForget*(this: var XCAFDoc_GraphNode) {.importcpp: "BeforeForget",
    header: "XCAFDoc_GraphNode.hxx".}
proc DumpJson*(this: XCAFDoc_GraphNode; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "XCAFDoc_GraphNode.hxx".}
type
  XCAFDoc_GraphNodebase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "XCAFDoc_GraphNode::get_type_name(@)",
                              header: "XCAFDoc_GraphNode.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XCAFDoc_GraphNode::get_type_descriptor(@)",
    header: "XCAFDoc_GraphNode.hxx".}
proc DynamicType*(this: XCAFDoc_GraphNode): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "XCAFDoc_GraphNode.hxx".}