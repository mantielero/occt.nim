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

discard "forward decl of TFunction_Logbook"
discard "forward decl of DNaming_PointDriver"
discard "forward decl of DNaming_PointDriver"
type
  HandleDNamingPointDriver* = Handle[DNamingPointDriver]

## ! Driver for PointXYZ  and  RelativePoint

type
  DNamingPointDriver* {.importcpp: "DNaming_PointDriver",
                       header: "DNaming_PointDriver.hxx", bycopy.} = object of TFunctionDriver ##
                                                                                        ## !
                                                                                        ## Constructor
                                                                                        ##
                                                                                        ## !
                                                                                        ## validation
                                                                                        ##
                                                                                        ## !
                                                                                        ## ==========


proc constructDNamingPointDriver*(): DNamingPointDriver {.constructor,
    importcpp: "DNaming_PointDriver(@)", header: "DNaming_PointDriver.hxx".}
proc validate*(this: DNamingPointDriver; theLog: var Handle[TFunctionLogbook]) {.
    noSideEffect, importcpp: "Validate", header: "DNaming_PointDriver.hxx".}
proc mustExecute*(this: DNamingPointDriver; theLog: Handle[TFunctionLogbook]): StandardBoolean {.
    noSideEffect, importcpp: "MustExecute", header: "DNaming_PointDriver.hxx".}
proc execute*(this: DNamingPointDriver; theLog: var Handle[TFunctionLogbook]): StandardInteger {.
    noSideEffect, importcpp: "Execute", header: "DNaming_PointDriver.hxx".}
type
  DNamingPointDriverbaseType* = TFunctionDriver

proc getTypeName*(): cstring {.importcpp: "DNaming_PointDriver::get_type_name(@)",
                            header: "DNaming_PointDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DNaming_PointDriver::get_type_descriptor(@)",
    header: "DNaming_PointDriver.hxx".}
proc dynamicType*(this: DNamingPointDriver): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "DNaming_PointDriver.hxx".}

