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
  ../Standard/Standard, ../Standard/Standard_Type, TDataStd_ListOfByte,
  ../TDF/TDF_Attribute, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../Standard/Standard_OStream,
  ../Standard/Standard_GUID

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDataStd_BooleanList"
discard "forward decl of TDataStd_BooleanList"
type
  Handle_TDataStd_BooleanList* = handle[TDataStd_BooleanList]

## ! Contains a list of bolleans.

type
  TDataStd_BooleanList* {.importcpp: "TDataStd_BooleanList",
                         header: "TDataStd_BooleanList.hxx", bycopy.} = object of TDF_Attribute ##
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
                                                                                         ## booleans
                                                                                         ## attribute.


proc GetID*(): Standard_GUID {.importcpp: "TDataStd_BooleanList::GetID(@)",
                            header: "TDataStd_BooleanList.hxx".}
proc Set*(label: TDF_Label): handle[TDataStd_BooleanList] {.
    importcpp: "TDataStd_BooleanList::Set(@)", header: "TDataStd_BooleanList.hxx".}
proc Set*(label: TDF_Label; theGuid: Standard_GUID): handle[TDataStd_BooleanList] {.
    importcpp: "TDataStd_BooleanList::Set(@)", header: "TDataStd_BooleanList.hxx".}
proc constructTDataStd_BooleanList*(): TDataStd_BooleanList {.constructor,
    importcpp: "TDataStd_BooleanList(@)", header: "TDataStd_BooleanList.hxx".}
proc IsEmpty*(this: TDataStd_BooleanList): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "TDataStd_BooleanList.hxx".}
proc Extent*(this: TDataStd_BooleanList): Standard_Integer {.noSideEffect,
    importcpp: "Extent", header: "TDataStd_BooleanList.hxx".}
proc Prepend*(this: var TDataStd_BooleanList; value: Standard_Boolean) {.
    importcpp: "Prepend", header: "TDataStd_BooleanList.hxx".}
proc Append*(this: var TDataStd_BooleanList; value: Standard_Boolean) {.
    importcpp: "Append", header: "TDataStd_BooleanList.hxx".}
proc Clear*(this: var TDataStd_BooleanList) {.importcpp: "Clear",
    header: "TDataStd_BooleanList.hxx".}
proc First*(this: TDataStd_BooleanList): Standard_Boolean {.noSideEffect,
    importcpp: "First", header: "TDataStd_BooleanList.hxx".}
proc Last*(this: TDataStd_BooleanList): Standard_Boolean {.noSideEffect,
    importcpp: "Last", header: "TDataStd_BooleanList.hxx".}
proc List*(this: TDataStd_BooleanList): TDataStd_ListOfByte {.noSideEffect,
    importcpp: "List", header: "TDataStd_BooleanList.hxx".}
proc InsertBefore*(this: var TDataStd_BooleanList; index: Standard_Integer;
                  before_value: Standard_Boolean): Standard_Boolean {.
    importcpp: "InsertBefore", header: "TDataStd_BooleanList.hxx".}
proc InsertAfter*(this: var TDataStd_BooleanList; index: Standard_Integer;
                 after_value: Standard_Boolean): Standard_Boolean {.
    importcpp: "InsertAfter", header: "TDataStd_BooleanList.hxx".}
proc Remove*(this: var TDataStd_BooleanList; index: Standard_Integer): Standard_Boolean {.
    importcpp: "Remove", header: "TDataStd_BooleanList.hxx".}
proc SetID*(this: var TDataStd_BooleanList; theGuid: Standard_GUID) {.
    importcpp: "SetID", header: "TDataStd_BooleanList.hxx".}
proc SetID*(this: var TDataStd_BooleanList) {.importcpp: "SetID",
    header: "TDataStd_BooleanList.hxx".}
proc ID*(this: TDataStd_BooleanList): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_BooleanList.hxx".}
proc Restore*(this: var TDataStd_BooleanList; With: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_BooleanList.hxx".}
proc NewEmpty*(this: TDataStd_BooleanList): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_BooleanList.hxx".}
proc Paste*(this: TDataStd_BooleanList; Into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_BooleanList.hxx".}
proc Dump*(this: TDataStd_BooleanList; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_BooleanList.hxx".}
proc DumpJson*(this: TDataStd_BooleanList; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TDataStd_BooleanList.hxx".}
type
  TDataStd_BooleanListbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TDataStd_BooleanList::get_type_name(@)",
                              header: "TDataStd_BooleanList.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDataStd_BooleanList::get_type_descriptor(@)",
    header: "TDataStd_BooleanList.hxx".}
proc DynamicType*(this: TDataStd_BooleanList): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataStd_BooleanList.hxx".}