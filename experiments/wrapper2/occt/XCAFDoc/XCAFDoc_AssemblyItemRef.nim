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
discard "forward decl of XCAFDoc_AssemblyItemRef"
type
  HandleXCAFDocAssemblyItemRef* = Handle[XCAFDocAssemblyItemRef]

## ! An attribute that describes a weak reference to an assembly item
## ! or to a subshape or to an assembly label attribute.

type
  XCAFDocAssemblyItemRef* {.importcpp: "XCAFDoc_AssemblyItemRef",
                           header: "XCAFDoc_AssemblyItemRef.hxx", bycopy.} = object of TDF_Attribute ##  Overrides TDF_Attribute pure virtuals
    ## /< Assembly item ID
    ## /< Type of extra reference: subshape or attribute
    ## /< Extra reference data

  XCAFDocAssemblyItemRefbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "XCAFDoc_AssemblyItemRef::get_type_name(@)",
                            header: "XCAFDoc_AssemblyItemRef.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XCAFDoc_AssemblyItemRef::get_type_descriptor(@)",
    header: "XCAFDoc_AssemblyItemRef.hxx".}
proc dynamicType*(this: XCAFDocAssemblyItemRef): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc getID*(): StandardGUID {.importcpp: "XCAFDoc_AssemblyItemRef::GetID(@)",
                           header: "XCAFDoc_AssemblyItemRef.hxx".}
proc get*(theLabel: TDF_Label): Handle[XCAFDocAssemblyItemRef] {.
    importcpp: "XCAFDoc_AssemblyItemRef::Get(@)",
    header: "XCAFDoc_AssemblyItemRef.hxx".}
proc set*(theLabel: TDF_Label; theItemId: XCAFDocAssemblyItemId): Handle[
    XCAFDocAssemblyItemRef] {.importcpp: "XCAFDoc_AssemblyItemRef::Set(@)",
                             header: "XCAFDoc_AssemblyItemRef.hxx".}
proc set*(theLabel: TDF_Label; theItemId: XCAFDocAssemblyItemId;
         theGUID: StandardGUID): Handle[XCAFDocAssemblyItemRef] {.
    importcpp: "XCAFDoc_AssemblyItemRef::Set(@)",
    header: "XCAFDoc_AssemblyItemRef.hxx".}
proc set*(theLabel: TDF_Label; theItemId: XCAFDocAssemblyItemId; theShapeIndex: int): Handle[
    XCAFDocAssemblyItemRef] {.importcpp: "XCAFDoc_AssemblyItemRef::Set(@)",
                             header: "XCAFDoc_AssemblyItemRef.hxx".}
proc constructXCAFDocAssemblyItemRef*(): XCAFDocAssemblyItemRef {.constructor,
    importcpp: "XCAFDoc_AssemblyItemRef(@)", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc isOrphan*(this: XCAFDocAssemblyItemRef): bool {.noSideEffect,
    importcpp: "IsOrphan", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc hasExtraRef*(this: XCAFDocAssemblyItemRef): bool {.noSideEffect,
    importcpp: "HasExtraRef", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc isGUID*(this: XCAFDocAssemblyItemRef): bool {.noSideEffect, importcpp: "IsGUID",
    header: "XCAFDoc_AssemblyItemRef.hxx".}
proc isSubshapeIndex*(this: XCAFDocAssemblyItemRef): bool {.noSideEffect,
    importcpp: "IsSubshapeIndex", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc getGUID*(this: XCAFDocAssemblyItemRef): StandardGUID {.noSideEffect,
    importcpp: "GetGUID", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc getSubshapeIndex*(this: XCAFDocAssemblyItemRef): int {.noSideEffect,
    importcpp: "GetSubshapeIndex", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc getItem*(this: XCAFDocAssemblyItemRef): XCAFDocAssemblyItemId {.noSideEffect,
    importcpp: "GetItem", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc setItem*(this: var XCAFDocAssemblyItemRef; theItemId: XCAFDocAssemblyItemId) {.
    importcpp: "SetItem", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc setItem*(this: var XCAFDocAssemblyItemRef; thePath: TColStdListOfAsciiString) {.
    importcpp: "SetItem", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc setItem*(this: var XCAFDocAssemblyItemRef; theString: TCollectionAsciiString) {.
    importcpp: "SetItem", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc setGUID*(this: var XCAFDocAssemblyItemRef; theAttrGUID: StandardGUID) {.
    importcpp: "SetGUID", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc setSubshapeIndex*(this: var XCAFDocAssemblyItemRef; theShapeIndex: int) {.
    importcpp: "SetSubshapeIndex", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc clearExtraRef*(this: var XCAFDocAssemblyItemRef) {.importcpp: "ClearExtraRef",
    header: "XCAFDoc_AssemblyItemRef.hxx".}
proc dumpJson*(this: XCAFDocAssemblyItemRef; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "XCAFDoc_AssemblyItemRef.hxx".}
proc id*(this: XCAFDocAssemblyItemRef): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_AssemblyItemRef.hxx".}
proc newEmpty*(this: XCAFDocAssemblyItemRef): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc restore*(this: var XCAFDocAssemblyItemRef; theAttrFrom: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc paste*(this: XCAFDocAssemblyItemRef; theAttrInto: Handle[TDF_Attribute];
           theRT: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "XCAFDoc_AssemblyItemRef.hxx".}
proc dump*(this: XCAFDocAssemblyItemRef; theOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "XCAFDoc_AssemblyItemRef.hxx".}
