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

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDataStd_ExtStringList"
discard "forward decl of TDataStd_ExtStringList"
type
  HandleTDataStdExtStringList* = Handle[TDataStdExtStringList]

## ! Contains a list of ExtendedString.

type
  TDataStdExtStringList* {.importcpp: "TDataStd_ExtStringList",
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


proc getID*(): StandardGUID {.importcpp: "TDataStd_ExtStringList::GetID(@)",
                           header: "TDataStd_ExtStringList.hxx".}
proc set*(label: TDF_Label): Handle[TDataStdExtStringList] {.
    importcpp: "TDataStd_ExtStringList::Set(@)",
    header: "TDataStd_ExtStringList.hxx".}
proc set*(label: TDF_Label; theGuid: StandardGUID): Handle[TDataStdExtStringList] {.
    importcpp: "TDataStd_ExtStringList::Set(@)",
    header: "TDataStd_ExtStringList.hxx".}
proc constructTDataStdExtStringList*(): TDataStdExtStringList {.constructor,
    importcpp: "TDataStd_ExtStringList(@)", header: "TDataStd_ExtStringList.hxx".}
proc isEmpty*(this: TDataStdExtStringList): bool {.noSideEffect,
    importcpp: "IsEmpty", header: "TDataStd_ExtStringList.hxx".}
proc extent*(this: TDataStdExtStringList): int {.noSideEffect, importcpp: "Extent",
    header: "TDataStd_ExtStringList.hxx".}
proc prepend*(this: var TDataStdExtStringList; value: TCollectionExtendedString) {.
    importcpp: "Prepend", header: "TDataStd_ExtStringList.hxx".}
proc append*(this: var TDataStdExtStringList; value: TCollectionExtendedString) {.
    importcpp: "Append", header: "TDataStd_ExtStringList.hxx".}
proc setID*(this: var TDataStdExtStringList; theGuid: StandardGUID) {.
    importcpp: "SetID", header: "TDataStd_ExtStringList.hxx".}
proc setID*(this: var TDataStdExtStringList) {.importcpp: "SetID",
    header: "TDataStd_ExtStringList.hxx".}
proc insertBefore*(this: var TDataStdExtStringList;
                  value: TCollectionExtendedString;
                  beforeValue: TCollectionExtendedString): bool {.
    importcpp: "InsertBefore", header: "TDataStd_ExtStringList.hxx".}
proc insertBefore*(this: var TDataStdExtStringList; index: int;
                  beforeValue: TCollectionExtendedString): bool {.
    importcpp: "InsertBefore", header: "TDataStd_ExtStringList.hxx".}
proc insertAfter*(this: var TDataStdExtStringList; value: TCollectionExtendedString;
                 afterValue: TCollectionExtendedString): bool {.
    importcpp: "InsertAfter", header: "TDataStd_ExtStringList.hxx".}
proc insertAfter*(this: var TDataStdExtStringList; index: int;
                 afterValue: TCollectionExtendedString): bool {.
    importcpp: "InsertAfter", header: "TDataStd_ExtStringList.hxx".}
proc remove*(this: var TDataStdExtStringList; value: TCollectionExtendedString): bool {.
    importcpp: "Remove", header: "TDataStd_ExtStringList.hxx".}
proc remove*(this: var TDataStdExtStringList; index: int): bool {.importcpp: "Remove",
    header: "TDataStd_ExtStringList.hxx".}
proc clear*(this: var TDataStdExtStringList) {.importcpp: "Clear",
    header: "TDataStd_ExtStringList.hxx".}
proc first*(this: TDataStdExtStringList): TCollectionExtendedString {.noSideEffect,
    importcpp: "First", header: "TDataStd_ExtStringList.hxx".}
proc last*(this: TDataStdExtStringList): TCollectionExtendedString {.noSideEffect,
    importcpp: "Last", header: "TDataStd_ExtStringList.hxx".}
proc list*(this: TDataStdExtStringList): TDataStdListOfExtendedString {.
    noSideEffect, importcpp: "List", header: "TDataStd_ExtStringList.hxx".}
proc id*(this: TDataStdExtStringList): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_ExtStringList.hxx".}
proc restore*(this: var TDataStdExtStringList; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_ExtStringList.hxx".}
proc newEmpty*(this: TDataStdExtStringList): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_ExtStringList.hxx".}
proc paste*(this: TDataStdExtStringList; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_ExtStringList.hxx".}
proc dump*(this: TDataStdExtStringList; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_ExtStringList.hxx".}
proc dumpJson*(this: TDataStdExtStringList; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "TDataStd_ExtStringList.hxx".}
type
  TDataStdExtStringListbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TDataStd_ExtStringList::get_type_name(@)",
                            header: "TDataStd_ExtStringList.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDataStd_ExtStringList::get_type_descriptor(@)",
    header: "TDataStd_ExtStringList.hxx".}
proc dynamicType*(this: TDataStdExtStringList): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataStd_ExtStringList.hxx".}
