##  Created on: 2009-05-04
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
discard "forward decl of BRepPrimAPI_MakeCylinder"
discard "forward decl of DNaming_CylinderDriver"
discard "forward decl of DNaming_CylinderDriver"
type
  HandleDNamingCylinderDriver* = Handle[DNamingCylinderDriver]

## ! Computes Cylinder function

type
  DNamingCylinderDriver* {.importcpp: "DNaming_CylinderDriver",
                          header: "DNaming_CylinderDriver.hxx", bycopy.} = object of TFunctionDriver ##
                                                                                              ## !
                                                                                              ## Constructor
                                                                                              ##
                                                                                              ## !
                                                                                              ## validation
                                                                                              ##
                                                                                              ## !
                                                                                              ## ==========


proc constructDNamingCylinderDriver*(): DNamingCylinderDriver {.constructor,
    importcpp: "DNaming_CylinderDriver(@)", header: "DNaming_CylinderDriver.hxx".}
proc validate*(this: DNamingCylinderDriver; theLog: var Handle[TFunctionLogbook]) {.
    noSideEffect, importcpp: "Validate", header: "DNaming_CylinderDriver.hxx".}
proc mustExecute*(this: DNamingCylinderDriver; theLog: Handle[TFunctionLogbook]): StandardBoolean {.
    noSideEffect, importcpp: "MustExecute", header: "DNaming_CylinderDriver.hxx".}
proc execute*(this: DNamingCylinderDriver; theLog: var Handle[TFunctionLogbook]): StandardInteger {.
    noSideEffect, importcpp: "Execute", header: "DNaming_CylinderDriver.hxx".}
type
  DNamingCylinderDriverbaseType* = TFunctionDriver

proc getTypeName*(): cstring {.importcpp: "DNaming_CylinderDriver::get_type_name(@)",
                            header: "DNaming_CylinderDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DNaming_CylinderDriver::get_type_descriptor(@)",
    header: "DNaming_CylinderDriver.hxx".}
proc dynamicType*(this: DNamingCylinderDriver): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "DNaming_CylinderDriver.hxx".}

