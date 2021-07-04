##  Created on: 1999-07-19
##  Created by: Denis PASCAL
##  Copyright (c) 1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TDF/TDF_LabelMap, ../TDF/TDF_Attribute,
  ../Standard/Standard_Boolean, ../Standard/Standard_OStream

discard "forward decl of TDF_Label"
discard "forward decl of Standard_GUID"
discard "forward decl of TFunction_Logbook"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TFunction_Logbook"
discard "forward decl of TFunction_Logbook"
type
  Handle_TFunction_Logbook* = handle[TFunction_Logbook]

## ! This class contains information which is written and
## ! read during the solving process. Information is divided
## ! in three groups.
## !
## ! * Touched Labels  (modified by the end user),
## ! * Impacted Labels (modified during execution of the function),
## ! * Valid Labels    (within the valid label scope).

type
  TFunction_Logbook* {.importcpp: "TFunction_Logbook",
                      header: "TFunction_Logbook.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                   ## !
                                                                                   ## Finds
                                                                                   ## or
                                                                                   ## Creates
                                                                                   ## a
                                                                                   ## TFunction_Logbook
                                                                                   ## attribute
                                                                                   ## at
                                                                                   ## the
                                                                                   ## root
                                                                                   ## label
                                                                                   ## accessed
                                                                                   ## by
                                                                                   ## <Access>.
                                                                                   ##
                                                                                   ## !
                                                                                   ## Returns
                                                                                   ## the
                                                                                   ## attribute.


proc Set*(Access: TDF_Label): handle[TFunction_Logbook] {.
    importcpp: "TFunction_Logbook::Set(@)", header: "TFunction_Logbook.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "TFunction_Logbook::GetID(@)",
                            header: "TFunction_Logbook.hxx".}
proc constructTFunction_Logbook*(): TFunction_Logbook {.constructor,
    importcpp: "TFunction_Logbook(@)", header: "TFunction_Logbook.hxx".}
proc Clear*(this: var TFunction_Logbook) {.importcpp: "Clear",
                                       header: "TFunction_Logbook.hxx".}
proc IsEmpty*(this: TFunction_Logbook): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "TFunction_Logbook.hxx".}
proc SetTouched*(this: var TFunction_Logbook; L: TDF_Label) {.importcpp: "SetTouched",
    header: "TFunction_Logbook.hxx".}
proc SetImpacted*(this: var TFunction_Logbook; L: TDF_Label;
                 WithChildren: Standard_Boolean = Standard_False) {.
    importcpp: "SetImpacted", header: "TFunction_Logbook.hxx".}
proc SetValid*(this: var TFunction_Logbook; L: TDF_Label;
              WithChildren: Standard_Boolean = Standard_False) {.
    importcpp: "SetValid", header: "TFunction_Logbook.hxx".}
proc SetValid*(this: var TFunction_Logbook; Ls: TDF_LabelMap) {.importcpp: "SetValid",
    header: "TFunction_Logbook.hxx".}
proc IsModified*(this: TFunction_Logbook; L: TDF_Label;
                WithChildren: Standard_Boolean = Standard_False): Standard_Boolean {.
    noSideEffect, importcpp: "IsModified", header: "TFunction_Logbook.hxx".}
proc GetTouched*(this: TFunction_Logbook): TDF_LabelMap {.noSideEffect,
    importcpp: "GetTouched", header: "TFunction_Logbook.hxx".}
proc GetImpacted*(this: TFunction_Logbook): TDF_LabelMap {.noSideEffect,
    importcpp: "GetImpacted", header: "TFunction_Logbook.hxx".}
proc GetValid*(this: TFunction_Logbook): TDF_LabelMap {.noSideEffect,
    importcpp: "GetValid", header: "TFunction_Logbook.hxx".}
proc GetValid*(this: TFunction_Logbook; Ls: var TDF_LabelMap) {.noSideEffect,
    importcpp: "GetValid", header: "TFunction_Logbook.hxx".}
proc Done*(this: var TFunction_Logbook; status: Standard_Boolean) {.importcpp: "Done",
    header: "TFunction_Logbook.hxx".}
proc IsDone*(this: TFunction_Logbook): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "TFunction_Logbook.hxx".}
proc ID*(this: TFunction_Logbook): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TFunction_Logbook.hxx".}
proc Restore*(this: var TFunction_Logbook; with: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TFunction_Logbook.hxx".}
proc Paste*(this: TFunction_Logbook; into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TFunction_Logbook.hxx".}
proc NewEmpty*(this: TFunction_Logbook): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TFunction_Logbook.hxx".}
proc Dump*(this: TFunction_Logbook; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TFunction_Logbook.hxx".}