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

discard "forward decl of TDF_Label"
discard "forward decl of Standard_GUID"
discard "forward decl of TFunction_Logbook"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TFunction_Logbook"
discard "forward decl of TFunction_Logbook"
type
  HandleC1C1* = Handle[TFunctionLogbook]

## ! This class contains information which is written and
## ! read during the solving process. Information is divided
## ! in three groups.
## !
## ! * Touched Labels  (modified by the end user),
## ! * Impacted Labels (modified during execution of the function),
## ! * Valid Labels    (within the valid label scope).

type
  TFunctionLogbook* {.importcpp: "TFunction_Logbook",
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


proc set*(access: TDF_Label): Handle[TFunctionLogbook] {.
    importcpp: "TFunction_Logbook::Set(@)", header: "TFunction_Logbook.hxx".}
proc getID*(): StandardGUID {.importcpp: "TFunction_Logbook::GetID(@)",
                           header: "TFunction_Logbook.hxx".}
proc constructTFunctionLogbook*(): TFunctionLogbook {.constructor,
    importcpp: "TFunction_Logbook(@)", header: "TFunction_Logbook.hxx".}
proc clear*(this: var TFunctionLogbook) {.importcpp: "Clear",
                                      header: "TFunction_Logbook.hxx".}
proc isEmpty*(this: TFunctionLogbook): bool {.noSideEffect, importcpp: "IsEmpty",
    header: "TFunction_Logbook.hxx".}
proc setTouched*(this: var TFunctionLogbook; L: TDF_Label) {.importcpp: "SetTouched",
    header: "TFunction_Logbook.hxx".}
proc setImpacted*(this: var TFunctionLogbook; L: TDF_Label; withChildren: bool = false) {.
    importcpp: "SetImpacted", header: "TFunction_Logbook.hxx".}
proc setValid*(this: var TFunctionLogbook; L: TDF_Label; withChildren: bool = false) {.
    importcpp: "SetValid", header: "TFunction_Logbook.hxx".}
proc setValid*(this: var TFunctionLogbook; ls: TDF_LabelMap) {.importcpp: "SetValid",
    header: "TFunction_Logbook.hxx".}
proc isModified*(this: TFunctionLogbook; L: TDF_Label; withChildren: bool = false): bool {.
    noSideEffect, importcpp: "IsModified", header: "TFunction_Logbook.hxx".}
proc getTouched*(this: TFunctionLogbook): TDF_LabelMap {.noSideEffect,
    importcpp: "GetTouched", header: "TFunction_Logbook.hxx".}
proc getImpacted*(this: TFunctionLogbook): TDF_LabelMap {.noSideEffect,
    importcpp: "GetImpacted", header: "TFunction_Logbook.hxx".}
proc getValid*(this: TFunctionLogbook): TDF_LabelMap {.noSideEffect,
    importcpp: "GetValid", header: "TFunction_Logbook.hxx".}
proc getValid*(this: TFunctionLogbook; ls: var TDF_LabelMap) {.noSideEffect,
    importcpp: "GetValid", header: "TFunction_Logbook.hxx".}
proc done*(this: var TFunctionLogbook; status: bool) {.importcpp: "Done",
    header: "TFunction_Logbook.hxx".}
proc isDone*(this: TFunctionLogbook): bool {.noSideEffect, importcpp: "IsDone",
    header: "TFunction_Logbook.hxx".}
proc id*(this: TFunctionLogbook): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TFunction_Logbook.hxx".}
proc restore*(this: var TFunctionLogbook; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TFunction_Logbook.hxx".}
proc paste*(this: TFunctionLogbook; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TFunction_Logbook.hxx".}
proc newEmpty*(this: TFunctionLogbook): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TFunction_Logbook.hxx".}
proc dump*(this: TFunctionLogbook; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TFunction_Logbook.hxx".}

























