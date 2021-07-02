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
discard "forward decl of DNaming_SelectionDriver"
discard "forward decl of DNaming_SelectionDriver"
type
  HandleDNamingSelectionDriver* = Handle[DNamingSelectionDriver]
  DNamingSelectionDriver* {.importcpp: "DNaming_SelectionDriver",
                           header: "DNaming_SelectionDriver.hxx", bycopy.} = object of TFunctionDriver ##
                                                                                                ## !
                                                                                                ## Constructor
                                                                                                ##
                                                                                                ## !
                                                                                                ## validation
                                                                                                ##
                                                                                                ## !
                                                                                                ## ==========


proc constructDNamingSelectionDriver*(): DNamingSelectionDriver {.constructor,
    importcpp: "DNaming_SelectionDriver(@)", header: "DNaming_SelectionDriver.hxx".}
proc validate*(this: DNamingSelectionDriver; theLog: var Handle[TFunctionLogbook]) {.
    noSideEffect, importcpp: "Validate", header: "DNaming_SelectionDriver.hxx".}
proc mustExecute*(this: DNamingSelectionDriver; theLog: Handle[TFunctionLogbook]): StandardBoolean {.
    noSideEffect, importcpp: "MustExecute", header: "DNaming_SelectionDriver.hxx".}
proc execute*(this: DNamingSelectionDriver; theLog: var Handle[TFunctionLogbook]): StandardInteger {.
    noSideEffect, importcpp: "Execute", header: "DNaming_SelectionDriver.hxx".}
type
  DNamingSelectionDriverbaseType* = TFunctionDriver

proc getTypeName*(): cstring {.importcpp: "DNaming_SelectionDriver::get_type_name(@)",
                            header: "DNaming_SelectionDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DNaming_SelectionDriver::get_type_descriptor(@)",
    header: "DNaming_SelectionDriver.hxx".}
proc dynamicType*(this: DNamingSelectionDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "DNaming_SelectionDriver.hxx".}

