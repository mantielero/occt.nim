##  Created on: 2008-01-22
##  Created by: Vladislav ROMASHKO
##  Copyright (c) 2008-2014 OPEN CASCADE SAS
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

discard "forward decl of TFunction_Scope"
discard "forward decl of TDF_Label"
type
  TFunctionIterator* {.importcpp: "TFunction_Iterator",
                      header: "TFunction_Iterator.hxx", bycopy.} = object ## ! An empty
                                                                     ## constructor.


proc constructTFunctionIterator*(): TFunctionIterator {.constructor,
    importcpp: "TFunction_Iterator(@)", header: "TFunction_Iterator.hxx".}
proc constructTFunctionIterator*(access: TDF_Label): TFunctionIterator {.
    constructor, importcpp: "TFunction_Iterator(@)",
    header: "TFunction_Iterator.hxx".}
proc init*(this: var TFunctionIterator; access: TDF_Label) {.importcpp: "Init",
    header: "TFunction_Iterator.hxx".}
proc setUsageOfExecutionStatus*(this: var TFunctionIterator; usage: bool) {.
    importcpp: "SetUsageOfExecutionStatus", header: "TFunction_Iterator.hxx".}
proc getUsageOfExecutionStatus*(this: TFunctionIterator): bool {.noSideEffect,
    importcpp: "GetUsageOfExecutionStatus", header: "TFunction_Iterator.hxx".}
proc getMaxNbThreads*(this: TFunctionIterator): cint {.noSideEffect,
    importcpp: "GetMaxNbThreads", header: "TFunction_Iterator.hxx".}
proc current*(this: TFunctionIterator): TDF_LabelList {.noSideEffect,
    importcpp: "Current", header: "TFunction_Iterator.hxx".}
proc more*(this: TFunctionIterator): bool {.noSideEffect, importcpp: "More",
                                        header: "TFunction_Iterator.hxx".}
proc next*(this: var TFunctionIterator) {.importcpp: "Next",
                                      header: "TFunction_Iterator.hxx".}
proc getStatus*(this: TFunctionIterator; `func`: TDF_Label): TFunctionExecutionStatus {.
    noSideEffect, importcpp: "GetStatus", header: "TFunction_Iterator.hxx".}
proc setStatus*(this: TFunctionIterator; `func`: TDF_Label;
               status: TFunctionExecutionStatus) {.noSideEffect,
    importcpp: "SetStatus", header: "TFunction_Iterator.hxx".}
proc dump*(this: TFunctionIterator; os: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TFunction_Iterator.hxx".}

























