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

discard "forward decl of TFunction_Logbook"
discard "forward decl of TDF_Label"
discard "forward decl of BRepPrimAPI_MakeSphere"
discard "forward decl of DNaming_SphereDriver"
discard "forward decl of DNaming_SphereDriver"
type
  HandleC1C1* = Handle[DNamingSphereDriver]
  DNamingSphereDriver* {.importcpp: "DNaming_SphereDriver",
                        header: "DNaming_SphereDriver.hxx", bycopy.} = object of TFunctionDriver ##
                                                                                          ## !
                                                                                          ## Constructor
                                                                                          ##
                                                                                          ## !
                                                                                          ## validation
                                                                                          ##
                                                                                          ## !
                                                                                          ## ==========


proc constructDNamingSphereDriver*(): DNamingSphereDriver {.constructor,
    importcpp: "DNaming_SphereDriver(@)", header: "DNaming_SphereDriver.hxx".}
proc validate*(this: DNamingSphereDriver; theLog: var Handle[TFunctionLogbook]) {.
    noSideEffect, importcpp: "Validate", header: "DNaming_SphereDriver.hxx".}
proc mustExecute*(this: DNamingSphereDriver; theLog: Handle[TFunctionLogbook]): bool {.
    noSideEffect, importcpp: "MustExecute", header: "DNaming_SphereDriver.hxx".}
proc execute*(this: DNamingSphereDriver; theLog: var Handle[TFunctionLogbook]): cint {.
    noSideEffect, importcpp: "Execute", header: "DNaming_SphereDriver.hxx".}
type
  DNamingSphereDriverbaseType* = TFunctionDriver

proc getTypeName*(): cstring {.importcpp: "DNaming_SphereDriver::get_type_name(@)",
                            header: "DNaming_SphereDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DNaming_SphereDriver::get_type_descriptor(@)",
    header: "DNaming_SphereDriver.hxx".}
proc dynamicType*(this: DNamingSphereDriver): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "DNaming_SphereDriver.hxx".}

























