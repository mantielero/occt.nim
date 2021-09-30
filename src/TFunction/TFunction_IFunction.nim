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

discard "forward decl of TDF_Label"
discard "forward decl of Standard_GUID"
discard "forward decl of TFunction_Logbook"
discard "forward decl of TFunction_Driver"
discard "forward decl of TFunction_GraphNode"
type
  TFunctionIFunction* {.importcpp: "TFunction_IFunction",
                       header: "TFunction_IFunction.hxx", bycopy.} = object ## ! Sets a new function attached to a label <L> with <ID>.
                                                                       ## ! It creates a new
                                                                       ## TFunction_Function attribute
                                                                       ## initialized by the <ID>,
                                                                       ## ! a new
                                                                       ## TFunction_GraphNode with an empty list of
                                                                       ## dependencies and
                                                                       ## ! the status equal to
                                                                       ## TFunction_ES_WrongDefinition.
                                                                       ## ! It registers the function in the scope of functions for this document.


proc newFunction*(L: TDF_Label; id: StandardGUID): bool {.
    importcpp: "TFunction_IFunction::NewFunction(@)",
    header: "TFunction_IFunction.hxx".}
proc deleteFunction*(L: TDF_Label): bool {.importcpp: "TFunction_IFunction::DeleteFunction(@)",
                                       header: "TFunction_IFunction.hxx".}
proc updateDependencies*(access: TDF_Label): bool {.
    importcpp: "TFunction_IFunction::UpdateDependencies(@)",
    header: "TFunction_IFunction.hxx".}
proc constructTFunctionIFunction*(): TFunctionIFunction {.constructor,
    importcpp: "TFunction_IFunction(@)", header: "TFunction_IFunction.hxx".}
proc constructTFunctionIFunction*(L: TDF_Label): TFunctionIFunction {.constructor,
    importcpp: "TFunction_IFunction(@)", header: "TFunction_IFunction.hxx".}
proc init*(this: var TFunctionIFunction; L: TDF_Label) {.importcpp: "Init",
    header: "TFunction_IFunction.hxx".}
proc label*(this: TFunctionIFunction): TDF_Label {.noSideEffect, importcpp: "Label",
    header: "TFunction_IFunction.hxx".}
proc updateDependencies*(this: TFunctionIFunction): bool {.noSideEffect,
    importcpp: "UpdateDependencies", header: "TFunction_IFunction.hxx".}
proc arguments*(this: TFunctionIFunction; args: var TDF_LabelList) {.noSideEffect,
    importcpp: "Arguments", header: "TFunction_IFunction.hxx".}
proc results*(this: TFunctionIFunction; res: var TDF_LabelList) {.noSideEffect,
    importcpp: "Results", header: "TFunction_IFunction.hxx".}
proc getPrevious*(this: TFunctionIFunction; prev: var TDF_LabelList) {.noSideEffect,
    importcpp: "GetPrevious", header: "TFunction_IFunction.hxx".}
proc getNext*(this: TFunctionIFunction; prev: var TDF_LabelList) {.noSideEffect,
    importcpp: "GetNext", header: "TFunction_IFunction.hxx".}
proc getStatus*(this: TFunctionIFunction): TFunctionExecutionStatus {.noSideEffect,
    importcpp: "GetStatus", header: "TFunction_IFunction.hxx".}
proc setStatus*(this: TFunctionIFunction; status: TFunctionExecutionStatus) {.
    noSideEffect, importcpp: "SetStatus", header: "TFunction_IFunction.hxx".}
proc getAllFunctions*(this: TFunctionIFunction): TFunctionDoubleMapOfIntegerLabel {.
    noSideEffect, importcpp: "GetAllFunctions", header: "TFunction_IFunction.hxx".}
proc getLogbook*(this: TFunctionIFunction): Handle[TFunctionLogbook] {.noSideEffect,
    importcpp: "GetLogbook", header: "TFunction_IFunction.hxx".}
proc getDriver*(this: TFunctionIFunction; thread: cint = 0): Handle[TFunctionDriver] {.
    noSideEffect, importcpp: "GetDriver", header: "TFunction_IFunction.hxx".}
proc getGraphNode*(this: TFunctionIFunction): Handle[TFunctionGraphNode] {.
    noSideEffect, importcpp: "GetGraphNode", header: "TFunction_IFunction.hxx".}

























