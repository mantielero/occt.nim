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

discard "forward decl of TDF_Label"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_DataSet"
discard "forward decl of XCAFDoc_GraphNode"
discard "forward decl of XCAFDoc_GraphNode"
type
  HandleC1C1* = Handle[XCAFDocGraphNode]

## ! This attribute allow user multirelation tree of labels.
## ! This GraphNode is experimental Graph that not control looping and redundance.
## ! Attribute containg sequence of father's and child's labels.
## ! Provide create and work with Graph in XCAFDocument.

type
  XCAFDocGraphNode* {.importcpp: "XCAFDoc_GraphNode",
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


proc find*(L: TDF_Label; g: var Handle[XCAFDocGraphNode]): bool {.
    importcpp: "XCAFDoc_GraphNode::Find(@)", header: "XCAFDoc_GraphNode.hxx".}
proc set*(L: TDF_Label): Handle[XCAFDocGraphNode] {.
    importcpp: "XCAFDoc_GraphNode::Set(@)", header: "XCAFDoc_GraphNode.hxx".}
proc set*(L: TDF_Label; explicitGraphID: StandardGUID): Handle[XCAFDocGraphNode] {.
    importcpp: "XCAFDoc_GraphNode::Set(@)", header: "XCAFDoc_GraphNode.hxx".}
proc getDefaultGraphID*(): StandardGUID {.importcpp: "XCAFDoc_GraphNode::GetDefaultGraphID(@)",
                                       header: "XCAFDoc_GraphNode.hxx".}
proc constructXCAFDocGraphNode*(): XCAFDocGraphNode {.constructor,
    importcpp: "XCAFDoc_GraphNode(@)", header: "XCAFDoc_GraphNode.hxx".}
proc setGraphID*(this: var XCAFDocGraphNode; explicitID: StandardGUID) {.
    importcpp: "SetGraphID", header: "XCAFDoc_GraphNode.hxx".}
proc setFather*(this: var XCAFDocGraphNode; f: Handle[XCAFDocGraphNode]): cint {.
    importcpp: "SetFather", header: "XCAFDoc_GraphNode.hxx".}
proc setChild*(this: var XCAFDocGraphNode; ch: Handle[XCAFDocGraphNode]): cint {.
    importcpp: "SetChild", header: "XCAFDoc_GraphNode.hxx".}
proc unSetFather*(this: var XCAFDocGraphNode; f: Handle[XCAFDocGraphNode]) {.
    importcpp: "UnSetFather", header: "XCAFDoc_GraphNode.hxx".}
proc unSetFather*(this: var XCAFDocGraphNode; findex: cint) {.
    importcpp: "UnSetFather", header: "XCAFDoc_GraphNode.hxx".}
proc unSetChild*(this: var XCAFDocGraphNode; ch: Handle[XCAFDocGraphNode]) {.
    importcpp: "UnSetChild", header: "XCAFDoc_GraphNode.hxx".}
proc unSetChild*(this: var XCAFDocGraphNode; chindex: cint) {.importcpp: "UnSetChild",
    header: "XCAFDoc_GraphNode.hxx".}
proc getFather*(this: XCAFDocGraphNode; findex: cint): Handle[XCAFDocGraphNode] {.
    noSideEffect, importcpp: "GetFather", header: "XCAFDoc_GraphNode.hxx".}
proc getChild*(this: XCAFDocGraphNode; chindex: cint): Handle[XCAFDocGraphNode] {.
    noSideEffect, importcpp: "GetChild", header: "XCAFDoc_GraphNode.hxx".}
proc fatherIndex*(this: XCAFDocGraphNode; f: Handle[XCAFDocGraphNode]): cint {.
    noSideEffect, importcpp: "FatherIndex", header: "XCAFDoc_GraphNode.hxx".}
proc childIndex*(this: XCAFDocGraphNode; ch: Handle[XCAFDocGraphNode]): cint {.
    noSideEffect, importcpp: "ChildIndex", header: "XCAFDoc_GraphNode.hxx".}
proc isFather*(this: XCAFDocGraphNode; ch: Handle[XCAFDocGraphNode]): bool {.
    noSideEffect, importcpp: "IsFather", header: "XCAFDoc_GraphNode.hxx".}
proc isChild*(this: XCAFDocGraphNode; f: Handle[XCAFDocGraphNode]): bool {.
    noSideEffect, importcpp: "IsChild", header: "XCAFDoc_GraphNode.hxx".}
proc nbFathers*(this: XCAFDocGraphNode): cint {.noSideEffect, importcpp: "NbFathers",
    header: "XCAFDoc_GraphNode.hxx".}
proc nbChildren*(this: XCAFDocGraphNode): cint {.noSideEffect,
    importcpp: "NbChildren", header: "XCAFDoc_GraphNode.hxx".}
proc id*(this: XCAFDocGraphNode): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_GraphNode.hxx".}
proc restore*(this: var XCAFDocGraphNode; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "XCAFDoc_GraphNode.hxx".}
proc paste*(this: XCAFDocGraphNode; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "XCAFDoc_GraphNode.hxx".}
proc newEmpty*(this: XCAFDocGraphNode): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "XCAFDoc_GraphNode.hxx".}
proc references*(this: XCAFDocGraphNode; aDataSet: Handle[TDF_DataSet]) {.
    noSideEffect, importcpp: "References", header: "XCAFDoc_GraphNode.hxx".}
proc dump*(this: XCAFDocGraphNode; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "XCAFDoc_GraphNode.hxx".}
proc beforeForget*(this: var XCAFDocGraphNode) {.importcpp: "BeforeForget",
    header: "XCAFDoc_GraphNode.hxx".}
proc dumpJson*(this: XCAFDocGraphNode; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "XCAFDoc_GraphNode.hxx".}
type
  XCAFDocGraphNodebaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "XCAFDoc_GraphNode::get_type_name(@)",
                            header: "XCAFDoc_GraphNode.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XCAFDoc_GraphNode::get_type_descriptor(@)",
    header: "XCAFDoc_GraphNode.hxx".}
proc dynamicType*(this: XCAFDocGraphNode): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "XCAFDoc_GraphNode.hxx".}

























