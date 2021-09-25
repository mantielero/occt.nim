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
discard "forward decl of TFunction_Logbook"
discard "forward decl of TFunction_Driver"
discard "forward decl of TFunction_Driver"
type
  HandleTFunctionDriver* = Handle[TFunctionDriver]

## ! This  driver  class provide  services  around function
## ! execution.   One instance of  this class is  built for
## ! the whole  session.    The driver  is bound   to   the
## ! DriverGUID in the DriverTable class.
## ! It allows you to create classes which inherit from
## ! this abstract class.
## ! These subclasses identify the various algorithms
## ! which can be applied to the data contained in the
## ! attributes of sub-labels of a model.
## ! A single instance of this class and each of its
## ! subclasses is built for the whole session.

type
  TFunctionDriver* {.importcpp: "TFunction_Driver", header: "TFunction_Driver.hxx",
                    bycopy.} = object of StandardTransient ## ! Initializes the label L for this function prior to its  execution.
                                                      ## ! initialisation of the driver
                                                      ## !
                                                      ## ============================


proc init*(this: var TFunctionDriver; L: TDF_Label) {.importcpp: "Init",
    header: "TFunction_Driver.hxx".}
proc label*(this: TFunctionDriver): TDF_Label {.noSideEffect, importcpp: "Label",
    header: "TFunction_Driver.hxx".}
proc validate*(this: TFunctionDriver; log: var Handle[TFunctionLogbook]) {.
    noSideEffect, importcpp: "Validate", header: "TFunction_Driver.hxx".}
proc mustExecute*(this: TFunctionDriver; log: Handle[TFunctionLogbook]): bool {.
    noSideEffect, importcpp: "MustExecute", header: "TFunction_Driver.hxx".}
proc execute*(this: TFunctionDriver; log: var Handle[TFunctionLogbook]): int {.
    noSideEffect, importcpp: "Execute", header: "TFunction_Driver.hxx".}
proc arguments*(this: TFunctionDriver; args: var TDF_LabelList) {.noSideEffect,
    importcpp: "Arguments", header: "TFunction_Driver.hxx".}
proc results*(this: TFunctionDriver; res: var TDF_LabelList) {.noSideEffect,
    importcpp: "Results", header: "TFunction_Driver.hxx".}
type
  TFunctionDriverbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TFunction_Driver::get_type_name(@)",
                            header: "TFunction_Driver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TFunction_Driver::get_type_descriptor(@)",
    header: "TFunction_Driver.hxx".}
proc dynamicType*(this: TFunctionDriver): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TFunction_Driver.hxx".}
