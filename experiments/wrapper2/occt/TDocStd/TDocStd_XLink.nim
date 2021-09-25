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

discard "forward decl of TDocStd_XLinkRoot"
discard "forward decl of TDocStd_XLinkIterator"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Reference"
discard "forward decl of Standard_GUID"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TDF_AttributeDelta"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDocStd_XLink"
discard "forward decl of TDocStd_XLink"
type
  HandleTDocStdXLink* = Handle[TDocStdXLink]

## ! An attribute to store the path and the entry of
## ! external links.
## ! These refer from one data structure to a data
## ! structure in another document.

type
  TDocStdXLink* {.importcpp: "TDocStd_XLink", header: "TDocStd_XLink.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                                    ## !
                                                                                                    ## Sets
                                                                                                    ## an
                                                                                                    ## empty
                                                                                                    ## external
                                                                                                    ## reference,
                                                                                                    ## at
                                                                                                    ## the
                                                                                                    ## label
                                                                                                    ## aLabel.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Sets
                                                                                                    ## the
                                                                                                    ## field
                                                                                                    ## <myNext>
                                                                                                    ## with
                                                                                                    ## <anXLinkPtr>.


proc set*(atLabel: TDF_Label): Handle[TDocStdXLink] {.
    importcpp: "TDocStd_XLink::Set(@)", header: "TDocStd_XLink.hxx".}
proc constructTDocStdXLink*(): TDocStdXLink {.constructor,
    importcpp: "TDocStd_XLink(@)", header: "TDocStd_XLink.hxx".}
proc update*(this: var TDocStdXLink): Handle[TDF_Reference] {.importcpp: "Update",
    header: "TDocStd_XLink.hxx".}
proc id*(this: TDocStdXLink): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TDocStd_XLink.hxx".}
proc getID*(): StandardGUID {.importcpp: "TDocStd_XLink::GetID(@)",
                           header: "TDocStd_XLink.hxx".}
proc documentEntry*(this: var TDocStdXLink; aDocEntry: TCollectionAsciiString) {.
    importcpp: "DocumentEntry", header: "TDocStd_XLink.hxx".}
proc documentEntry*(this: TDocStdXLink): TCollectionAsciiString {.noSideEffect,
    importcpp: "DocumentEntry", header: "TDocStd_XLink.hxx".}
proc labelEntry*(this: var TDocStdXLink; aLabel: TDF_Label) {.importcpp: "LabelEntry",
    header: "TDocStd_XLink.hxx".}
proc labelEntry*(this: var TDocStdXLink; aLabEntry: TCollectionAsciiString) {.
    importcpp: "LabelEntry", header: "TDocStd_XLink.hxx".}
proc labelEntry*(this: TDocStdXLink): TCollectionAsciiString {.noSideEffect,
    importcpp: "LabelEntry", header: "TDocStd_XLink.hxx".}
proc afterAddition*(this: var TDocStdXLink) {.importcpp: "AfterAddition",
    header: "TDocStd_XLink.hxx".}
proc beforeRemoval*(this: var TDocStdXLink) {.importcpp: "BeforeRemoval",
    header: "TDocStd_XLink.hxx".}
proc beforeUndo*(this: var TDocStdXLink; anAttDelta: Handle[TDF_AttributeDelta];
                forceIt: bool = false): bool {.importcpp: "BeforeUndo",
    header: "TDocStd_XLink.hxx".}
proc afterUndo*(this: var TDocStdXLink; anAttDelta: Handle[TDF_AttributeDelta];
               forceIt: bool = false): bool {.importcpp: "AfterUndo",
    header: "TDocStd_XLink.hxx".}
proc backupCopy*(this: TDocStdXLink): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "BackupCopy", header: "TDocStd_XLink.hxx".}
proc restore*(this: var TDocStdXLink; anAttribute: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDocStd_XLink.hxx".}
proc newEmpty*(this: TDocStdXLink): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDocStd_XLink.hxx".}
proc paste*(this: TDocStdXLink; intoAttribute: Handle[TDF_Attribute];
           aRelocationTable: Handle[TDF_RelocationTable]) {.noSideEffect,
    importcpp: "Paste", header: "TDocStd_XLink.hxx".}
proc dump*(this: TDocStdXLink; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDocStd_XLink.hxx".}
type
  TDocStdXLinkbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TDocStd_XLink::get_type_name(@)",
                            header: "TDocStd_XLink.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDocStd_XLink::get_type_descriptor(@)",
    header: "TDocStd_XLink.hxx".}
proc dynamicType*(this: TDocStdXLink): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDocStd_XLink.hxx".}
