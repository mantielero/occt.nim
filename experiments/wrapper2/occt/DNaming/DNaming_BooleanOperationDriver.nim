##  Created on: 2009-05-05
##  Created by: Sergey ZARITCHNY <sergey.zaritchny@opencascade.com>
##  Copyright (c) 2009-2014 OPEN CASCADE SAS
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

discard "forward decl of TFunction_Logbook"
discard "forward decl of TDF_Label"
discard "forward decl of BRepAlgoAPI_BooleanOperation"
discard "forward decl of TFunction_Function"
discard "forward decl of DNaming_BooleanOperationDriver"
discard "forward decl of DNaming_BooleanOperationDriver"
type
  HandleDNamingBooleanOperationDriver* = Handle[DNamingBooleanOperationDriver]

## ! Driver  for Fuse,  Cut,  Common

type
  DNamingBooleanOperationDriver* {.importcpp: "DNaming_BooleanOperationDriver",
                                  header: "DNaming_BooleanOperationDriver.hxx",
                                  bycopy.} = object of TFunctionDriver ## ! Constructor
                                                                  ## ! validation
                                                                  ## ! ==========


proc constructDNamingBooleanOperationDriver*(): DNamingBooleanOperationDriver {.
    constructor, importcpp: "DNaming_BooleanOperationDriver(@)",
    header: "DNaming_BooleanOperationDriver.hxx".}
proc validate*(this: DNamingBooleanOperationDriver;
              theLog: var Handle[TFunctionLogbook]) {.noSideEffect,
    importcpp: "Validate", header: "DNaming_BooleanOperationDriver.hxx".}
proc mustExecute*(this: DNamingBooleanOperationDriver;
                 theLog: Handle[TFunctionLogbook]): bool {.noSideEffect,
    importcpp: "MustExecute", header: "DNaming_BooleanOperationDriver.hxx".}
proc execute*(this: DNamingBooleanOperationDriver;
             theLog: var Handle[TFunctionLogbook]): int {.noSideEffect,
    importcpp: "Execute", header: "DNaming_BooleanOperationDriver.hxx".}
type
  DNamingBooleanOperationDriverbaseType* = TFunctionDriver

proc getTypeName*(): cstring {.importcpp: "DNaming_BooleanOperationDriver::get_type_name(@)",
                            header: "DNaming_BooleanOperationDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DNaming_BooleanOperationDriver::get_type_descriptor(@)",
    header: "DNaming_BooleanOperationDriver.hxx".}
proc dynamicType*(this: DNamingBooleanOperationDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "DNaming_BooleanOperationDriver.hxx".}
