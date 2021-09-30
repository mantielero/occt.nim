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

discard "forward decl of Standard_DomainError"
discard "forward decl of TDF_Data"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_LabelNode"
discard "forward decl of TDF_AttributeIterator"
discard "forward decl of TDF_DeltaOnForget"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_AttributeDelta"
discard "forward decl of TDF_DeltaOnAddition"
discard "forward decl of TDF_DeltaOnResume"
discard "forward decl of TDF_DeltaOnModification"
discard "forward decl of TDF_DeltaOnRemoval"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_DataSet"
discard "forward decl of TDF_IDFilter"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_Attribute"
type
  HandleC1C1* = Handle[TDF_Attribute]

## ! A class each application has to implement. It is
## ! used to contain the application data.
## ! This abstract class, alongwith Label,
## ! is one of the cornerstones of Model Editor.
## ! The groundwork is to define the root of
## ! information. This information is to be
## ! attached to a Label, and could be of any of
## ! the following types:
## ! -   a feature
## ! -   a constraint
## ! -   a comment
## !
## ! Contents:
## ! ---------
## !
## ! Each software component who'd like to attach its
## ! own information to a label has to inherit from
## ! this class and has to add its own information as
## ! fields of this new class.
## !
## ! Identification:
## ! ---------------
## !
## ! An attribute can be identified by its ID. Every
## ! attributes used with the same meaning (for
## ! exemple: Integer, String, Topology...) have the
## ! same worldwide unique ID.
## !
## ! Addition:
## ! ---------
## !
## ! An attribute can be added to a label only if there
## ! is no attribute yet with the same ID. Call-back
## ! methods are offered, called automatically before
## ! and after the addition action.
## !
## ! Removal:
## ! --------
## !
## ! An attribute can be removed from a label only if
## ! there is an attribute yet with the same
## ! ID. Call-back methods are offered, called
## ! automatically before and after the removal
## ! action. A removed attribute cannot be found
## ! again. After a removal, only an addition of an
## ! attribute with the sane ID is possible (no
## ! backup...).
## !
## ! Modification & Transaction:
## ! ---------------------------
## !
## ! An attribute can be backuped before a
## ! modification. Only one backup attribute by
## ! transaction is possible. The modification can be
## ! forgotten (abort transaction) or validated (commit
## ! transaction).
## !
## ! BackupCopy and restore are methods used by the backup or
## ! abort transaction actions. BackupCopy is called by
## ! Backup to generate an attribute with the same
## ! contents as the current one. Restore is called
## ! when aborting a transaction to transfer the
## ! backuped contents into the current
## ! attribute. These methods must be implemented by
## ! end use inheriting classes.
## !
## ! A standard implementation of BackupCopy is provided, but
## ! it is not necessary a good one for any use.
## !
## ! Copy use methods:
## ! -----------------
## !
## ! Paste and NewEmpty methods are used by the copy
## ! algorithms. The goal of "Paste" is to transfer an
## ! attribute new contents into another attribute. The
## ! goal of "NewEmpty" is to create an attribute
## ! whithout contents, to be further filled with the
## ! new contents of another one. These 2 methods must
## ! be implemented by end use inheriting classes.
## !
## ! AttributeDelta:
## ! ---------------
## !
## ! An AttributeDelta is the difference between to
## ! attribute values states.  These methods must be
## ! implemented by end use inheriting classes, to
## ! profit from the delta services.

type
  TDF_Attribute* {.importcpp: "TDF_Attribute", header: "TDF_Attribute.hxx", bycopy.} = object of StandardTransient ##
                                                                                                         ## !
                                                                                                         ## Returns
                                                                                                         ## the
                                                                                                         ## ID
                                                                                                         ## of
                                                                                                         ## the
                                                                                                         ## attribute.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Initializes
                                                                                                         ## fields.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Set
                                                                                                         ## the
                                                                                                         ## "Valid"
                                                                                                         ## status
                                                                                                         ## with
                                                                                                         ## <aStatus>.


proc id*(this: TDF_Attribute): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TDF_Attribute.hxx".}
proc setID*(this: var TDF_Attribute; a2: StandardGUID) {.importcpp: "SetID",
    header: "TDF_Attribute.hxx".}
  ## theGuid
proc setID*(this: var TDF_Attribute) {.importcpp: "SetID", header: "TDF_Attribute.hxx".}
proc label*(this: TDF_Attribute): TDF_Label {.noSideEffect, importcpp: "Label",
    header: "TDF_Attribute.hxx".}
proc transaction*(this: TDF_Attribute): cint {.noSideEffect,
    importcpp: "Transaction", header: "TDF_Attribute.hxx".}
proc untilTransaction*(this: TDF_Attribute): cint {.noSideEffect,
    importcpp: "UntilTransaction", header: "TDF_Attribute.hxx".}
proc isValid*(this: TDF_Attribute): bool {.noSideEffect, importcpp: "IsValid",
                                       header: "TDF_Attribute.hxx".}
proc isNew*(this: TDF_Attribute): bool {.noSideEffect, importcpp: "IsNew",
                                     header: "TDF_Attribute.hxx".}
proc isForgotten*(this: TDF_Attribute): bool {.noSideEffect,
    importcpp: "IsForgotten", header: "TDF_Attribute.hxx".}
proc isAttribute*(this: TDF_Attribute; anID: StandardGUID): bool {.noSideEffect,
    importcpp: "IsAttribute", header: "TDF_Attribute.hxx".}
proc findAttribute*(this: TDF_Attribute; anID: StandardGUID;
                   anAttribute: var Handle[TDF_Attribute]): bool {.noSideEffect,
    importcpp: "FindAttribute", header: "TDF_Attribute.hxx".}
proc findAttribute*[T](this: TDF_Attribute; theID: StandardGUID;
                      theAttr: var Handle[T]): bool {.noSideEffect,
    importcpp: "FindAttribute", header: "TDF_Attribute.hxx".}
proc addAttribute*(this: TDF_Attribute; other: Handle[TDF_Attribute]) {.noSideEffect,
    importcpp: "AddAttribute", header: "TDF_Attribute.hxx".}
proc forgetAttribute*(this: TDF_Attribute; aguid: StandardGUID): bool {.noSideEffect,
    importcpp: "ForgetAttribute", header: "TDF_Attribute.hxx".}
proc forgetAllAttributes*(this: TDF_Attribute; clearChildren: bool = true) {.
    noSideEffect, importcpp: "ForgetAllAttributes", header: "TDF_Attribute.hxx".}
proc afterAddition*(this: var TDF_Attribute) {.importcpp: "AfterAddition",
    header: "TDF_Attribute.hxx".}
proc beforeRemoval*(this: var TDF_Attribute) {.importcpp: "BeforeRemoval",
    header: "TDF_Attribute.hxx".}
proc beforeForget*(this: var TDF_Attribute) {.importcpp: "BeforeForget",
    header: "TDF_Attribute.hxx".}
proc afterResume*(this: var TDF_Attribute) {.importcpp: "AfterResume",
    header: "TDF_Attribute.hxx".}
proc afterRetrieval*(this: var TDF_Attribute; forceIt: bool = false): bool {.
    importcpp: "AfterRetrieval", header: "TDF_Attribute.hxx".}
proc beforeUndo*(this: var TDF_Attribute; anAttDelta: Handle[TDF_AttributeDelta];
                forceIt: bool = false): bool {.importcpp: "BeforeUndo",
    header: "TDF_Attribute.hxx".}
proc afterUndo*(this: var TDF_Attribute; anAttDelta: Handle[TDF_AttributeDelta];
               forceIt: bool = false): bool {.importcpp: "AfterUndo",
    header: "TDF_Attribute.hxx".}
proc beforeCommitTransaction*(this: var TDF_Attribute) {.
    importcpp: "BeforeCommitTransaction", header: "TDF_Attribute.hxx".}
proc backup*(this: var TDF_Attribute) {.importcpp: "Backup",
                                    header: "TDF_Attribute.hxx".}
proc isBackuped*(this: TDF_Attribute): bool {.noSideEffect, importcpp: "IsBackuped",
    header: "TDF_Attribute.hxx".}
proc backupCopy*(this: TDF_Attribute): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "BackupCopy", header: "TDF_Attribute.hxx".}
proc restore*(this: var TDF_Attribute; anAttribute: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDF_Attribute.hxx".}
proc deltaOnAddition*(this: TDF_Attribute): Handle[TDF_DeltaOnAddition] {.
    noSideEffect, importcpp: "DeltaOnAddition", header: "TDF_Attribute.hxx".}
proc deltaOnForget*(this: TDF_Attribute): Handle[TDF_DeltaOnForget] {.noSideEffect,
    importcpp: "DeltaOnForget", header: "TDF_Attribute.hxx".}
proc deltaOnResume*(this: TDF_Attribute): Handle[TDF_DeltaOnResume] {.noSideEffect,
    importcpp: "DeltaOnResume", header: "TDF_Attribute.hxx".}
proc deltaOnModification*(this: TDF_Attribute;
                         anOldAttribute: Handle[TDF_Attribute]): Handle[
    TDF_DeltaOnModification] {.noSideEffect, importcpp: "DeltaOnModification",
                              header: "TDF_Attribute.hxx".}
proc deltaOnModification*(this: var TDF_Attribute;
                         aDelta: Handle[TDF_DeltaOnModification]) {.
    importcpp: "DeltaOnModification", header: "TDF_Attribute.hxx".}
proc deltaOnRemoval*(this: TDF_Attribute): Handle[TDF_DeltaOnRemoval] {.
    noSideEffect, importcpp: "DeltaOnRemoval", header: "TDF_Attribute.hxx".}
proc newEmpty*(this: TDF_Attribute): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDF_Attribute.hxx".}
proc paste*(this: TDF_Attribute; intoAttribute: Handle[TDF_Attribute];
           aRelocationTable: Handle[TDF_RelocationTable]) {.noSideEffect,
    importcpp: "Paste", header: "TDF_Attribute.hxx".}
proc references*(this: TDF_Attribute; aDataSet: Handle[TDF_DataSet]) {.noSideEffect,
    importcpp: "References", header: "TDF_Attribute.hxx".}
proc dump*(this: TDF_Attribute; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDF_Attribute.hxx".}
proc `<<`*(this: TDF_Attribute; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "(# << #)", header: "TDF_Attribute.hxx".}
proc extendedDump*(this: TDF_Attribute; anOS: var StandardOStream;
                  aFilter: TDF_IDFilter; aMap: var TDF_AttributeIndexedMap) {.
    noSideEffect, importcpp: "ExtendedDump", header: "TDF_Attribute.hxx".}
proc forget*(this: var TDF_Attribute; aTransaction: cint) {.importcpp: "Forget",
    header: "TDF_Attribute.hxx".}
proc dumpJson*(this: TDF_Attribute; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "TDF_Attribute.hxx".}
type
  TDF_AttributebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TDF_Attribute::get_type_name(@)",
                            header: "TDF_Attribute.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDF_Attribute::get_type_descriptor(@)",
    header: "TDF_Attribute.hxx".}
proc dynamicType*(this: TDF_Attribute): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDF_Attribute.hxx".}

























