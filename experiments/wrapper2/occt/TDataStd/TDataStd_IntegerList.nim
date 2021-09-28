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
discard "forward decl of TDataStd_IntegerList"
discard "forward decl of TDataStd_IntegerList"
type
  HandleC1C1* = Handle[TDataStdIntegerList]

## ! Contains a list of integers.

type
  TDataStdIntegerList* {.importcpp: "TDataStd_IntegerList",
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


proc getID*(): StandardGUID {.importcpp: "TDataStd_IntegerList::GetID(@)",
                           header: "TDataStd_IntegerList.hxx".}
proc set*(label: TDF_Label): Handle[TDataStdIntegerList] {.
    importcpp: "TDataStd_IntegerList::Set(@)", header: "TDataStd_IntegerList.hxx".}
proc set*(label: TDF_Label; theGuid: StandardGUID): Handle[TDataStdIntegerList] {.
    importcpp: "TDataStd_IntegerList::Set(@)", header: "TDataStd_IntegerList.hxx".}
proc constructTDataStdIntegerList*(): TDataStdIntegerList {.constructor,
    importcpp: "TDataStd_IntegerList(@)", header: "TDataStd_IntegerList.hxx".}
proc isEmpty*(this: TDataStdIntegerList): bool {.noSideEffect, importcpp: "IsEmpty",
    header: "TDataStd_IntegerList.hxx".}
proc extent*(this: TDataStdIntegerList): cint {.noSideEffect, importcpp: "Extent",
    header: "TDataStd_IntegerList.hxx".}
proc prepend*(this: var TDataStdIntegerList; value: cint) {.importcpp: "Prepend",
    header: "TDataStd_IntegerList.hxx".}
proc append*(this: var TDataStdIntegerList; value: cint) {.importcpp: "Append",
    header: "TDataStd_IntegerList.hxx".}
proc setID*(this: var TDataStdIntegerList; theGuid: StandardGUID) {.
    importcpp: "SetID", header: "TDataStd_IntegerList.hxx".}
proc setID*(this: var TDataStdIntegerList) {.importcpp: "SetID",
    header: "TDataStd_IntegerList.hxx".}
proc insertBefore*(this: var TDataStdIntegerList; value: cint; beforeValue: cint): bool {.
    importcpp: "InsertBefore", header: "TDataStd_IntegerList.hxx".}
proc insertBeforeByIndex*(this: var TDataStdIntegerList; index: cint;
                         beforeValue: cint): bool {.
    importcpp: "InsertBeforeByIndex", header: "TDataStd_IntegerList.hxx".}
proc insertAfter*(this: var TDataStdIntegerList; value: cint; afterValue: cint): bool {.
    importcpp: "InsertAfter", header: "TDataStd_IntegerList.hxx".}
proc insertAfterByIndex*(this: var TDataStdIntegerList; index: cint; afterValue: cint): bool {.
    importcpp: "InsertAfterByIndex", header: "TDataStd_IntegerList.hxx".}
proc remove*(this: var TDataStdIntegerList; value: cint): bool {.importcpp: "Remove",
    header: "TDataStd_IntegerList.hxx".}
proc removeByIndex*(this: var TDataStdIntegerList; index: cint): bool {.
    importcpp: "RemoveByIndex", header: "TDataStd_IntegerList.hxx".}
proc clear*(this: var TDataStdIntegerList) {.importcpp: "Clear",
    header: "TDataStd_IntegerList.hxx".}
proc first*(this: TDataStdIntegerList): cint {.noSideEffect, importcpp: "First",
    header: "TDataStd_IntegerList.hxx".}
proc last*(this: TDataStdIntegerList): cint {.noSideEffect, importcpp: "Last",
    header: "TDataStd_IntegerList.hxx".}
proc list*(this: TDataStdIntegerList): TColStdListOfInteger {.noSideEffect,
    importcpp: "List", header: "TDataStd_IntegerList.hxx".}
proc id*(this: TDataStdIntegerList): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_IntegerList.hxx".}
proc restore*(this: var TDataStdIntegerList; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_IntegerList.hxx".}
proc newEmpty*(this: TDataStdIntegerList): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_IntegerList.hxx".}
proc paste*(this: TDataStdIntegerList; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_IntegerList.hxx".}
proc dump*(this: TDataStdIntegerList; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_IntegerList.hxx".}
proc dumpJson*(this: TDataStdIntegerList; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "TDataStd_IntegerList.hxx".}
type
  TDataStdIntegerListbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TDataStd_IntegerList::get_type_name(@)",
                            header: "TDataStd_IntegerList.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDataStd_IntegerList::get_type_descriptor(@)",
    header: "TDataStd_IntegerList.hxx".}
proc dynamicType*(this: TDataStdIntegerList): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataStd_IntegerList.hxx".}

























