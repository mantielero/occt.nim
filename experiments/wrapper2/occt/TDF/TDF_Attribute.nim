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
  ../Standard/Standard, ../Standard/Standard_Type, TDF_LabelNodePtr,
  ../Standard/Standard_Integer, ../Standard/Standard_Transient,
  ../Standard/Standard_Boolean, ../Standard/Standard_OStream,
  TDF_AttributeIndexedMap

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
  Handle_TDF_Attribute* = handle[TDF_Attribute]

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
  TDF_Attribute* {.importcpp: "TDF_Attribute", header: "TDF_Attribute.hxx", bycopy.} = object of Standard_Transient ##
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


proc ID*(this: TDF_Attribute): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TDF_Attribute.hxx".}
proc SetID*(this: var TDF_Attribute; a2: Standard_GUID) {.importcpp: "SetID",
    header: "TDF_Attribute.hxx".}
  ## theGuid
proc SetID*(this: var TDF_Attribute) {.importcpp: "SetID", header: "TDF_Attribute.hxx".}
proc Label*(this: TDF_Attribute): TDF_Label {.noSideEffect, importcpp: "Label",
    header: "TDF_Attribute.hxx".}
proc Transaction*(this: TDF_Attribute): Standard_Integer {.noSideEffect,
    importcpp: "Transaction", header: "TDF_Attribute.hxx".}
proc UntilTransaction*(this: TDF_Attribute): Standard_Integer {.noSideEffect,
    importcpp: "UntilTransaction", header: "TDF_Attribute.hxx".}
proc IsValid*(this: TDF_Attribute): Standard_Boolean {.noSideEffect,
    importcpp: "IsValid", header: "TDF_Attribute.hxx".}
proc IsNew*(this: TDF_Attribute): Standard_Boolean {.noSideEffect,
    importcpp: "IsNew", header: "TDF_Attribute.hxx".}
proc IsForgotten*(this: TDF_Attribute): Standard_Boolean {.noSideEffect,
    importcpp: "IsForgotten", header: "TDF_Attribute.hxx".}
proc IsAttribute*(this: TDF_Attribute; anID: Standard_GUID): Standard_Boolean {.
    noSideEffect, importcpp: "IsAttribute", header: "TDF_Attribute.hxx".}
proc FindAttribute*(this: TDF_Attribute; anID: Standard_GUID;
                   anAttribute: var handle[TDF_Attribute]): Standard_Boolean {.
    noSideEffect, importcpp: "FindAttribute", header: "TDF_Attribute.hxx".}
proc FindAttribute*[T](this: TDF_Attribute; theID: Standard_GUID;
                      theAttr: var handle[T]): Standard_Boolean {.noSideEffect,
    importcpp: "FindAttribute", header: "TDF_Attribute.hxx".}
proc AddAttribute*(this: TDF_Attribute; other: handle[TDF_Attribute]) {.noSideEffect,
    importcpp: "AddAttribute", header: "TDF_Attribute.hxx".}
proc ForgetAttribute*(this: TDF_Attribute; aguid: Standard_GUID): Standard_Boolean {.
    noSideEffect, importcpp: "ForgetAttribute", header: "TDF_Attribute.hxx".}
proc ForgetAllAttributes*(this: TDF_Attribute;
                         clearChildren: Standard_Boolean = Standard_True) {.
    noSideEffect, importcpp: "ForgetAllAttributes", header: "TDF_Attribute.hxx".}
proc AfterAddition*(this: var TDF_Attribute) {.importcpp: "AfterAddition",
    header: "TDF_Attribute.hxx".}
proc BeforeRemoval*(this: var TDF_Attribute) {.importcpp: "BeforeRemoval",
    header: "TDF_Attribute.hxx".}
proc BeforeForget*(this: var TDF_Attribute) {.importcpp: "BeforeForget",
    header: "TDF_Attribute.hxx".}
proc AfterResume*(this: var TDF_Attribute) {.importcpp: "AfterResume",
    header: "TDF_Attribute.hxx".}
proc AfterRetrieval*(this: var TDF_Attribute;
                    forceIt: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "AfterRetrieval", header: "TDF_Attribute.hxx".}
proc BeforeUndo*(this: var TDF_Attribute; anAttDelta: handle[TDF_AttributeDelta];
                forceIt: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "BeforeUndo", header: "TDF_Attribute.hxx".}
proc AfterUndo*(this: var TDF_Attribute; anAttDelta: handle[TDF_AttributeDelta];
               forceIt: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "AfterUndo", header: "TDF_Attribute.hxx".}
proc BeforeCommitTransaction*(this: var TDF_Attribute) {.
    importcpp: "BeforeCommitTransaction", header: "TDF_Attribute.hxx".}
proc Backup*(this: var TDF_Attribute) {.importcpp: "Backup",
                                    header: "TDF_Attribute.hxx".}
proc IsBackuped*(this: TDF_Attribute): Standard_Boolean {.noSideEffect,
    importcpp: "IsBackuped", header: "TDF_Attribute.hxx".}
proc BackupCopy*(this: TDF_Attribute): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "BackupCopy", header: "TDF_Attribute.hxx".}
proc Restore*(this: var TDF_Attribute; anAttribute: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDF_Attribute.hxx".}
proc DeltaOnAddition*(this: TDF_Attribute): handle[TDF_DeltaOnAddition] {.
    noSideEffect, importcpp: "DeltaOnAddition", header: "TDF_Attribute.hxx".}
proc DeltaOnForget*(this: TDF_Attribute): handle[TDF_DeltaOnForget] {.noSideEffect,
    importcpp: "DeltaOnForget", header: "TDF_Attribute.hxx".}
proc DeltaOnResume*(this: TDF_Attribute): handle[TDF_DeltaOnResume] {.noSideEffect,
    importcpp: "DeltaOnResume", header: "TDF_Attribute.hxx".}
proc DeltaOnModification*(this: TDF_Attribute;
                         anOldAttribute: handle[TDF_Attribute]): handle[
    TDF_DeltaOnModification] {.noSideEffect, importcpp: "DeltaOnModification",
                              header: "TDF_Attribute.hxx".}
proc DeltaOnModification*(this: var TDF_Attribute;
                         aDelta: handle[TDF_DeltaOnModification]) {.
    importcpp: "DeltaOnModification", header: "TDF_Attribute.hxx".}
proc DeltaOnRemoval*(this: TDF_Attribute): handle[TDF_DeltaOnRemoval] {.
    noSideEffect, importcpp: "DeltaOnRemoval", header: "TDF_Attribute.hxx".}
proc NewEmpty*(this: TDF_Attribute): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDF_Attribute.hxx".}
proc Paste*(this: TDF_Attribute; intoAttribute: handle[TDF_Attribute];
           aRelocationTable: handle[TDF_RelocationTable]) {.noSideEffect,
    importcpp: "Paste", header: "TDF_Attribute.hxx".}
proc References*(this: TDF_Attribute; aDataSet: handle[TDF_DataSet]) {.noSideEffect,
    importcpp: "References", header: "TDF_Attribute.hxx".}
proc Dump*(this: TDF_Attribute; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDF_Attribute.hxx".}
proc `<<`*(this: TDF_Attribute; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "(# << #)", header: "TDF_Attribute.hxx".}
proc ExtendedDump*(this: TDF_Attribute; anOS: var Standard_OStream;
                  aFilter: TDF_IDFilter; aMap: var TDF_AttributeIndexedMap) {.
    noSideEffect, importcpp: "ExtendedDump", header: "TDF_Attribute.hxx".}
proc Forget*(this: var TDF_Attribute; aTransaction: Standard_Integer) {.
    importcpp: "Forget", header: "TDF_Attribute.hxx".}
proc DumpJson*(this: TDF_Attribute; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TDF_Attribute.hxx".}
type
  TDF_Attributebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TDF_Attribute::get_type_name(@)",
                              header: "TDF_Attribute.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDF_Attribute::get_type_descriptor(@)",
    header: "TDF_Attribute.hxx".}
proc DynamicType*(this: TDF_Attribute): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TDF_Attribute.hxx".}