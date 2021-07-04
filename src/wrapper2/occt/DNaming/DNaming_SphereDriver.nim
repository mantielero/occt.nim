##  Created on: 2009-06-18
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
discard "forward decl of BRepPrimAPI_MakeSphere"
discard "forward decl of DNaming_SphereDriver"
discard "forward decl of DNaming_SphereDriver"
type
  Handle_DNaming_SphereDriver* = handle[DNaming_SphereDriver]
  DNaming_SphereDriver* {.importcpp: "DNaming_SphereDriver",
                         header: "DNaming_SphereDriver.hxx", bycopy.} = object of TFunction_Driver ##
                                                                                            ## !
                                                                                            ## Constructor
                                                                                            ##
                                                                                            ## !
                                                                                            ## validation
                                                                                            ##
                                                                                            ## !
                                                                                            ## ==========


proc constructDNaming_SphereDriver*(): DNaming_SphereDriver {.constructor,
    importcpp: "DNaming_SphereDriver(@)", header: "DNaming_SphereDriver.hxx".}
proc Validate*(this: DNaming_SphereDriver; theLog: var handle[TFunction_Logbook]) {.
    noSideEffect, importcpp: "Validate", header: "DNaming_SphereDriver.hxx".}
proc MustExecute*(this: DNaming_SphereDriver; theLog: handle[TFunction_Logbook]): Standard_Boolean {.
    noSideEffect, importcpp: "MustExecute", header: "DNaming_SphereDriver.hxx".}
proc Execute*(this: DNaming_SphereDriver; theLog: var handle[TFunction_Logbook]): Standard_Integer {.
    noSideEffect, importcpp: "Execute", header: "DNaming_SphereDriver.hxx".}
type
  DNaming_SphereDriverbase_type* = TFunction_Driver

proc get_type_name*(): cstring {.importcpp: "DNaming_SphereDriver::get_type_name(@)",
                              header: "DNaming_SphereDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "DNaming_SphereDriver::get_type_descriptor(@)",
    header: "DNaming_SphereDriver.hxx".}
proc DynamicType*(this: DNaming_SphereDriver): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "DNaming_SphereDriver.hxx".}