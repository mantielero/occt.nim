import ../tdf/tdf_types
import xcafdoc_types
import ../standard/standard_types



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





proc find*(L: TDF_Label; g: var Handle[XCAFDocGraphNode]): bool {.cdecl,
    importcpp: "XCAFDoc_GraphNode::Find(@)", header: "XCAFDoc_GraphNode.hxx".}
proc set*(L: TDF_Label): Handle[XCAFDocGraphNode] {.cdecl,
    importcpp: "XCAFDoc_GraphNode::Set(@)", header: "XCAFDoc_GraphNode.hxx".}
proc set*(L: TDF_Label; explicitGraphID: StandardGUID): Handle[XCAFDocGraphNode] {.
    cdecl, importcpp: "XCAFDoc_GraphNode::Set(@)", header: "XCAFDoc_GraphNode.hxx".}
proc getDefaultGraphID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc_GraphNode::GetDefaultGraphID(@)",
                                       header: "XCAFDoc_GraphNode.hxx".}
proc newXCAFDocGraphNode*(): XCAFDocGraphNode {.cdecl, constructor,
    importcpp: "XCAFDoc_GraphNode(@)", header: "XCAFDoc_GraphNode.hxx".}
proc setGraphID*(this: var XCAFDocGraphNode; explicitID: StandardGUID) {.cdecl,
    importcpp: "SetGraphID", header: "XCAFDoc_GraphNode.hxx".}
proc setFather*(this: var XCAFDocGraphNode; f: Handle[XCAFDocGraphNode]): cint {.cdecl,
    importcpp: "SetFather", header: "XCAFDoc_GraphNode.hxx".}
proc setChild*(this: var XCAFDocGraphNode; ch: Handle[XCAFDocGraphNode]): cint {.cdecl,
    importcpp: "SetChild", header: "XCAFDoc_GraphNode.hxx".}
proc unSetFather*(this: var XCAFDocGraphNode; f: Handle[XCAFDocGraphNode]) {.cdecl,
    importcpp: "UnSetFather", header: "XCAFDoc_GraphNode.hxx".}
proc unSetFather*(this: var XCAFDocGraphNode; findex: cint) {.cdecl,
    importcpp: "UnSetFather", header: "XCAFDoc_GraphNode.hxx".}
proc unSetChild*(this: var XCAFDocGraphNode; ch: Handle[XCAFDocGraphNode]) {.cdecl,
    importcpp: "UnSetChild", header: "XCAFDoc_GraphNode.hxx".}
proc unSetChild*(this: var XCAFDocGraphNode; chindex: cint) {.cdecl,
    importcpp: "UnSetChild", header: "XCAFDoc_GraphNode.hxx".}
proc getFather*(this: XCAFDocGraphNode; findex: cint): Handle[XCAFDocGraphNode] {.
    noSideEffect, cdecl, importcpp: "GetFather", header: "XCAFDoc_GraphNode.hxx".}
proc getChild*(this: XCAFDocGraphNode; chindex: cint): Handle[XCAFDocGraphNode] {.
    noSideEffect, cdecl, importcpp: "GetChild", header: "XCAFDoc_GraphNode.hxx".}
proc fatherIndex*(this: XCAFDocGraphNode; f: Handle[XCAFDocGraphNode]): cint {.
    noSideEffect, cdecl, importcpp: "FatherIndex", header: "XCAFDoc_GraphNode.hxx".}
proc childIndex*(this: XCAFDocGraphNode; ch: Handle[XCAFDocGraphNode]): cint {.
    noSideEffect, cdecl, importcpp: "ChildIndex", header: "XCAFDoc_GraphNode.hxx".}
proc isFather*(this: XCAFDocGraphNode; ch: Handle[XCAFDocGraphNode]): bool {.
    noSideEffect, cdecl, importcpp: "IsFather", header: "XCAFDoc_GraphNode.hxx".}
proc isChild*(this: XCAFDocGraphNode; f: Handle[XCAFDocGraphNode]): bool {.
    noSideEffect, cdecl, importcpp: "IsChild", header: "XCAFDoc_GraphNode.hxx".}
proc nbFathers*(this: XCAFDocGraphNode): cint {.noSideEffect, cdecl,
    importcpp: "NbFathers", header: "XCAFDoc_GraphNode.hxx".}
proc nbChildren*(this: XCAFDocGraphNode): cint {.noSideEffect, cdecl,
    importcpp: "NbChildren", header: "XCAFDoc_GraphNode.hxx".}
proc id*(this: XCAFDocGraphNode): StandardGUID {.noSideEffect, cdecl, importcpp: "ID",
    header: "XCAFDoc_GraphNode.hxx".}
proc restore*(this: var XCAFDocGraphNode; with: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "XCAFDoc_GraphNode.hxx".}
proc paste*(this: XCAFDocGraphNode; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "XCAFDoc_GraphNode.hxx".}
proc newEmpty*(this: XCAFDocGraphNode): Handle[TDF_Attribute] {.noSideEffect, cdecl,
    importcpp: "NewEmpty", header: "XCAFDoc_GraphNode.hxx".}
proc references*(this: XCAFDocGraphNode; aDataSet: Handle[TDF_DataSet]) {.
    noSideEffect, cdecl, importcpp: "References", header: "XCAFDoc_GraphNode.hxx".}
proc dump*(this: XCAFDocGraphNode; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "XCAFDoc_GraphNode.hxx".}
proc beforeForget*(this: var XCAFDocGraphNode) {.cdecl, importcpp: "BeforeForget",
    header: "XCAFDoc_GraphNode.hxx".}
proc dumpJson*(this: XCAFDocGraphNode; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_GraphNode.hxx".}

