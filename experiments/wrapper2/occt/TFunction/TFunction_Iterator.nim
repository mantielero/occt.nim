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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TDF/TDF_LabelList, ../Standard/Standard_Boolean,
  ../TDF/TDF_LabelMap, ../Standard/Standard_Integer, TFunction_ExecutionStatus,
  ../Standard/Standard_OStream

discard "forward decl of TFunction_Scope"
discard "forward decl of TDF_Label"
type
  TFunction_Iterator* {.importcpp: "TFunction_Iterator",
                       header: "TFunction_Iterator.hxx", bycopy.} = object ## ! An empty
                                                                      ## constructor.


proc constructTFunction_Iterator*(): TFunction_Iterator {.constructor,
    importcpp: "TFunction_Iterator(@)", header: "TFunction_Iterator.hxx".}
proc constructTFunction_Iterator*(Access: TDF_Label): TFunction_Iterator {.
    constructor, importcpp: "TFunction_Iterator(@)",
    header: "TFunction_Iterator.hxx".}
proc Init*(this: var TFunction_Iterator; Access: TDF_Label) {.importcpp: "Init",
    header: "TFunction_Iterator.hxx".}
proc SetUsageOfExecutionStatus*(this: var TFunction_Iterator;
                               usage: Standard_Boolean) {.
    importcpp: "SetUsageOfExecutionStatus", header: "TFunction_Iterator.hxx".}
proc GetUsageOfExecutionStatus*(this: TFunction_Iterator): Standard_Boolean {.
    noSideEffect, importcpp: "GetUsageOfExecutionStatus",
    header: "TFunction_Iterator.hxx".}
proc GetMaxNbThreads*(this: TFunction_Iterator): Standard_Integer {.noSideEffect,
    importcpp: "GetMaxNbThreads", header: "TFunction_Iterator.hxx".}
proc Current*(this: TFunction_Iterator): TDF_LabelList {.noSideEffect,
    importcpp: "Current", header: "TFunction_Iterator.hxx".}
proc More*(this: TFunction_Iterator): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "TFunction_Iterator.hxx".}
proc Next*(this: var TFunction_Iterator) {.importcpp: "Next",
                                       header: "TFunction_Iterator.hxx".}
proc GetStatus*(this: TFunction_Iterator; `func`: TDF_Label): TFunction_ExecutionStatus {.
    noSideEffect, importcpp: "GetStatus", header: "TFunction_Iterator.hxx".}
proc SetStatus*(this: TFunction_Iterator; `func`: TDF_Label;
               status: TFunction_ExecutionStatus) {.noSideEffect,
    importcpp: "SetStatus", header: "TFunction_Iterator.hxx".}
proc Dump*(this: TFunction_Iterator; OS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TFunction_Iterator.hxx".}