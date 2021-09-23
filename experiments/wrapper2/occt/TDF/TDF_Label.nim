##  Created on: 1997-02-04
##  Created by: DAUTRY Philippe
##  Copyright (c) 1997-1999 Matra Datavision
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, TDF_LabelNodePtr, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../Standard/Standard_OStream,
  TDF_AttributeIndexedMap

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NullObject"
discard "forward decl of TDF_ChildIterator"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_AttributeIterator"
discard "forward decl of TDF_Data"
discard "forward decl of TDF_LabelMapHasher"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_IDFilter"
type
  TDF_Label* {.importcpp: "TDF_Label", header: "TDF_Label.hxx", bycopy.} = object ## !
                                                                          ## Constructs an empty label
                                                                          ## object.
                                                                          ## !
                                                                          ## Reserved to the
                                                                          ## friends.


proc constructTDF_Label*(): TDF_Label {.constructor, importcpp: "TDF_Label(@)",
                                     header: "TDF_Label.hxx".}
proc Nullify*(this: var TDF_Label) {.importcpp: "Nullify", header: "TDF_Label.hxx".}
proc Data*(this: TDF_Label): handle[TDF_Data] {.noSideEffect, importcpp: "Data",
    header: "TDF_Label.hxx".}
proc Tag*(this: TDF_Label): Standard_Integer {.noSideEffect, importcpp: "Tag",
    header: "TDF_Label.hxx".}
proc Father*(this: TDF_Label): TDF_Label {.noSideEffect, importcpp: "Father",
                                       header: "TDF_Label.hxx".}
proc IsNull*(this: TDF_Label): Standard_Boolean {.noSideEffect, importcpp: "IsNull",
    header: "TDF_Label.hxx".}
proc Imported*(this: TDF_Label; aStatus: Standard_Boolean) {.noSideEffect,
    importcpp: "Imported", header: "TDF_Label.hxx".}
proc IsImported*(this: TDF_Label): Standard_Boolean {.noSideEffect,
    importcpp: "IsImported", header: "TDF_Label.hxx".}
proc IsEqual*(this: TDF_Label; aLabel: TDF_Label): Standard_Boolean {.noSideEffect,
    importcpp: "IsEqual", header: "TDF_Label.hxx".}
proc `==`*(this: TDF_Label; aLabel: TDF_Label): Standard_Boolean {.noSideEffect,
    importcpp: "(# == #)", header: "TDF_Label.hxx".}
proc IsDifferent*(this: TDF_Label; aLabel: TDF_Label): Standard_Boolean {.
    noSideEffect, importcpp: "IsDifferent", header: "TDF_Label.hxx".}
proc IsRoot*(this: TDF_Label): Standard_Boolean {.noSideEffect, importcpp: "IsRoot",
    header: "TDF_Label.hxx".}
proc IsAttribute*(this: TDF_Label; anID: Standard_GUID): Standard_Boolean {.
    noSideEffect, importcpp: "IsAttribute", header: "TDF_Label.hxx".}
proc AddAttribute*(this: TDF_Label; anAttribute: handle[TDF_Attribute];
                  append: Standard_Boolean = Standard_True) {.noSideEffect,
    importcpp: "AddAttribute", header: "TDF_Label.hxx".}
proc ForgetAttribute*(this: TDF_Label; anAttribute: handle[TDF_Attribute]) {.
    noSideEffect, importcpp: "ForgetAttribute", header: "TDF_Label.hxx".}
proc ForgetAttribute*(this: TDF_Label; aguid: Standard_GUID): Standard_Boolean {.
    noSideEffect, importcpp: "ForgetAttribute", header: "TDF_Label.hxx".}
proc ForgetAllAttributes*(this: TDF_Label;
                         clearChildren: Standard_Boolean = Standard_True) {.
    noSideEffect, importcpp: "ForgetAllAttributes", header: "TDF_Label.hxx".}
proc ResumeAttribute*(this: TDF_Label; anAttribute: handle[TDF_Attribute]) {.
    noSideEffect, importcpp: "ResumeAttribute", header: "TDF_Label.hxx".}
proc FindAttribute*(this: TDF_Label; anID: Standard_GUID;
                   anAttribute: var handle[TDF_Attribute]): Standard_Boolean {.
    noSideEffect, importcpp: "FindAttribute", header: "TDF_Label.hxx".}
proc FindAttribute*[T](this: TDF_Label; theID: Standard_GUID; theAttr: var handle[T]): Standard_Boolean {.
    noSideEffect, importcpp: "FindAttribute", header: "TDF_Label.hxx".}
proc FindAttribute*(this: TDF_Label; anID: Standard_GUID;
                   aTransaction: Standard_Integer;
                   anAttribute: var handle[TDF_Attribute]): Standard_Boolean {.
    noSideEffect, importcpp: "FindAttribute", header: "TDF_Label.hxx".}
proc MayBeModified*(this: TDF_Label): Standard_Boolean {.noSideEffect,
    importcpp: "MayBeModified", header: "TDF_Label.hxx".}
proc AttributesModified*(this: TDF_Label): Standard_Boolean {.noSideEffect,
    importcpp: "AttributesModified", header: "TDF_Label.hxx".}
proc HasAttribute*(this: TDF_Label): Standard_Boolean {.noSideEffect,
    importcpp: "HasAttribute", header: "TDF_Label.hxx".}
proc NbAttributes*(this: TDF_Label): Standard_Integer {.noSideEffect,
    importcpp: "NbAttributes", header: "TDF_Label.hxx".}
proc Depth*(this: TDF_Label): Standard_Integer {.noSideEffect, importcpp: "Depth",
    header: "TDF_Label.hxx".}
proc IsDescendant*(this: TDF_Label; aLabel: TDF_Label): Standard_Boolean {.
    noSideEffect, importcpp: "IsDescendant", header: "TDF_Label.hxx".}
proc Root*(this: TDF_Label): TDF_Label {.noSideEffect, importcpp: "Root",
                                     header: "TDF_Label.hxx".}
proc HasChild*(this: TDF_Label): Standard_Boolean {.noSideEffect,
    importcpp: "HasChild", header: "TDF_Label.hxx".}
proc NbChildren*(this: TDF_Label): Standard_Integer {.noSideEffect,
    importcpp: "NbChildren", header: "TDF_Label.hxx".}
proc FindChild*(this: TDF_Label; aTag: Standard_Integer;
               create: Standard_Boolean = Standard_True): TDF_Label {.noSideEffect,
    importcpp: "FindChild", header: "TDF_Label.hxx".}
proc NewChild*(this: TDF_Label): TDF_Label {.noSideEffect, importcpp: "NewChild",
    header: "TDF_Label.hxx".}
proc Transaction*(this: TDF_Label): Standard_Integer {.noSideEffect,
    importcpp: "Transaction", header: "TDF_Label.hxx".}
proc HasLowerNode*(this: TDF_Label; otherLabel: TDF_Label): Standard_Boolean {.
    noSideEffect, importcpp: "HasLowerNode", header: "TDF_Label.hxx".}
proc HasGreaterNode*(this: TDF_Label; otherLabel: TDF_Label): Standard_Boolean {.
    noSideEffect, importcpp: "HasGreaterNode", header: "TDF_Label.hxx".}
proc Dump*(this: TDF_Label; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDF_Label.hxx".}
proc `<<`*(this: TDF_Label; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "(# << #)", header: "TDF_Label.hxx".}
proc ExtendedDump*(this: TDF_Label; anOS: var Standard_OStream; aFilter: TDF_IDFilter;
                  aMap: var TDF_AttributeIndexedMap) {.noSideEffect,
    importcpp: "ExtendedDump", header: "TDF_Label.hxx".}
proc EntryDump*(this: TDF_Label; anOS: var Standard_OStream) {.noSideEffect,
    importcpp: "EntryDump", header: "TDF_Label.hxx".}