import tdf_types
import ../standard/standard_types



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





proc id*(this: TDF_Attribute): StandardGUID {.noSideEffect, cdecl, importcpp: "ID",
    header: "TDF_Attribute.hxx".}
proc setID*(this: var TDF_Attribute; a2: StandardGUID) {.cdecl, importcpp: "SetID",
    header: "TDF_Attribute.hxx".}
  ## theGuid
proc setID*(this: var TDF_Attribute) {.cdecl, importcpp: "SetID",
                                   header: "TDF_Attribute.hxx".}
proc label*(this: TDF_Attribute): TDF_Label {.noSideEffect, cdecl, importcpp: "Label",
    header: "TDF_Attribute.hxx".}
proc transaction*(this: TDF_Attribute): cint {.noSideEffect, cdecl,
    importcpp: "Transaction", header: "TDF_Attribute.hxx".}
proc untilTransaction*(this: TDF_Attribute): cint {.noSideEffect, cdecl,
    importcpp: "UntilTransaction", header: "TDF_Attribute.hxx".}
proc isValid*(this: TDF_Attribute): bool {.noSideEffect, cdecl, importcpp: "IsValid",
                                       header: "TDF_Attribute.hxx".}
proc isNew*(this: TDF_Attribute): bool {.noSideEffect, cdecl, importcpp: "IsNew",
                                     header: "TDF_Attribute.hxx".}
proc isForgotten*(this: TDF_Attribute): bool {.noSideEffect, cdecl,
    importcpp: "IsForgotten", header: "TDF_Attribute.hxx".}
proc isAttribute*(this: TDF_Attribute; anID: StandardGUID): bool {.noSideEffect, cdecl,
    importcpp: "IsAttribute", header: "TDF_Attribute.hxx".}
proc findAttribute*(this: TDF_Attribute; anID: StandardGUID;
                   anAttribute: var Handle[TDF_Attribute]): bool {.noSideEffect,
    cdecl, importcpp: "FindAttribute", header: "TDF_Attribute.hxx".}
proc findAttribute*[T](this: TDF_Attribute; theID: StandardGUID;
                      theAttr: var Handle[T]): bool {.noSideEffect, cdecl,
    importcpp: "FindAttribute", header: "TDF_Attribute.hxx".}
proc addAttribute*(this: TDF_Attribute; other: Handle[TDF_Attribute]) {.noSideEffect,
    cdecl, importcpp: "AddAttribute", header: "TDF_Attribute.hxx".}
proc forgetAttribute*(this: TDF_Attribute; aguid: StandardGUID): bool {.noSideEffect,
    cdecl, importcpp: "ForgetAttribute", header: "TDF_Attribute.hxx".}
proc forgetAllAttributes*(this: TDF_Attribute; clearChildren: bool = true) {.
    noSideEffect, cdecl, importcpp: "ForgetAllAttributes",
    header: "TDF_Attribute.hxx".}
proc afterAddition*(this: var TDF_Attribute) {.cdecl, importcpp: "AfterAddition",
    header: "TDF_Attribute.hxx".}
proc beforeRemoval*(this: var TDF_Attribute) {.cdecl, importcpp: "BeforeRemoval",
    header: "TDF_Attribute.hxx".}
proc beforeForget*(this: var TDF_Attribute) {.cdecl, importcpp: "BeforeForget",
    header: "TDF_Attribute.hxx".}
proc afterResume*(this: var TDF_Attribute) {.cdecl, importcpp: "AfterResume",
    header: "TDF_Attribute.hxx".}
proc afterRetrieval*(this: var TDF_Attribute; forceIt: bool = false): bool {.cdecl,
    importcpp: "AfterRetrieval", header: "TDF_Attribute.hxx".}
proc beforeUndo*(this: var TDF_Attribute; anAttDelta: Handle[TDF_AttributeDelta];
                forceIt: bool = false): bool {.cdecl, importcpp: "BeforeUndo",
    header: "TDF_Attribute.hxx".}
proc afterUndo*(this: var TDF_Attribute; anAttDelta: Handle[TDF_AttributeDelta];
               forceIt: bool = false): bool {.cdecl, importcpp: "AfterUndo",
    header: "TDF_Attribute.hxx".}
proc beforeCommitTransaction*(this: var TDF_Attribute) {.cdecl,
    importcpp: "BeforeCommitTransaction", header: "TDF_Attribute.hxx".}
proc backup*(this: var TDF_Attribute) {.cdecl, importcpp: "Backup",
                                    header: "TDF_Attribute.hxx".}
proc isBackuped*(this: TDF_Attribute): bool {.noSideEffect, cdecl,
    importcpp: "IsBackuped", header: "TDF_Attribute.hxx".}
proc backupCopy*(this: TDF_Attribute): Handle[TDF_Attribute] {.noSideEffect, cdecl,
    importcpp: "BackupCopy", header: "TDF_Attribute.hxx".}
proc restore*(this: var TDF_Attribute; anAttribute: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "TDF_Attribute.hxx".}
proc deltaOnAddition*(this: TDF_Attribute): Handle[TDF_DeltaOnAddition] {.
    noSideEffect, cdecl, importcpp: "DeltaOnAddition", header: "TDF_Attribute.hxx".}
proc deltaOnForget*(this: TDF_Attribute): Handle[TDF_DeltaOnForget] {.noSideEffect,
    cdecl, importcpp: "DeltaOnForget", header: "TDF_Attribute.hxx".}
proc deltaOnResume*(this: TDF_Attribute): Handle[TDF_DeltaOnResume] {.noSideEffect,
    cdecl, importcpp: "DeltaOnResume", header: "TDF_Attribute.hxx".}
proc deltaOnModification*(this: TDF_Attribute;
                         anOldAttribute: Handle[TDF_Attribute]): Handle[
    TDF_DeltaOnModification] {.noSideEffect, cdecl,
                              importcpp: "DeltaOnModification",
                              header: "TDF_Attribute.hxx".}
proc deltaOnModification*(this: var TDF_Attribute;
                         aDelta: Handle[TDF_DeltaOnModification]) {.cdecl,
    importcpp: "DeltaOnModification", header: "TDF_Attribute.hxx".}
proc deltaOnRemoval*(this: TDF_Attribute): Handle[TDF_DeltaOnRemoval] {.
    noSideEffect, cdecl, importcpp: "DeltaOnRemoval", header: "TDF_Attribute.hxx".}
proc newEmpty*(this: TDF_Attribute): Handle[TDF_Attribute] {.noSideEffect, cdecl,
    importcpp: "NewEmpty", header: "TDF_Attribute.hxx".}
proc paste*(this: TDF_Attribute; intoAttribute: Handle[TDF_Attribute];
           aRelocationTable: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "TDF_Attribute.hxx".}
proc references*(this: TDF_Attribute; aDataSet: Handle[TDF_DataSet]) {.noSideEffect,
    cdecl, importcpp: "References", header: "TDF_Attribute.hxx".}
proc dump*(this: TDF_Attribute; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "TDF_Attribute.hxx".}
proc `<<`*(this: TDF_Attribute; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "(# << #)", header: "TDF_Attribute.hxx".}
proc extendedDump*(this: TDF_Attribute; anOS: var StandardOStream;
                  aFilter: TDF_IDFilter; aMap: var TDF_AttributeIndexedMap) {.
    noSideEffect, cdecl, importcpp: "ExtendedDump", header: "TDF_Attribute.hxx".}
proc forget*(this: var TDF_Attribute; aTransaction: cint) {.cdecl, importcpp: "Forget",
    header: "TDF_Attribute.hxx".}
proc dumpJson*(this: TDF_Attribute; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "TDF_Attribute.hxx".}

