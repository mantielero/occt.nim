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
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDataStd_BooleanList"
discard "forward decl of TDataStd_BooleanList"
type
  HandleTDataStdBooleanList* = Handle[TDataStdBooleanList]

## ! Contains a list of bolleans.

type
  TDataStdBooleanList* {.importcpp: "TDataStd_BooleanList",
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


proc getID*(): StandardGUID {.importcpp: "TDataStd_BooleanList::GetID(@)",
                           header: "TDataStd_BooleanList.hxx".}
proc set*(label: TDF_Label): Handle[TDataStdBooleanList] {.
    importcpp: "TDataStd_BooleanList::Set(@)", header: "TDataStd_BooleanList.hxx".}
proc set*(label: TDF_Label; theGuid: StandardGUID): Handle[TDataStdBooleanList] {.
    importcpp: "TDataStd_BooleanList::Set(@)", header: "TDataStd_BooleanList.hxx".}
proc constructTDataStdBooleanList*(): TDataStdBooleanList {.constructor,
    importcpp: "TDataStd_BooleanList(@)", header: "TDataStd_BooleanList.hxx".}
proc isEmpty*(this: TDataStdBooleanList): bool {.noSideEffect, importcpp: "IsEmpty",
    header: "TDataStd_BooleanList.hxx".}
proc extent*(this: TDataStdBooleanList): int {.noSideEffect, importcpp: "Extent",
    header: "TDataStd_BooleanList.hxx".}
proc prepend*(this: var TDataStdBooleanList; value: bool) {.importcpp: "Prepend",
    header: "TDataStd_BooleanList.hxx".}
proc append*(this: var TDataStdBooleanList; value: bool) {.importcpp: "Append",
    header: "TDataStd_BooleanList.hxx".}
proc clear*(this: var TDataStdBooleanList) {.importcpp: "Clear",
    header: "TDataStd_BooleanList.hxx".}
proc first*(this: TDataStdBooleanList): bool {.noSideEffect, importcpp: "First",
    header: "TDataStd_BooleanList.hxx".}
proc last*(this: TDataStdBooleanList): bool {.noSideEffect, importcpp: "Last",
    header: "TDataStd_BooleanList.hxx".}
proc list*(this: TDataStdBooleanList): TDataStdListOfByte {.noSideEffect,
    importcpp: "List", header: "TDataStd_BooleanList.hxx".}
proc insertBefore*(this: var TDataStdBooleanList; index: int; beforeValue: bool): bool {.
    importcpp: "InsertBefore", header: "TDataStd_BooleanList.hxx".}
proc insertAfter*(this: var TDataStdBooleanList; index: int; afterValue: bool): bool {.
    importcpp: "InsertAfter", header: "TDataStd_BooleanList.hxx".}
proc remove*(this: var TDataStdBooleanList; index: int): bool {.importcpp: "Remove",
    header: "TDataStd_BooleanList.hxx".}
proc setID*(this: var TDataStdBooleanList; theGuid: StandardGUID) {.
    importcpp: "SetID", header: "TDataStd_BooleanList.hxx".}
proc setID*(this: var TDataStdBooleanList) {.importcpp: "SetID",
    header: "TDataStd_BooleanList.hxx".}
proc id*(this: TDataStdBooleanList): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_BooleanList.hxx".}
proc restore*(this: var TDataStdBooleanList; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_BooleanList.hxx".}
proc newEmpty*(this: TDataStdBooleanList): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_BooleanList.hxx".}
proc paste*(this: TDataStdBooleanList; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_BooleanList.hxx".}
proc dump*(this: TDataStdBooleanList; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_BooleanList.hxx".}
proc dumpJson*(this: TDataStdBooleanList; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "TDataStd_BooleanList.hxx".}
type
  TDataStdBooleanListbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TDataStd_BooleanList::get_type_name(@)",
                            header: "TDataStd_BooleanList.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDataStd_BooleanList::get_type_descriptor(@)",
    header: "TDataStd_BooleanList.hxx".}
proc dynamicType*(this: TDataStdBooleanList): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataStd_BooleanList.hxx".}
