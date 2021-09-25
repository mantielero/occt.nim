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
discard "forward decl of TDF_DataSet"
discard "forward decl of TDataStd_ReferenceList"
discard "forward decl of TDataStd_ReferenceList"
type
  HandleTDataStdReferenceList* = Handle[TDataStdReferenceList]

## ! Contains a list of references.

type
  TDataStdReferenceList* {.importcpp: "TDataStd_ReferenceList",
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


proc getID*(): StandardGUID {.importcpp: "TDataStd_ReferenceList::GetID(@)",
                           header: "TDataStd_ReferenceList.hxx".}
proc set*(label: TDF_Label): Handle[TDataStdReferenceList] {.
    importcpp: "TDataStd_ReferenceList::Set(@)",
    header: "TDataStd_ReferenceList.hxx".}
proc set*(label: TDF_Label; theGuid: StandardGUID): Handle[TDataStdReferenceList] {.
    importcpp: "TDataStd_ReferenceList::Set(@)",
    header: "TDataStd_ReferenceList.hxx".}
proc constructTDataStdReferenceList*(): TDataStdReferenceList {.constructor,
    importcpp: "TDataStd_ReferenceList(@)", header: "TDataStd_ReferenceList.hxx".}
proc isEmpty*(this: TDataStdReferenceList): bool {.noSideEffect,
    importcpp: "IsEmpty", header: "TDataStd_ReferenceList.hxx".}
proc extent*(this: TDataStdReferenceList): int {.noSideEffect, importcpp: "Extent",
    header: "TDataStd_ReferenceList.hxx".}
proc prepend*(this: var TDataStdReferenceList; value: TDF_Label) {.
    importcpp: "Prepend", header: "TDataStd_ReferenceList.hxx".}
proc append*(this: var TDataStdReferenceList; value: TDF_Label) {.importcpp: "Append",
    header: "TDataStd_ReferenceList.hxx".}
proc setID*(this: var TDataStdReferenceList; theGuid: StandardGUID) {.
    importcpp: "SetID", header: "TDataStd_ReferenceList.hxx".}
proc setID*(this: var TDataStdReferenceList) {.importcpp: "SetID",
    header: "TDataStd_ReferenceList.hxx".}
proc insertBefore*(this: var TDataStdReferenceList; value: TDF_Label;
                  beforeValue: TDF_Label): bool {.importcpp: "InsertBefore",
    header: "TDataStd_ReferenceList.hxx".}
proc insertBefore*(this: var TDataStdReferenceList; index: int; beforeValue: TDF_Label): bool {.
    importcpp: "InsertBefore", header: "TDataStd_ReferenceList.hxx".}
proc insertAfter*(this: var TDataStdReferenceList; value: TDF_Label;
                 afterValue: TDF_Label): bool {.importcpp: "InsertAfter",
    header: "TDataStd_ReferenceList.hxx".}
proc insertAfter*(this: var TDataStdReferenceList; index: int; afterValue: TDF_Label): bool {.
    importcpp: "InsertAfter", header: "TDataStd_ReferenceList.hxx".}
proc remove*(this: var TDataStdReferenceList; value: TDF_Label): bool {.
    importcpp: "Remove", header: "TDataStd_ReferenceList.hxx".}
proc remove*(this: var TDataStdReferenceList; index: int): bool {.importcpp: "Remove",
    header: "TDataStd_ReferenceList.hxx".}
proc clear*(this: var TDataStdReferenceList) {.importcpp: "Clear",
    header: "TDataStd_ReferenceList.hxx".}
proc first*(this: TDataStdReferenceList): TDF_Label {.noSideEffect,
    importcpp: "First", header: "TDataStd_ReferenceList.hxx".}
proc last*(this: TDataStdReferenceList): TDF_Label {.noSideEffect, importcpp: "Last",
    header: "TDataStd_ReferenceList.hxx".}
proc list*(this: TDataStdReferenceList): TDF_LabelList {.noSideEffect,
    importcpp: "List", header: "TDataStd_ReferenceList.hxx".}
proc id*(this: TDataStdReferenceList): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_ReferenceList.hxx".}
proc restore*(this: var TDataStdReferenceList; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_ReferenceList.hxx".}
proc newEmpty*(this: TDataStdReferenceList): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_ReferenceList.hxx".}
proc paste*(this: TDataStdReferenceList; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_ReferenceList.hxx".}
proc references*(this: TDataStdReferenceList; ds: Handle[TDF_DataSet]) {.
    noSideEffect, importcpp: "References", header: "TDataStd_ReferenceList.hxx".}
proc dump*(this: TDataStdReferenceList; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_ReferenceList.hxx".}
proc dumpJson*(this: TDataStdReferenceList; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "TDataStd_ReferenceList.hxx".}
type
  TDataStdReferenceListbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TDataStd_ReferenceList::get_type_name(@)",
                            header: "TDataStd_ReferenceList.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDataStd_ReferenceList::get_type_descriptor(@)",
    header: "TDataStd_ReferenceList.hxx".}
proc dynamicType*(this: TDataStdReferenceList): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataStd_ReferenceList.hxx".}
