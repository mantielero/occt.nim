import xcafdoc_types

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


proc Find*(L: TDF_Label; G: var handle[XCAFDoc_GraphNode]): bool {.cdecl,
    importcpp: "XCAFDoc_GraphNode::Find(@)", header: "XCAFDoc_GraphNode.hxx".}
proc Set*(L: TDF_Label): handle[XCAFDoc_GraphNode] {.cdecl,
    importcpp: "XCAFDoc_GraphNode::Set(@)", header: "XCAFDoc_GraphNode.hxx".}
proc Set*(L: TDF_Label; ExplicitGraphID: Standard_GUID): handle[XCAFDoc_GraphNode] {.
    cdecl, importcpp: "XCAFDoc_GraphNode::Set(@)", header: "XCAFDoc_GraphNode.hxx".}
proc GetDefaultGraphID*(): Standard_GUID {.cdecl, importcpp: "XCAFDoc_GraphNode::GetDefaultGraphID(@)",
                                        header: "XCAFDoc_GraphNode.hxx".}
proc newXCAFDoc_GraphNode*(): XCAFDoc_GraphNode {.cdecl, constructor,
    importcpp: "XCAFDoc_GraphNode(@)", header: "XCAFDoc_GraphNode.hxx".}
proc SetGraphID*(this: var XCAFDoc_GraphNode; explicitID: Standard_GUID) {.cdecl,
    importcpp: "SetGraphID", header: "XCAFDoc_GraphNode.hxx".}
proc SetFather*(this: var XCAFDoc_GraphNode; F: handle[XCAFDoc_GraphNode]): cint {.
    cdecl, importcpp: "SetFather", header: "XCAFDoc_GraphNode.hxx".}
proc SetChild*(this: var XCAFDoc_GraphNode; Ch: handle[XCAFDoc_GraphNode]): cint {.
    cdecl, importcpp: "SetChild", header: "XCAFDoc_GraphNode.hxx".}
proc UnSetFather*(this: var XCAFDoc_GraphNode; F: handle[XCAFDoc_GraphNode]) {.cdecl,
    importcpp: "UnSetFather", header: "XCAFDoc_GraphNode.hxx".}
proc UnSetFather*(this: var XCAFDoc_GraphNode; Findex: cint) {.cdecl,
    importcpp: "UnSetFather", header: "XCAFDoc_GraphNode.hxx".}
proc UnSetChild*(this: var XCAFDoc_GraphNode; Ch: handle[XCAFDoc_GraphNode]) {.cdecl,
    importcpp: "UnSetChild", header: "XCAFDoc_GraphNode.hxx".}
proc UnSetChild*(this: var XCAFDoc_GraphNode; Chindex: cint) {.cdecl,
    importcpp: "UnSetChild", header: "XCAFDoc_GraphNode.hxx".}
proc GetFather*(this: XCAFDoc_GraphNode; Findex: cint): handle[XCAFDoc_GraphNode] {.
    noSideEffect, cdecl, importcpp: "GetFather", header: "XCAFDoc_GraphNode.hxx".}
proc GetChild*(this: XCAFDoc_GraphNode; Chindex: cint): handle[XCAFDoc_GraphNode] {.
    noSideEffect, cdecl, importcpp: "GetChild", header: "XCAFDoc_GraphNode.hxx".}
proc FatherIndex*(this: XCAFDoc_GraphNode; F: handle[XCAFDoc_GraphNode]): cint {.
    noSideEffect, cdecl, importcpp: "FatherIndex", header: "XCAFDoc_GraphNode.hxx".}
proc ChildIndex*(this: XCAFDoc_GraphNode; Ch: handle[XCAFDoc_GraphNode]): cint {.
    noSideEffect, cdecl, importcpp: "ChildIndex", header: "XCAFDoc_GraphNode.hxx".}
proc IsFather*(this: XCAFDoc_GraphNode; Ch: handle[XCAFDoc_GraphNode]): bool {.
    noSideEffect, cdecl, importcpp: "IsFather", header: "XCAFDoc_GraphNode.hxx".}
proc IsChild*(this: XCAFDoc_GraphNode; F: handle[XCAFDoc_GraphNode]): bool {.
    noSideEffect, cdecl, importcpp: "IsChild", header: "XCAFDoc_GraphNode.hxx".}
proc NbFathers*(this: XCAFDoc_GraphNode): cint {.noSideEffect, cdecl,
    importcpp: "NbFathers", header: "XCAFDoc_GraphNode.hxx".}
proc NbChildren*(this: XCAFDoc_GraphNode): cint {.noSideEffect, cdecl,
    importcpp: "NbChildren", header: "XCAFDoc_GraphNode.hxx".}
proc ID*(this: XCAFDoc_GraphNode): Standard_GUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "XCAFDoc_GraphNode.hxx".}
proc Restore*(this: var XCAFDoc_GraphNode; with: handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "XCAFDoc_GraphNode.hxx".}
proc Paste*(this: XCAFDoc_GraphNode; into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "XCAFDoc_GraphNode.hxx".}
proc NewEmpty*(this: XCAFDoc_GraphNode): handle[TDF_Attribute] {.noSideEffect, cdecl,
    importcpp: "NewEmpty", header: "XCAFDoc_GraphNode.hxx".}
proc References*(this: XCAFDoc_GraphNode; aDataSet: handle[TDF_DataSet]) {.
    noSideEffect, cdecl, importcpp: "References", header: "XCAFDoc_GraphNode.hxx".}
proc Dump*(this: XCAFDoc_GraphNode; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "XCAFDoc_GraphNode.hxx".}
proc BeforeForget*(this: var XCAFDoc_GraphNode) {.cdecl, importcpp: "BeforeForget",
    header: "XCAFDoc_GraphNode.hxx".}
proc DumpJson*(this: XCAFDoc_GraphNode; theOStream: var Standard_OStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_GraphNode.hxx".}