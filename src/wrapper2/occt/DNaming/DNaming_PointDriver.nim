##  Created on: 2010-02-25
##  Created by: Sergey ZARITCHNY <sergey.zaritchny@opencascade.com>
##  Copyright (c) 2010-2014 OPEN CASCADE SAS
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
discard "forward decl of DNaming_PointDriver"
discard "forward decl of DNaming_PointDriver"
type
  Handle_DNaming_PointDriver* = handle[DNaming_PointDriver]

## ! Driver for PointXYZ  and  RelativePoint

type
  DNaming_PointDriver* {.importcpp: "DNaming_PointDriver",
                        header: "DNaming_PointDriver.hxx", bycopy.} = object of TFunction_Driver ##
                                                                                          ## !
                                                                                          ## Constructor
                                                                                          ##
                                                                                          ## !
                                                                                          ## validation
                                                                                          ##
                                                                                          ## !
                                                                                          ## ==========


proc constructDNaming_PointDriver*(): DNaming_PointDriver {.constructor,
    importcpp: "DNaming_PointDriver(@)", header: "DNaming_PointDriver.hxx".}
proc Validate*(this: DNaming_PointDriver; theLog: var handle[TFunction_Logbook]) {.
    noSideEffect, importcpp: "Validate", header: "DNaming_PointDriver.hxx".}
proc MustExecute*(this: DNaming_PointDriver; theLog: handle[TFunction_Logbook]): Standard_Boolean {.
    noSideEffect, importcpp: "MustExecute", header: "DNaming_PointDriver.hxx".}
proc Execute*(this: DNaming_PointDriver; theLog: var handle[TFunction_Logbook]): Standard_Integer {.
    noSideEffect, importcpp: "Execute", header: "DNaming_PointDriver.hxx".}
type
  DNaming_PointDriverbase_type* = TFunction_Driver

proc get_type_name*(): cstring {.importcpp: "DNaming_PointDriver::get_type_name(@)",
                              header: "DNaming_PointDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "DNaming_PointDriver::get_type_descriptor(@)",
    header: "DNaming_PointDriver.hxx".}
proc DynamicType*(this: DNaming_PointDriver): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "DNaming_PointDriver.hxx".}