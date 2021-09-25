##  Created on: 2009-04-29
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
discard "forward decl of BRepPrimAPI_MakeBox"
discard "forward decl of DNaming_BoxDriver"
discard "forward decl of DNaming_BoxDriver"
type
  HandleDNamingBoxDriver* = Handle[DNamingBoxDriver]
  DNamingBoxDriver* {.importcpp: "DNaming_BoxDriver",
                     header: "DNaming_BoxDriver.hxx", bycopy.} = object of TFunctionDriver ##
                                                                                    ## !
                                                                                    ## Constructor
                                                                                    ##
                                                                                    ## !
                                                                                    ## validation
                                                                                    ##
                                                                                    ## !
                                                                                    ## ==========


proc constructDNamingBoxDriver*(): DNamingBoxDriver {.constructor,
    importcpp: "DNaming_BoxDriver(@)", header: "DNaming_BoxDriver.hxx".}
proc validate*(this: DNamingBoxDriver; theLog: var Handle[TFunctionLogbook]) {.
    noSideEffect, importcpp: "Validate", header: "DNaming_BoxDriver.hxx".}
proc mustExecute*(this: DNamingBoxDriver; theLog: Handle[TFunctionLogbook]): bool {.
    noSideEffect, importcpp: "MustExecute", header: "DNaming_BoxDriver.hxx".}
proc execute*(this: DNamingBoxDriver; theLog: var Handle[TFunctionLogbook]): int {.
    noSideEffect, importcpp: "Execute", header: "DNaming_BoxDriver.hxx".}
type
  DNamingBoxDriverbaseType* = TFunctionDriver

proc getTypeName*(): cstring {.importcpp: "DNaming_BoxDriver::get_type_name(@)",
                            header: "DNaming_BoxDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DNaming_BoxDriver::get_type_descriptor(@)",
    header: "DNaming_BoxDriver.hxx".}
proc dynamicType*(this: DNamingBoxDriver): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "DNaming_BoxDriver.hxx".}
