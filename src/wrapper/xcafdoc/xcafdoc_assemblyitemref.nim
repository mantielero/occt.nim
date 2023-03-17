import xcafdoc_types

##  Created on: 2017-02-16
##  Created by: Sergey NIKONOV
##  Copyright (c) 2000-2017 OPEN CASCADE SAS
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

discard "forward decl of TDF_Data"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of XCAFDoc_AssemblyItemRef"

proc GetID*(): Standard_GUID {.cdecl,
                            importcpp: "XCAFDoc_AssemblyItemRef::GetID(@)",
                            header: "XCAFDoc_AssemblyItemRef.hxx".}
proc Get*(theLabel: TDF_Label): handle[XCAFDoc_AssemblyItemRef] {.cdecl,
    importcpp: "XCAFDoc_AssemblyItemRef::Get(@)",
    header: "XCAFDoc_AssemblyItemRef.hxx".}
proc Set*(theLabel: TDF_Label; theItemId: XCAFDoc_AssemblyItemId): handle[
    XCAFDoc_AssemblyItemRef] {.cdecl,
                              importcpp: "XCAFDoc_AssemblyItemRef::Set(@)",
                              header: "XCAFDoc_AssemblyItemRef.hxx".}
proc Set*(theLabel: TDF_Label; theItemId: XCAFDoc_AssemblyItemId;
         theGUID: Standard_GUID): handle[XCAFDoc_AssemblyItemRef] {.cdecl,
    importcpp: "XCAFDoc_AssemblyItemRef::Set(@)",
    header: "XCAFDoc_AssemblyItemRef.hxx".}
proc Set*(theLabel: TDF_Label; theItemId: XCAFDoc_AssemblyItemId; theShapeIndex: cint): handle[
    XCAFDoc_AssemblyItemRef] {.cdecl,
                              importcpp: "XCAFDoc_AssemblyItemRef::Set(@)",
                              header: "XCAFDoc_AssemblyItemRef.hxx".}
proc newXCAFDoc_AssemblyItemRef*(): XCAFDoc_AssemblyItemRef {.cdecl, constructor,
    importcpp: "XCAFDoc_AssemblyItemRef(@)", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc IsOrphan*(this: XCAFDoc_AssemblyItemRef): bool {.noSideEffect, cdecl,
    importcpp: "IsOrphan", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc HasExtraRef*(this: XCAFDoc_AssemblyItemRef): bool {.noSideEffect, cdecl,
    importcpp: "HasExtraRef", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc IsGUID*(this: XCAFDoc_AssemblyItemRef): bool {.noSideEffect, cdecl,
    importcpp: "IsGUID", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc IsSubshapeIndex*(this: XCAFDoc_AssemblyItemRef): bool {.noSideEffect, cdecl,
    importcpp: "IsSubshapeIndex", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc GetGUID*(this: XCAFDoc_AssemblyItemRef): Standard_GUID {.noSideEffect, cdecl,
    importcpp: "GetGUID", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc GetSubshapeIndex*(this: XCAFDoc_AssemblyItemRef): cint {.noSideEffect, cdecl,
    importcpp: "GetSubshapeIndex", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc GetItem*(this: XCAFDoc_AssemblyItemRef): XCAFDoc_AssemblyItemId {.noSideEffect,
    cdecl, importcpp: "GetItem", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc SetItem*(this: var XCAFDoc_AssemblyItemRef; theItemId: XCAFDoc_AssemblyItemId) {.
    cdecl, importcpp: "SetItem", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc SetItem*(this: var XCAFDoc_AssemblyItemRef; thePath: TColStd_ListOfAsciiString) {.
    cdecl, importcpp: "SetItem", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc SetItem*(this: var XCAFDoc_AssemblyItemRef; theString: TCollection_AsciiString) {.
    cdecl, importcpp: "SetItem", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc SetGUID*(this: var XCAFDoc_AssemblyItemRef; theAttrGUID: Standard_GUID) {.cdecl,
    importcpp: "SetGUID", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc SetSubshapeIndex*(this: var XCAFDoc_AssemblyItemRef; theShapeIndex: cint) {.
    cdecl, importcpp: "SetSubshapeIndex", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc ClearExtraRef*(this: var XCAFDoc_AssemblyItemRef) {.cdecl,
    importcpp: "ClearExtraRef", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc DumpJson*(this: XCAFDoc_AssemblyItemRef; theOStream: var Standard_OStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_AssemblyItemRef.hxx".}
proc ID*(this: XCAFDoc_AssemblyItemRef): Standard_GUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc NewEmpty*(this: XCAFDoc_AssemblyItemRef): handle[TDF_Attribute] {.noSideEffect,
    cdecl, importcpp: "NewEmpty", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc Restore*(this: var XCAFDoc_AssemblyItemRef; theAttrFrom: handle[TDF_Attribute]) {.
    cdecl, importcpp: "Restore", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc Paste*(this: XCAFDoc_AssemblyItemRef; theAttrInto: handle[TDF_Attribute];
           theRT: handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc Dump*(this: XCAFDoc_AssemblyItemRef; theOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "XCAFDoc_AssemblyItemRef.hxx".}