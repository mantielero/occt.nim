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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TCollection/TCollection_AsciiString, TDocStd_XLinkPtr, ../TDF/TDF_Attribute,
  ../Standard/Standard_Boolean, ../Standard/Standard_OStream

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
  Handle_TDocStd_XLink* = handle[TDocStd_XLink]

## ! An attribute to store the path and the entry of
## ! external links.
## ! These refer from one data structure to a data
## ! structure in another document.

type
  TDocStd_XLink* {.importcpp: "TDocStd_XLink", header: "TDocStd_XLink.hxx", bycopy.} = object of TDF_Attribute ##
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


proc Set*(atLabel: TDF_Label): handle[TDocStd_XLink] {.
    importcpp: "TDocStd_XLink::Set(@)", header: "TDocStd_XLink.hxx".}
proc constructTDocStd_XLink*(): TDocStd_XLink {.constructor,
    importcpp: "TDocStd_XLink(@)", header: "TDocStd_XLink.hxx".}
proc Update*(this: var TDocStd_XLink): handle[TDF_Reference] {.importcpp: "Update",
    header: "TDocStd_XLink.hxx".}
proc ID*(this: TDocStd_XLink): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TDocStd_XLink.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "TDocStd_XLink::GetID(@)",
                            header: "TDocStd_XLink.hxx".}
proc DocumentEntry*(this: var TDocStd_XLink; aDocEntry: TCollection_AsciiString) {.
    importcpp: "DocumentEntry", header: "TDocStd_XLink.hxx".}
proc DocumentEntry*(this: TDocStd_XLink): TCollection_AsciiString {.noSideEffect,
    importcpp: "DocumentEntry", header: "TDocStd_XLink.hxx".}
proc LabelEntry*(this: var TDocStd_XLink; aLabel: TDF_Label) {.
    importcpp: "LabelEntry", header: "TDocStd_XLink.hxx".}
proc LabelEntry*(this: var TDocStd_XLink; aLabEntry: TCollection_AsciiString) {.
    importcpp: "LabelEntry", header: "TDocStd_XLink.hxx".}
proc LabelEntry*(this: TDocStd_XLink): TCollection_AsciiString {.noSideEffect,
    importcpp: "LabelEntry", header: "TDocStd_XLink.hxx".}
proc AfterAddition*(this: var TDocStd_XLink) {.importcpp: "AfterAddition",
    header: "TDocStd_XLink.hxx".}
proc BeforeRemoval*(this: var TDocStd_XLink) {.importcpp: "BeforeRemoval",
    header: "TDocStd_XLink.hxx".}
proc BeforeUndo*(this: var TDocStd_XLink; anAttDelta: handle[TDF_AttributeDelta];
                forceIt: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "BeforeUndo", header: "TDocStd_XLink.hxx".}
proc AfterUndo*(this: var TDocStd_XLink; anAttDelta: handle[TDF_AttributeDelta];
               forceIt: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "AfterUndo", header: "TDocStd_XLink.hxx".}
proc BackupCopy*(this: TDocStd_XLink): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "BackupCopy", header: "TDocStd_XLink.hxx".}
proc Restore*(this: var TDocStd_XLink; anAttribute: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDocStd_XLink.hxx".}
proc NewEmpty*(this: TDocStd_XLink): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDocStd_XLink.hxx".}
proc Paste*(this: TDocStd_XLink; intoAttribute: handle[TDF_Attribute];
           aRelocationTable: handle[TDF_RelocationTable]) {.noSideEffect,
    importcpp: "Paste", header: "TDocStd_XLink.hxx".}
proc Dump*(this: TDocStd_XLink; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDocStd_XLink.hxx".}
type
  TDocStd_XLinkbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TDocStd_XLink::get_type_name(@)",
                              header: "TDocStd_XLink.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDocStd_XLink::get_type_descriptor(@)",
    header: "TDocStd_XLink.hxx".}
proc DynamicType*(this: TDocStd_XLink): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TDocStd_XLink.hxx".}