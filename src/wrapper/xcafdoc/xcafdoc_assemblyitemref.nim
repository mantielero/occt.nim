import ../tdf/tdf_types
import ../tcolstd/tcolstd_types
import xcafdoc_types
import ../standard/standard_types
import ../tcollection/tcollection_types



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





proc getID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc_AssemblyItemRef::GetID(@)",
                           header: "XCAFDoc_AssemblyItemRef.hxx".}
proc get*(theLabel: TDF_Label): Handle[XCAFDocAssemblyItemRef] {.cdecl,
    importcpp: "XCAFDoc_AssemblyItemRef::Get(@)",
    header: "XCAFDoc_AssemblyItemRef.hxx".}
proc set*(theLabel: TDF_Label; theItemId: XCAFDocAssemblyItemId): Handle[
    XCAFDocAssemblyItemRef] {.cdecl, importcpp: "XCAFDoc_AssemblyItemRef::Set(@)",
                             header: "XCAFDoc_AssemblyItemRef.hxx".}
proc set*(theLabel: TDF_Label; theItemId: XCAFDocAssemblyItemId;
         theGUID: StandardGUID): Handle[XCAFDocAssemblyItemRef] {.cdecl,
    importcpp: "XCAFDoc_AssemblyItemRef::Set(@)",
    header: "XCAFDoc_AssemblyItemRef.hxx".}
proc set*(theLabel: TDF_Label; theItemId: XCAFDocAssemblyItemId; theShapeIndex: cint): Handle[
    XCAFDocAssemblyItemRef] {.cdecl, importcpp: "XCAFDoc_AssemblyItemRef::Set(@)",
                             header: "XCAFDoc_AssemblyItemRef.hxx".}
proc newXCAFDocAssemblyItemRef*(): XCAFDocAssemblyItemRef {.cdecl, constructor,
    importcpp: "XCAFDoc_AssemblyItemRef(@)", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc isOrphan*(this: XCAFDocAssemblyItemRef): bool {.noSideEffect, cdecl,
    importcpp: "IsOrphan", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc hasExtraRef*(this: XCAFDocAssemblyItemRef): bool {.noSideEffect, cdecl,
    importcpp: "HasExtraRef", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc isGUID*(this: XCAFDocAssemblyItemRef): bool {.noSideEffect, cdecl,
    importcpp: "IsGUID", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc isSubshapeIndex*(this: XCAFDocAssemblyItemRef): bool {.noSideEffect, cdecl,
    importcpp: "IsSubshapeIndex", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc getGUID*(this: XCAFDocAssemblyItemRef): StandardGUID {.noSideEffect, cdecl,
    importcpp: "GetGUID", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc getSubshapeIndex*(this: XCAFDocAssemblyItemRef): cint {.noSideEffect, cdecl,
    importcpp: "GetSubshapeIndex", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc getItem*(this: XCAFDocAssemblyItemRef): XCAFDocAssemblyItemId {.noSideEffect,
    cdecl, importcpp: "GetItem", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc setItem*(this: var XCAFDocAssemblyItemRef; theItemId: XCAFDocAssemblyItemId) {.
    cdecl, importcpp: "SetItem", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc setItem*(this: var XCAFDocAssemblyItemRef; thePath: TColStdListOfAsciiString) {.
    cdecl, importcpp: "SetItem", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc setItem*(this: var XCAFDocAssemblyItemRef; theString: TCollectionAsciiString) {.
    cdecl, importcpp: "SetItem", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc setGUID*(this: var XCAFDocAssemblyItemRef; theAttrGUID: StandardGUID) {.cdecl,
    importcpp: "SetGUID", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc setSubshapeIndex*(this: var XCAFDocAssemblyItemRef; theShapeIndex: cint) {.cdecl,
    importcpp: "SetSubshapeIndex", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc clearExtraRef*(this: var XCAFDocAssemblyItemRef) {.cdecl,
    importcpp: "ClearExtraRef", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc dumpJson*(this: XCAFDocAssemblyItemRef; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_AssemblyItemRef.hxx".}
proc id*(this: XCAFDocAssemblyItemRef): StandardGUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc newEmpty*(this: XCAFDocAssemblyItemRef): Handle[TDF_Attribute] {.noSideEffect,
    cdecl, importcpp: "NewEmpty", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc restore*(this: var XCAFDocAssemblyItemRef; theAttrFrom: Handle[TDF_Attribute]) {.
    cdecl, importcpp: "Restore", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc paste*(this: XCAFDocAssemblyItemRef; theAttrInto: Handle[TDF_Attribute];
           theRT: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc dump*(this: XCAFDocAssemblyItemRef; theOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "XCAFDoc_AssemblyItemRef.hxx".}

