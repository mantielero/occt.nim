##  Created on: 2009-05-06
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
discard "forward decl of BRepFilletAPI_MakeFillet"
discard "forward decl of TopoDS_Shape"
discard "forward decl of DNaming_FilletDriver"
discard "forward decl of DNaming_FilletDriver"
type
  HandleDNamingFilletDriver* = Handle[DNamingFilletDriver]
  DNamingFilletDriver* {.importcpp: "DNaming_FilletDriver",
                        header: "DNaming_FilletDriver.hxx", bycopy.} = object of TFunctionDriver ##
                                                                                          ## !
                                                                                          ## Constructor
                                                                                          ##
                                                                                          ## !
                                                                                          ## validation
                                                                                          ##
                                                                                          ## !
                                                                                          ## ==========


proc constructDNamingFilletDriver*(): DNamingFilletDriver {.constructor,
    importcpp: "DNaming_FilletDriver(@)", header: "DNaming_FilletDriver.hxx".}
proc validate*(this: DNamingFilletDriver; theLog: var Handle[TFunctionLogbook]) {.
    noSideEffect, importcpp: "Validate", header: "DNaming_FilletDriver.hxx".}
proc mustExecute*(this: DNamingFilletDriver; theLog: Handle[TFunctionLogbook]): bool {.
    noSideEffect, importcpp: "MustExecute", header: "DNaming_FilletDriver.hxx".}
proc execute*(this: DNamingFilletDriver; theLog: var Handle[TFunctionLogbook]): int {.
    noSideEffect, importcpp: "Execute", header: "DNaming_FilletDriver.hxx".}
type
  DNamingFilletDriverbaseType* = TFunctionDriver

proc getTypeName*(): cstring {.importcpp: "DNaming_FilletDriver::get_type_name(@)",
                            header: "DNaming_FilletDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DNaming_FilletDriver::get_type_descriptor(@)",
    header: "DNaming_FilletDriver.hxx".}
proc dynamicType*(this: DNamingFilletDriver): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "DNaming_FilletDriver.hxx".}
