##  Created on: 2009-05-07
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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../TFunction/TFunction_Driver,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of TFunction_Logbook"
discard "forward decl of TDF_Label"
discard "forward decl of TNaming_NamedShape"
discard "forward decl of gp_Trsf"
discard "forward decl of DNaming_TransformationDriver"
discard "forward decl of DNaming_TransformationDriver"
type
  Handle_DNaming_TransformationDriver* = handle[DNaming_TransformationDriver]
  DNaming_TransformationDriver* {.importcpp: "DNaming_TransformationDriver",
                                 header: "DNaming_TransformationDriver.hxx",
                                 bycopy.} = object of TFunction_Driver ## ! Constructor
                                                                  ## ! validation
                                                                  ## ! ==========


proc constructDNaming_TransformationDriver*(): DNaming_TransformationDriver {.
    constructor, importcpp: "DNaming_TransformationDriver(@)",
    header: "DNaming_TransformationDriver.hxx".}
proc Validate*(this: DNaming_TransformationDriver;
              theLog: var handle[TFunction_Logbook]) {.noSideEffect,
    importcpp: "Validate", header: "DNaming_TransformationDriver.hxx".}
proc MustExecute*(this: DNaming_TransformationDriver;
                 theLog: handle[TFunction_Logbook]): Standard_Boolean {.
    noSideEffect, importcpp: "MustExecute",
    header: "DNaming_TransformationDriver.hxx".}
proc Execute*(this: DNaming_TransformationDriver;
             theLog: var handle[TFunction_Logbook]): Standard_Integer {.
    noSideEffect, importcpp: "Execute", header: "DNaming_TransformationDriver.hxx".}
type
  DNaming_TransformationDriverbase_type* = TFunction_Driver

proc get_type_name*(): cstring {.importcpp: "DNaming_TransformationDriver::get_type_name(@)",
                              header: "DNaming_TransformationDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "DNaming_TransformationDriver::get_type_descriptor(@)",
    header: "DNaming_TransformationDriver.hxx".}
proc DynamicType*(this: DNaming_TransformationDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "DNaming_TransformationDriver.hxx".}