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
  ../Standard/Standard, ../Standard/Standard_Type, ../TColStd/TColStd_ListOfReal,
  ../TDF/TDF_Attribute, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ../Standard/Standard_OStream, ../Standard/Standard_GUID

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDataStd_RealList"
discard "forward decl of TDataStd_RealList"
type
  Handle_TDataStd_RealList* = handle[TDataStd_RealList]

## ! Contains a list of doubles.

type
  TDataStd_RealList* {.importcpp: "TDataStd_RealList",
                      header: "TDataStd_RealList.hxx", bycopy.} = object of TDF_Attribute ##
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
                                                                                   ## doubles
                                                                                   ## attribute.


proc GetID*(): Standard_GUID {.importcpp: "TDataStd_RealList::GetID(@)",
                            header: "TDataStd_RealList.hxx".}
proc Set*(label: TDF_Label): handle[TDataStd_RealList] {.
    importcpp: "TDataStd_RealList::Set(@)", header: "TDataStd_RealList.hxx".}
proc Set*(label: TDF_Label; theGuid: Standard_GUID): handle[TDataStd_RealList] {.
    importcpp: "TDataStd_RealList::Set(@)", header: "TDataStd_RealList.hxx".}
proc constructTDataStd_RealList*(): TDataStd_RealList {.constructor,
    importcpp: "TDataStd_RealList(@)", header: "TDataStd_RealList.hxx".}
proc IsEmpty*(this: TDataStd_RealList): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "TDataStd_RealList.hxx".}
proc Extent*(this: TDataStd_RealList): Standard_Integer {.noSideEffect,
    importcpp: "Extent", header: "TDataStd_RealList.hxx".}
proc Prepend*(this: var TDataStd_RealList; value: Standard_Real) {.
    importcpp: "Prepend", header: "TDataStd_RealList.hxx".}
proc Append*(this: var TDataStd_RealList; value: Standard_Real) {.importcpp: "Append",
    header: "TDataStd_RealList.hxx".}
proc SetID*(this: var TDataStd_RealList; theGuid: Standard_GUID) {.importcpp: "SetID",
    header: "TDataStd_RealList.hxx".}
proc SetID*(this: var TDataStd_RealList) {.importcpp: "SetID",
                                       header: "TDataStd_RealList.hxx".}
proc InsertBefore*(this: var TDataStd_RealList; value: Standard_Real;
                  before_value: Standard_Real): Standard_Boolean {.
    importcpp: "InsertBefore", header: "TDataStd_RealList.hxx".}
proc InsertBeforeByIndex*(this: var TDataStd_RealList; index: Standard_Integer;
                         before_value: Standard_Real): Standard_Boolean {.
    importcpp: "InsertBeforeByIndex", header: "TDataStd_RealList.hxx".}
proc InsertAfter*(this: var TDataStd_RealList; value: Standard_Real;
                 after_value: Standard_Real): Standard_Boolean {.
    importcpp: "InsertAfter", header: "TDataStd_RealList.hxx".}
proc InsertAfterByIndex*(this: var TDataStd_RealList; index: Standard_Integer;
                        after_value: Standard_Real): Standard_Boolean {.
    importcpp: "InsertAfterByIndex", header: "TDataStd_RealList.hxx".}
proc Remove*(this: var TDataStd_RealList; value: Standard_Real): Standard_Boolean {.
    importcpp: "Remove", header: "TDataStd_RealList.hxx".}
proc RemoveByIndex*(this: var TDataStd_RealList; index: Standard_Integer): Standard_Boolean {.
    importcpp: "RemoveByIndex", header: "TDataStd_RealList.hxx".}
proc Clear*(this: var TDataStd_RealList) {.importcpp: "Clear",
                                       header: "TDataStd_RealList.hxx".}
proc First*(this: TDataStd_RealList): Standard_Real {.noSideEffect,
    importcpp: "First", header: "TDataStd_RealList.hxx".}
proc Last*(this: TDataStd_RealList): Standard_Real {.noSideEffect, importcpp: "Last",
    header: "TDataStd_RealList.hxx".}
proc List*(this: TDataStd_RealList): TColStd_ListOfReal {.noSideEffect,
    importcpp: "List", header: "TDataStd_RealList.hxx".}
proc ID*(this: TDataStd_RealList): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_RealList.hxx".}
proc Restore*(this: var TDataStd_RealList; With: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_RealList.hxx".}
proc NewEmpty*(this: TDataStd_RealList): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_RealList.hxx".}
proc Paste*(this: TDataStd_RealList; Into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_RealList.hxx".}
proc Dump*(this: TDataStd_RealList; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_RealList.hxx".}
proc DumpJson*(this: TDataStd_RealList; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TDataStd_RealList.hxx".}
type
  TDataStd_RealListbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TDataStd_RealList::get_type_name(@)",
                              header: "TDataStd_RealList.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDataStd_RealList::get_type_descriptor(@)",
    header: "TDataStd_RealList.hxx".}
proc DynamicType*(this: TDataStd_RealList): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataStd_RealList.hxx".}