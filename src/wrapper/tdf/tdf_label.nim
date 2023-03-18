import tdf_types
import ../standard/standard_types



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



proc newTDF_Label*(): TDF_Label {.cdecl, constructor, importcpp: "TDF_Label(@)",
                               header: "TDF_Label.hxx".}
proc nullify*(this: var TDF_Label) {.cdecl, importcpp: "Nullify",
                                 header: "TDF_Label.hxx".}
proc data*(this: TDF_Label): Handle[TDF_Data] {.noSideEffect, cdecl,
    importcpp: "Data", header: "TDF_Label.hxx".}
proc tag*(this: TDF_Label): cint {.noSideEffect, cdecl, importcpp: "Tag",
                               header: "TDF_Label.hxx".}
proc father*(this: TDF_Label): TDF_Label {.noSideEffect, cdecl, importcpp: "Father",
                                       header: "TDF_Label.hxx".}
proc isNull*(this: TDF_Label): bool {.noSideEffect, cdecl, importcpp: "IsNull",
                                  header: "TDF_Label.hxx".}
proc imported*(this: TDF_Label; aStatus: bool) {.noSideEffect, cdecl,
    importcpp: "Imported", header: "TDF_Label.hxx".}
proc isImported*(this: TDF_Label): bool {.noSideEffect, cdecl,
                                      importcpp: "IsImported",
                                      header: "TDF_Label.hxx".}
proc isEqual*(this: TDF_Label; aLabel: TDF_Label): bool {.noSideEffect, cdecl,
    importcpp: "IsEqual", header: "TDF_Label.hxx".}
proc `==`*(this: TDF_Label; aLabel: TDF_Label): bool {.noSideEffect, cdecl,
    importcpp: "(# == #)", header: "TDF_Label.hxx".}
proc isDifferent*(this: TDF_Label; aLabel: TDF_Label): bool {.noSideEffect, cdecl,
    importcpp: "IsDifferent", header: "TDF_Label.hxx".}
proc isRoot*(this: TDF_Label): bool {.noSideEffect, cdecl, importcpp: "IsRoot",
                                  header: "TDF_Label.hxx".}
proc isAttribute*(this: TDF_Label; anID: StandardGUID): bool {.noSideEffect, cdecl,
    importcpp: "IsAttribute", header: "TDF_Label.hxx".}
proc addAttribute*(this: TDF_Label; anAttribute: Handle[TDF_Attribute];
                  append: bool = true) {.noSideEffect, cdecl,
                                     importcpp: "AddAttribute",
                                     header: "TDF_Label.hxx".}
proc forgetAttribute*(this: TDF_Label; anAttribute: Handle[TDF_Attribute]) {.
    noSideEffect, cdecl, importcpp: "ForgetAttribute", header: "TDF_Label.hxx".}
proc forgetAttribute*(this: TDF_Label; aguid: StandardGUID): bool {.noSideEffect,
    cdecl, importcpp: "ForgetAttribute", header: "TDF_Label.hxx".}
proc forgetAllAttributes*(this: TDF_Label; clearChildren: bool = true) {.noSideEffect,
    cdecl, importcpp: "ForgetAllAttributes", header: "TDF_Label.hxx".}
proc resumeAttribute*(this: TDF_Label; anAttribute: Handle[TDF_Attribute]) {.
    noSideEffect, cdecl, importcpp: "ResumeAttribute", header: "TDF_Label.hxx".}
proc findAttribute*(this: TDF_Label; anID: StandardGUID;
                   anAttribute: var Handle[TDF_Attribute]): bool {.noSideEffect,
    cdecl, importcpp: "FindAttribute", header: "TDF_Label.hxx".}
proc findAttribute*[T](this: TDF_Label; theID: StandardGUID; theAttr: var Handle[T]): bool {.
    noSideEffect, cdecl, importcpp: "FindAttribute", header: "TDF_Label.hxx".}
proc findAttribute*(this: TDF_Label; anID: StandardGUID; aTransaction: cint;
                   anAttribute: var Handle[TDF_Attribute]): bool {.noSideEffect,
    cdecl, importcpp: "FindAttribute", header: "TDF_Label.hxx".}
proc mayBeModified*(this: TDF_Label): bool {.noSideEffect, cdecl,
    importcpp: "MayBeModified", header: "TDF_Label.hxx".}
proc attributesModified*(this: TDF_Label): bool {.noSideEffect, cdecl,
    importcpp: "AttributesModified", header: "TDF_Label.hxx".}
proc hasAttribute*(this: TDF_Label): bool {.noSideEffect, cdecl,
                                        importcpp: "HasAttribute",
                                        header: "TDF_Label.hxx".}
proc nbAttributes*(this: TDF_Label): cint {.noSideEffect, cdecl,
                                        importcpp: "NbAttributes",
                                        header: "TDF_Label.hxx".}
proc depth*(this: TDF_Label): cint {.noSideEffect, cdecl, importcpp: "Depth",
                                 header: "TDF_Label.hxx".}
proc isDescendant*(this: TDF_Label; aLabel: TDF_Label): bool {.noSideEffect, cdecl,
    importcpp: "IsDescendant", header: "TDF_Label.hxx".}
proc root*(this: TDF_Label): TDF_Label {.noSideEffect, cdecl, importcpp: "Root",
                                     header: "TDF_Label.hxx".}
proc hasChild*(this: TDF_Label): bool {.noSideEffect, cdecl, importcpp: "HasChild",
                                    header: "TDF_Label.hxx".}
proc nbChildren*(this: TDF_Label): cint {.noSideEffect, cdecl,
                                      importcpp: "NbChildren",
                                      header: "TDF_Label.hxx".}
proc findChild*(this: TDF_Label; aTag: cint; create: bool = true): TDF_Label {.
    noSideEffect, cdecl, importcpp: "FindChild", header: "TDF_Label.hxx".}
proc newChild*(this: TDF_Label): TDF_Label {.noSideEffect, cdecl,
    importcpp: "NewChild", header: "TDF_Label.hxx".}
proc transaction*(this: TDF_Label): cint {.noSideEffect, cdecl,
                                       importcpp: "Transaction",
                                       header: "TDF_Label.hxx".}
proc hasLowerNode*(this: TDF_Label; otherLabel: TDF_Label): bool {.noSideEffect, cdecl,
    importcpp: "HasLowerNode", header: "TDF_Label.hxx".}
proc hasGreaterNode*(this: TDF_Label; otherLabel: TDF_Label): bool {.noSideEffect,
    cdecl, importcpp: "HasGreaterNode", header: "TDF_Label.hxx".}
proc dump*(this: TDF_Label; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "TDF_Label.hxx".}
proc `<<`*(this: TDF_Label; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "(# << #)", header: "TDF_Label.hxx".}
proc extendedDump*(this: TDF_Label; anOS: var StandardOStream; aFilter: TDF_IDFilter;
                  aMap: var TDF_AttributeIndexedMap) {.noSideEffect, cdecl,
    importcpp: "ExtendedDump", header: "TDF_Label.hxx".}
proc entryDump*(this: TDF_Label; anOS: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "EntryDump", header: "TDF_Label.hxx".}

