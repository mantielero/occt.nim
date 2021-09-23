##  Created on: 2008-01-21
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
  ../Standard/Standard_Handle, ../TDF/TDF_Label, ../Standard/Standard_Boolean,
  ../TDF/TDF_LabelList, TFunction_ExecutionStatus,
  TFunction_DoubleMapOfIntegerLabel, ../Standard/Standard_Integer

discard "forward decl of TDF_Label"
discard "forward decl of Standard_GUID"
discard "forward decl of TFunction_Logbook"
discard "forward decl of TFunction_Driver"
discard "forward decl of TFunction_GraphNode"
type
  TFunction_IFunction* {.importcpp: "TFunction_IFunction",
                        header: "TFunction_IFunction.hxx", bycopy.} = object ## ! Sets a new function attached to a label <L> with <ID>.
                                                                        ## ! It creates a new
                                                                        ## TFunction_Function
                                                                        ## attribute
                                                                        ## initialized by the <ID>,
                                                                        ## ! a new
                                                                        ## TFunction_GraphNode with an empty list of
                                                                        ## dependencies and
                                                                        ## ! the status equal to
                                                                        ## TFunction_ES_WrongDefinition.
                                                                        ## ! It
                                                                        ## registers the function in the scope of
                                                                        ## functions for this
                                                                        ## document.


proc NewFunction*(L: TDF_Label; ID: Standard_GUID): Standard_Boolean {.
    importcpp: "TFunction_IFunction::NewFunction(@)",
    header: "TFunction_IFunction.hxx".}
proc DeleteFunction*(L: TDF_Label): Standard_Boolean {.
    importcpp: "TFunction_IFunction::DeleteFunction(@)",
    header: "TFunction_IFunction.hxx".}
proc UpdateDependencies*(Access: TDF_Label): Standard_Boolean {.
    importcpp: "TFunction_IFunction::UpdateDependencies(@)",
    header: "TFunction_IFunction.hxx".}
proc constructTFunction_IFunction*(): TFunction_IFunction {.constructor,
    importcpp: "TFunction_IFunction(@)", header: "TFunction_IFunction.hxx".}
proc constructTFunction_IFunction*(L: TDF_Label): TFunction_IFunction {.constructor,
    importcpp: "TFunction_IFunction(@)", header: "TFunction_IFunction.hxx".}
proc Init*(this: var TFunction_IFunction; L: TDF_Label) {.importcpp: "Init",
    header: "TFunction_IFunction.hxx".}
proc Label*(this: TFunction_IFunction): TDF_Label {.noSideEffect, importcpp: "Label",
    header: "TFunction_IFunction.hxx".}
proc UpdateDependencies*(this: TFunction_IFunction): Standard_Boolean {.
    noSideEffect, importcpp: "UpdateDependencies",
    header: "TFunction_IFunction.hxx".}
proc Arguments*(this: TFunction_IFunction; args: var TDF_LabelList) {.noSideEffect,
    importcpp: "Arguments", header: "TFunction_IFunction.hxx".}
proc Results*(this: TFunction_IFunction; res: var TDF_LabelList) {.noSideEffect,
    importcpp: "Results", header: "TFunction_IFunction.hxx".}
proc GetPrevious*(this: TFunction_IFunction; prev: var TDF_LabelList) {.noSideEffect,
    importcpp: "GetPrevious", header: "TFunction_IFunction.hxx".}
proc GetNext*(this: TFunction_IFunction; prev: var TDF_LabelList) {.noSideEffect,
    importcpp: "GetNext", header: "TFunction_IFunction.hxx".}
proc GetStatus*(this: TFunction_IFunction): TFunction_ExecutionStatus {.
    noSideEffect, importcpp: "GetStatus", header: "TFunction_IFunction.hxx".}
proc SetStatus*(this: TFunction_IFunction; status: TFunction_ExecutionStatus) {.
    noSideEffect, importcpp: "SetStatus", header: "TFunction_IFunction.hxx".}
proc GetAllFunctions*(this: TFunction_IFunction): TFunction_DoubleMapOfIntegerLabel {.
    noSideEffect, importcpp: "GetAllFunctions", header: "TFunction_IFunction.hxx".}
proc GetLogbook*(this: TFunction_IFunction): handle[TFunction_Logbook] {.
    noSideEffect, importcpp: "GetLogbook", header: "TFunction_IFunction.hxx".}
proc GetDriver*(this: TFunction_IFunction; thread: Standard_Integer = 0): handle[
    TFunction_Driver] {.noSideEffect, importcpp: "GetDriver",
                       header: "TFunction_IFunction.hxx".}
proc GetGraphNode*(this: TFunction_IFunction): handle[TFunction_GraphNode] {.
    noSideEffect, importcpp: "GetGraphNode", header: "TFunction_IFunction.hxx".}