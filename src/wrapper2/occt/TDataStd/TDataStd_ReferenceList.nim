##  Created on: 2007-05-29
##  Created by: Vlad Romashko
##  Copyright (c) 2007-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../TDF/TDF_LabelList,
  ../TDF/TDF_Attribute, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../Standard/Standard_OStream,
  ../Standard/Standard_GUID

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_DataSet"
discard "forward decl of TDataStd_ReferenceList"
discard "forward decl of TDataStd_ReferenceList"
type
  Handle_TDataStd_ReferenceList* = handle[TDataStd_ReferenceList]

## ! Contains a list of references.

type
  TDataStd_ReferenceList* {.importcpp: "TDataStd_ReferenceList",
                           header: "TDataStd_ReferenceList.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                             ## !
                                                                                             ## Static
                                                                                             ## methods
                                                                                             ##
                                                                                             ## !
                                                                                             ## ==============
                                                                                             ##
                                                                                             ## !
                                                                                             ## Returns
                                                                                             ## the
                                                                                             ## ID
                                                                                             ## of
                                                                                             ## the
                                                                                             ## list
                                                                                             ## of
                                                                                             ## references
                                                                                             ## (labels)
                                                                                             ## attribute.


proc GetID*(): Standard_GUID {.importcpp: "TDataStd_ReferenceList::GetID(@)",
                            header: "TDataStd_ReferenceList.hxx".}
proc Set*(label: TDF_Label): handle[TDataStd_ReferenceList] {.
    importcpp: "TDataStd_ReferenceList::Set(@)",
    header: "TDataStd_ReferenceList.hxx".}
proc Set*(label: TDF_Label; theGuid: Standard_GUID): handle[TDataStd_ReferenceList] {.
    importcpp: "TDataStd_ReferenceList::Set(@)",
    header: "TDataStd_ReferenceList.hxx".}
proc constructTDataStd_ReferenceList*(): TDataStd_ReferenceList {.constructor,
    importcpp: "TDataStd_ReferenceList(@)", header: "TDataStd_ReferenceList.hxx".}
proc IsEmpty*(this: TDataStd_ReferenceList): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "TDataStd_ReferenceList.hxx".}
proc Extent*(this: TDataStd_ReferenceList): Standard_Integer {.noSideEffect,
    importcpp: "Extent", header: "TDataStd_ReferenceList.hxx".}
proc Prepend*(this: var TDataStd_ReferenceList; value: TDF_Label) {.
    importcpp: "Prepend", header: "TDataStd_ReferenceList.hxx".}
proc Append*(this: var TDataStd_ReferenceList; value: TDF_Label) {.
    importcpp: "Append", header: "TDataStd_ReferenceList.hxx".}
proc SetID*(this: var TDataStd_ReferenceList; theGuid: Standard_GUID) {.
    importcpp: "SetID", header: "TDataStd_ReferenceList.hxx".}
proc SetID*(this: var TDataStd_ReferenceList) {.importcpp: "SetID",
    header: "TDataStd_ReferenceList.hxx".}
proc InsertBefore*(this: var TDataStd_ReferenceList; value: TDF_Label;
                  before_value: TDF_Label): Standard_Boolean {.
    importcpp: "InsertBefore", header: "TDataStd_ReferenceList.hxx".}
proc InsertBefore*(this: var TDataStd_ReferenceList; index: Standard_Integer;
                  before_value: TDF_Label): Standard_Boolean {.
    importcpp: "InsertBefore", header: "TDataStd_ReferenceList.hxx".}
proc InsertAfter*(this: var TDataStd_ReferenceList; value: TDF_Label;
                 after_value: TDF_Label): Standard_Boolean {.
    importcpp: "InsertAfter", header: "TDataStd_ReferenceList.hxx".}
proc InsertAfter*(this: var TDataStd_ReferenceList; index: Standard_Integer;
                 after_value: TDF_Label): Standard_Boolean {.
    importcpp: "InsertAfter", header: "TDataStd_ReferenceList.hxx".}
proc Remove*(this: var TDataStd_ReferenceList; value: TDF_Label): Standard_Boolean {.
    importcpp: "Remove", header: "TDataStd_ReferenceList.hxx".}
proc Remove*(this: var TDataStd_ReferenceList; index: Standard_Integer): Standard_Boolean {.
    importcpp: "Remove", header: "TDataStd_ReferenceList.hxx".}
proc Clear*(this: var TDataStd_ReferenceList) {.importcpp: "Clear",
    header: "TDataStd_ReferenceList.hxx".}
proc First*(this: TDataStd_ReferenceList): TDF_Label {.noSideEffect,
    importcpp: "First", header: "TDataStd_ReferenceList.hxx".}
proc Last*(this: TDataStd_ReferenceList): TDF_Label {.noSideEffect,
    importcpp: "Last", header: "TDataStd_ReferenceList.hxx".}
proc List*(this: TDataStd_ReferenceList): TDF_LabelList {.noSideEffect,
    importcpp: "List", header: "TDataStd_ReferenceList.hxx".}
proc ID*(this: TDataStd_ReferenceList): Standard_GUID {.noSideEffect,
    importcpp: "ID", header: "TDataStd_ReferenceList.hxx".}
proc Restore*(this: var TDataStd_ReferenceList; With: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_ReferenceList.hxx".}
proc NewEmpty*(this: TDataStd_ReferenceList): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_ReferenceList.hxx".}
proc Paste*(this: TDataStd_ReferenceList; Into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_ReferenceList.hxx".}
proc References*(this: TDataStd_ReferenceList; DS: handle[TDF_DataSet]) {.
    noSideEffect, importcpp: "References", header: "TDataStd_ReferenceList.hxx".}
proc Dump*(this: TDataStd_ReferenceList; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_ReferenceList.hxx".}
proc DumpJson*(this: TDataStd_ReferenceList; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TDataStd_ReferenceList.hxx".}
type
  TDataStd_ReferenceListbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TDataStd_ReferenceList::get_type_name(@)",
                              header: "TDataStd_ReferenceList.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDataStd_ReferenceList::get_type_descriptor(@)",
    header: "TDataStd_ReferenceList.hxx".}
proc DynamicType*(this: TDataStd_ReferenceList): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "TDataStd_ReferenceList.hxx".}