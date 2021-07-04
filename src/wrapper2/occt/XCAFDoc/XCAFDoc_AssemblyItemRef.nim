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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_GUID,
  ../TDF/TDF_Attribute, XCAFDoc_AssemblyItemId

discard "forward decl of TDF_Data"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of XCAFDoc_AssemblyItemRef"
discard "forward decl of XCAFDoc_AssemblyItemRef"
type
  Handle_XCAFDoc_AssemblyItemRef* = handle[XCAFDoc_AssemblyItemRef]

## ! An attribute that describes a weak reference to an assembly item
## ! or to a subshape or to an assembly label attribute.

type
  XCAFDoc_AssemblyItemRef* {.importcpp: "XCAFDoc_AssemblyItemRef",
                            header: "XCAFDoc_AssemblyItemRef.hxx", bycopy.} = object of TDF_Attribute ##  Overrides TDF_Attribute pure virtuals
    ## /< Assembly item ID
    ## /< Type of extra reference: subshape or attribute
    ## /< Extra reference data

  XCAFDoc_AssemblyItemRefbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "XCAFDoc_AssemblyItemRef::get_type_name(@)",
                              header: "XCAFDoc_AssemblyItemRef.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XCAFDoc_AssemblyItemRef::get_type_descriptor(@)",
    header: "XCAFDoc_AssemblyItemRef.hxx".}
proc DynamicType*(this: XCAFDoc_AssemblyItemRef): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "XCAFDoc_AssemblyItemRef::GetID(@)",
                            header: "XCAFDoc_AssemblyItemRef.hxx".}
proc Get*(theLabel: TDF_Label): handle[XCAFDoc_AssemblyItemRef] {.
    importcpp: "XCAFDoc_AssemblyItemRef::Get(@)",
    header: "XCAFDoc_AssemblyItemRef.hxx".}
proc Set*(theLabel: TDF_Label; theItemId: XCAFDoc_AssemblyItemId): handle[
    XCAFDoc_AssemblyItemRef] {.importcpp: "XCAFDoc_AssemblyItemRef::Set(@)",
                              header: "XCAFDoc_AssemblyItemRef.hxx".}
proc Set*(theLabel: TDF_Label; theItemId: XCAFDoc_AssemblyItemId;
         theGUID: Standard_GUID): handle[XCAFDoc_AssemblyItemRef] {.
    importcpp: "XCAFDoc_AssemblyItemRef::Set(@)",
    header: "XCAFDoc_AssemblyItemRef.hxx".}
proc Set*(theLabel: TDF_Label; theItemId: XCAFDoc_AssemblyItemId;
         theShapeIndex: Standard_Integer): handle[XCAFDoc_AssemblyItemRef] {.
    importcpp: "XCAFDoc_AssemblyItemRef::Set(@)",
    header: "XCAFDoc_AssemblyItemRef.hxx".}
proc constructXCAFDoc_AssemblyItemRef*(): XCAFDoc_AssemblyItemRef {.constructor,
    importcpp: "XCAFDoc_AssemblyItemRef(@)", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc IsOrphan*(this: XCAFDoc_AssemblyItemRef): Standard_Boolean {.noSideEffect,
    importcpp: "IsOrphan", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc HasExtraRef*(this: XCAFDoc_AssemblyItemRef): Standard_Boolean {.noSideEffect,
    importcpp: "HasExtraRef", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc IsGUID*(this: XCAFDoc_AssemblyItemRef): Standard_Boolean {.noSideEffect,
    importcpp: "IsGUID", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc IsSubshapeIndex*(this: XCAFDoc_AssemblyItemRef): Standard_Boolean {.
    noSideEffect, importcpp: "IsSubshapeIndex",
    header: "XCAFDoc_AssemblyItemRef.hxx".}
proc GetGUID*(this: XCAFDoc_AssemblyItemRef): Standard_GUID {.noSideEffect,
    importcpp: "GetGUID", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc GetSubshapeIndex*(this: XCAFDoc_AssemblyItemRef): Standard_Integer {.
    noSideEffect, importcpp: "GetSubshapeIndex",
    header: "XCAFDoc_AssemblyItemRef.hxx".}
proc GetItem*(this: XCAFDoc_AssemblyItemRef): XCAFDoc_AssemblyItemId {.noSideEffect,
    importcpp: "GetItem", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc SetItem*(this: var XCAFDoc_AssemblyItemRef; theItemId: XCAFDoc_AssemblyItemId) {.
    importcpp: "SetItem", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc SetItem*(this: var XCAFDoc_AssemblyItemRef; thePath: TColStd_ListOfAsciiString) {.
    importcpp: "SetItem", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc SetItem*(this: var XCAFDoc_AssemblyItemRef; theString: TCollection_AsciiString) {.
    importcpp: "SetItem", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc SetGUID*(this: var XCAFDoc_AssemblyItemRef; theAttrGUID: Standard_GUID) {.
    importcpp: "SetGUID", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc SetSubshapeIndex*(this: var XCAFDoc_AssemblyItemRef;
                      theShapeIndex: Standard_Integer) {.
    importcpp: "SetSubshapeIndex", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc ClearExtraRef*(this: var XCAFDoc_AssemblyItemRef) {.importcpp: "ClearExtraRef",
    header: "XCAFDoc_AssemblyItemRef.hxx".}
proc DumpJson*(this: XCAFDoc_AssemblyItemRef; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "XCAFDoc_AssemblyItemRef.hxx".}
proc ID*(this: XCAFDoc_AssemblyItemRef): Standard_GUID {.noSideEffect,
    importcpp: "ID", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc NewEmpty*(this: XCAFDoc_AssemblyItemRef): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc Restore*(this: var XCAFDoc_AssemblyItemRef; theAttrFrom: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "XCAFDoc_AssemblyItemRef.hxx".}
proc Paste*(this: XCAFDoc_AssemblyItemRef; theAttrInto: handle[TDF_Attribute];
           theRT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "XCAFDoc_AssemblyItemRef.hxx".}
proc Dump*(this: XCAFDoc_AssemblyItemRef; theOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "XCAFDoc_AssemblyItemRef.hxx".}