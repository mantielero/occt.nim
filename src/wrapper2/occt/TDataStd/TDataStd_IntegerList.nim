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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_ListOfInteger, ../TDF/TDF_Attribute,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../Standard/Standard_OStream, ../Standard/Standard_GUID

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDataStd_IntegerList"
discard "forward decl of TDataStd_IntegerList"
type
  Handle_TDataStd_IntegerList* = handle[TDataStd_IntegerList]

## ! Contains a list of integers.

type
  TDataStd_IntegerList* {.importcpp: "TDataStd_IntegerList",
                         header: "TDataStd_IntegerList.hxx", bycopy.} = object of TDF_Attribute ##
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
                                                                                         ## integer
                                                                                         ## attribute.


proc GetID*(): Standard_GUID {.importcpp: "TDataStd_IntegerList::GetID(@)",
                            header: "TDataStd_IntegerList.hxx".}
proc Set*(label: TDF_Label): handle[TDataStd_IntegerList] {.
    importcpp: "TDataStd_IntegerList::Set(@)", header: "TDataStd_IntegerList.hxx".}
proc Set*(label: TDF_Label; theGuid: Standard_GUID): handle[TDataStd_IntegerList] {.
    importcpp: "TDataStd_IntegerList::Set(@)", header: "TDataStd_IntegerList.hxx".}
proc constructTDataStd_IntegerList*(): TDataStd_IntegerList {.constructor,
    importcpp: "TDataStd_IntegerList(@)", header: "TDataStd_IntegerList.hxx".}
proc IsEmpty*(this: TDataStd_IntegerList): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "TDataStd_IntegerList.hxx".}
proc Extent*(this: TDataStd_IntegerList): Standard_Integer {.noSideEffect,
    importcpp: "Extent", header: "TDataStd_IntegerList.hxx".}
proc Prepend*(this: var TDataStd_IntegerList; value: Standard_Integer) {.
    importcpp: "Prepend", header: "TDataStd_IntegerList.hxx".}
proc Append*(this: var TDataStd_IntegerList; value: Standard_Integer) {.
    importcpp: "Append", header: "TDataStd_IntegerList.hxx".}
proc SetID*(this: var TDataStd_IntegerList; theGuid: Standard_GUID) {.
    importcpp: "SetID", header: "TDataStd_IntegerList.hxx".}
proc SetID*(this: var TDataStd_IntegerList) {.importcpp: "SetID",
    header: "TDataStd_IntegerList.hxx".}
proc InsertBefore*(this: var TDataStd_IntegerList; value: Standard_Integer;
                  before_value: Standard_Integer): Standard_Boolean {.
    importcpp: "InsertBefore", header: "TDataStd_IntegerList.hxx".}
proc InsertBeforeByIndex*(this: var TDataStd_IntegerList; index: Standard_Integer;
                         before_value: Standard_Integer): Standard_Boolean {.
    importcpp: "InsertBeforeByIndex", header: "TDataStd_IntegerList.hxx".}
proc InsertAfter*(this: var TDataStd_IntegerList; value: Standard_Integer;
                 after_value: Standard_Integer): Standard_Boolean {.
    importcpp: "InsertAfter", header: "TDataStd_IntegerList.hxx".}
proc InsertAfterByIndex*(this: var TDataStd_IntegerList; index: Standard_Integer;
                        after_value: Standard_Integer): Standard_Boolean {.
    importcpp: "InsertAfterByIndex", header: "TDataStd_IntegerList.hxx".}
proc Remove*(this: var TDataStd_IntegerList; value: Standard_Integer): Standard_Boolean {.
    importcpp: "Remove", header: "TDataStd_IntegerList.hxx".}
proc RemoveByIndex*(this: var TDataStd_IntegerList; index: Standard_Integer): Standard_Boolean {.
    importcpp: "RemoveByIndex", header: "TDataStd_IntegerList.hxx".}
proc Clear*(this: var TDataStd_IntegerList) {.importcpp: "Clear",
    header: "TDataStd_IntegerList.hxx".}
proc First*(this: TDataStd_IntegerList): Standard_Integer {.noSideEffect,
    importcpp: "First", header: "TDataStd_IntegerList.hxx".}
proc Last*(this: TDataStd_IntegerList): Standard_Integer {.noSideEffect,
    importcpp: "Last", header: "TDataStd_IntegerList.hxx".}
proc List*(this: TDataStd_IntegerList): TColStd_ListOfInteger {.noSideEffect,
    importcpp: "List", header: "TDataStd_IntegerList.hxx".}
proc ID*(this: TDataStd_IntegerList): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_IntegerList.hxx".}
proc Restore*(this: var TDataStd_IntegerList; With: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_IntegerList.hxx".}
proc NewEmpty*(this: TDataStd_IntegerList): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_IntegerList.hxx".}
proc Paste*(this: TDataStd_IntegerList; Into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_IntegerList.hxx".}
proc Dump*(this: TDataStd_IntegerList; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_IntegerList.hxx".}
proc DumpJson*(this: TDataStd_IntegerList; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TDataStd_IntegerList.hxx".}
type
  TDataStd_IntegerListbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TDataStd_IntegerList::get_type_name(@)",
                              header: "TDataStd_IntegerList.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDataStd_IntegerList::get_type_descriptor(@)",
    header: "TDataStd_IntegerList.hxx".}
proc DynamicType*(this: TDataStd_IntegerList): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataStd_IntegerList.hxx".}