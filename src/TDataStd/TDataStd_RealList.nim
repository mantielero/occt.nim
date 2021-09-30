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
discard "forward decl of TDataStd_RealList"
discard "forward decl of TDataStd_RealList"
type
  HandleC1C1* = Handle[TDataStdRealList]

## ! Contains a list of doubles.

type
  TDataStdRealList* {.importcpp: "TDataStd_RealList",
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


proc getID*(): StandardGUID {.importcpp: "TDataStd_RealList::GetID(@)",
                           header: "TDataStd_RealList.hxx".}
proc set*(label: TDF_Label): Handle[TDataStdRealList] {.
    importcpp: "TDataStd_RealList::Set(@)", header: "TDataStd_RealList.hxx".}
proc set*(label: TDF_Label; theGuid: StandardGUID): Handle[TDataStdRealList] {.
    importcpp: "TDataStd_RealList::Set(@)", header: "TDataStd_RealList.hxx".}
proc constructTDataStdRealList*(): TDataStdRealList {.constructor,
    importcpp: "TDataStd_RealList(@)", header: "TDataStd_RealList.hxx".}
proc isEmpty*(this: TDataStdRealList): bool {.noSideEffect, importcpp: "IsEmpty",
    header: "TDataStd_RealList.hxx".}
proc extent*(this: TDataStdRealList): cint {.noSideEffect, importcpp: "Extent",
    header: "TDataStd_RealList.hxx".}
proc prepend*(this: var TDataStdRealList; value: cfloat) {.importcpp: "Prepend",
    header: "TDataStd_RealList.hxx".}
proc append*(this: var TDataStdRealList; value: cfloat) {.importcpp: "Append",
    header: "TDataStd_RealList.hxx".}
proc setID*(this: var TDataStdRealList; theGuid: StandardGUID) {.importcpp: "SetID",
    header: "TDataStd_RealList.hxx".}
proc setID*(this: var TDataStdRealList) {.importcpp: "SetID",
                                      header: "TDataStd_RealList.hxx".}
proc insertBefore*(this: var TDataStdRealList; value: cfloat; beforeValue: cfloat): bool {.
    importcpp: "InsertBefore", header: "TDataStd_RealList.hxx".}
proc insertBeforeByIndex*(this: var TDataStdRealList; index: cint; beforeValue: cfloat): bool {.
    importcpp: "InsertBeforeByIndex", header: "TDataStd_RealList.hxx".}
proc insertAfter*(this: var TDataStdRealList; value: cfloat; afterValue: cfloat): bool {.
    importcpp: "InsertAfter", header: "TDataStd_RealList.hxx".}
proc insertAfterByIndex*(this: var TDataStdRealList; index: cint; afterValue: cfloat): bool {.
    importcpp: "InsertAfterByIndex", header: "TDataStd_RealList.hxx".}
proc remove*(this: var TDataStdRealList; value: cfloat): bool {.importcpp: "Remove",
    header: "TDataStd_RealList.hxx".}
proc removeByIndex*(this: var TDataStdRealList; index: cint): bool {.
    importcpp: "RemoveByIndex", header: "TDataStd_RealList.hxx".}
proc clear*(this: var TDataStdRealList) {.importcpp: "Clear",
                                      header: "TDataStd_RealList.hxx".}
proc first*(this: TDataStdRealList): cfloat {.noSideEffect, importcpp: "First",
    header: "TDataStd_RealList.hxx".}
proc last*(this: TDataStdRealList): cfloat {.noSideEffect, importcpp: "Last",
    header: "TDataStd_RealList.hxx".}
proc list*(this: TDataStdRealList): TColStdListOfReal {.noSideEffect,
    importcpp: "List", header: "TDataStd_RealList.hxx".}
proc id*(this: TDataStdRealList): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_RealList.hxx".}
proc restore*(this: var TDataStdRealList; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_RealList.hxx".}
proc newEmpty*(this: TDataStdRealList): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_RealList.hxx".}
proc paste*(this: TDataStdRealList; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_RealList.hxx".}
proc dump*(this: TDataStdRealList; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_RealList.hxx".}
proc dumpJson*(this: TDataStdRealList; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "TDataStd_RealList.hxx".}
type
  TDataStdRealListbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TDataStd_RealList::get_type_name(@)",
                            header: "TDataStd_RealList.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDataStd_RealList::get_type_descriptor(@)",
    header: "TDataStd_RealList.hxx".}
proc dynamicType*(this: TDataStdRealList): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataStd_RealList.hxx".}

























