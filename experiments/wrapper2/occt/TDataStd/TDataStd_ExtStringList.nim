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
  ../Standard/Standard, ../Standard/Standard_Type, TDataStd_ListOfExtendedString,
  ../TDF/TDF_Attribute, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../Standard/Standard_OStream,
  ../Standard/Standard_GUID

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDataStd_ExtStringList"
discard "forward decl of TDataStd_ExtStringList"
type
  Handle_TDataStd_ExtStringList* = handle[TDataStd_ExtStringList]

## ! Contains a list of ExtendedString.

type
  TDataStd_ExtStringList* {.importcpp: "TDataStd_ExtStringList",
                           header: "TDataStd_ExtStringList.hxx", bycopy.} = object of TDF_Attribute ##
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
                                                                                             ## strings
                                                                                             ## attribute.


proc GetID*(): Standard_GUID {.importcpp: "TDataStd_ExtStringList::GetID(@)",
                            header: "TDataStd_ExtStringList.hxx".}
proc Set*(label: TDF_Label): handle[TDataStd_ExtStringList] {.
    importcpp: "TDataStd_ExtStringList::Set(@)",
    header: "TDataStd_ExtStringList.hxx".}
proc Set*(label: TDF_Label; theGuid: Standard_GUID): handle[TDataStd_ExtStringList] {.
    importcpp: "TDataStd_ExtStringList::Set(@)",
    header: "TDataStd_ExtStringList.hxx".}
proc constructTDataStd_ExtStringList*(): TDataStd_ExtStringList {.constructor,
    importcpp: "TDataStd_ExtStringList(@)", header: "TDataStd_ExtStringList.hxx".}
proc IsEmpty*(this: TDataStd_ExtStringList): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "TDataStd_ExtStringList.hxx".}
proc Extent*(this: TDataStd_ExtStringList): Standard_Integer {.noSideEffect,
    importcpp: "Extent", header: "TDataStd_ExtStringList.hxx".}
proc Prepend*(this: var TDataStd_ExtStringList; value: TCollection_ExtendedString) {.
    importcpp: "Prepend", header: "TDataStd_ExtStringList.hxx".}
proc Append*(this: var TDataStd_ExtStringList; value: TCollection_ExtendedString) {.
    importcpp: "Append", header: "TDataStd_ExtStringList.hxx".}
proc SetID*(this: var TDataStd_ExtStringList; theGuid: Standard_GUID) {.
    importcpp: "SetID", header: "TDataStd_ExtStringList.hxx".}
proc SetID*(this: var TDataStd_ExtStringList) {.importcpp: "SetID",
    header: "TDataStd_ExtStringList.hxx".}
proc InsertBefore*(this: var TDataStd_ExtStringList;
                  value: TCollection_ExtendedString;
                  before_value: TCollection_ExtendedString): Standard_Boolean {.
    importcpp: "InsertBefore", header: "TDataStd_ExtStringList.hxx".}
proc InsertBefore*(this: var TDataStd_ExtStringList; index: Standard_Integer;
                  before_value: TCollection_ExtendedString): Standard_Boolean {.
    importcpp: "InsertBefore", header: "TDataStd_ExtStringList.hxx".}
proc InsertAfter*(this: var TDataStd_ExtStringList;
                 value: TCollection_ExtendedString;
                 after_value: TCollection_ExtendedString): Standard_Boolean {.
    importcpp: "InsertAfter", header: "TDataStd_ExtStringList.hxx".}
proc InsertAfter*(this: var TDataStd_ExtStringList; index: Standard_Integer;
                 after_value: TCollection_ExtendedString): Standard_Boolean {.
    importcpp: "InsertAfter", header: "TDataStd_ExtStringList.hxx".}
proc Remove*(this: var TDataStd_ExtStringList; value: TCollection_ExtendedString): Standard_Boolean {.
    importcpp: "Remove", header: "TDataStd_ExtStringList.hxx".}
proc Remove*(this: var TDataStd_ExtStringList; index: Standard_Integer): Standard_Boolean {.
    importcpp: "Remove", header: "TDataStd_ExtStringList.hxx".}
proc Clear*(this: var TDataStd_ExtStringList) {.importcpp: "Clear",
    header: "TDataStd_ExtStringList.hxx".}
proc First*(this: TDataStd_ExtStringList): TCollection_ExtendedString {.
    noSideEffect, importcpp: "First", header: "TDataStd_ExtStringList.hxx".}
proc Last*(this: TDataStd_ExtStringList): TCollection_ExtendedString {.noSideEffect,
    importcpp: "Last", header: "TDataStd_ExtStringList.hxx".}
proc List*(this: TDataStd_ExtStringList): TDataStd_ListOfExtendedString {.
    noSideEffect, importcpp: "List", header: "TDataStd_ExtStringList.hxx".}
proc ID*(this: TDataStd_ExtStringList): Standard_GUID {.noSideEffect,
    importcpp: "ID", header: "TDataStd_ExtStringList.hxx".}
proc Restore*(this: var TDataStd_ExtStringList; With: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_ExtStringList.hxx".}
proc NewEmpty*(this: TDataStd_ExtStringList): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_ExtStringList.hxx".}
proc Paste*(this: TDataStd_ExtStringList; Into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_ExtStringList.hxx".}
proc Dump*(this: TDataStd_ExtStringList; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_ExtStringList.hxx".}
proc DumpJson*(this: TDataStd_ExtStringList; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TDataStd_ExtStringList.hxx".}
type
  TDataStd_ExtStringListbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TDataStd_ExtStringList::get_type_name(@)",
                              header: "TDataStd_ExtStringList.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDataStd_ExtStringList::get_type_descriptor(@)",
    header: "TDataStd_ExtStringList.hxx".}
proc DynamicType*(this: TDataStd_ExtStringList): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "TDataStd_ExtStringList.hxx".}