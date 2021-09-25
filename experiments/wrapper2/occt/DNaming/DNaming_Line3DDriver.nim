##  Created on: 2010-02-26
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
discard "forward decl of TDF_Label"
discard "forward decl of TopoDS_Wire"
discard "forward decl of DNaming_Line3DDriver"
discard "forward decl of DNaming_Line3DDriver"
type
  HandleDNamingLine3DDriver* = Handle[DNamingLine3DDriver]

## ! Computes Line 3D function

type
  DNamingLine3DDriver* {.importcpp: "DNaming_Line3DDriver",
                        header: "DNaming_Line3DDriver.hxx", bycopy.} = object of TFunctionDriver ##
                                                                                          ## !
                                                                                          ## Constructor
                                                                                          ##
                                                                                          ## !
                                                                                          ## validation
                                                                                          ##
                                                                                          ## !
                                                                                          ## ==========
                                                                                          ##
                                                                                          ## !
                                                                                          ## Loads
                                                                                          ## a
                                                                                          ## Line3D
                                                                                          ## in
                                                                                          ## a
                                                                                          ## data
                                                                                          ## framework


proc constructDNamingLine3DDriver*(): DNamingLine3DDriver {.constructor,
    importcpp: "DNaming_Line3DDriver(@)", header: "DNaming_Line3DDriver.hxx".}
proc validate*(this: DNamingLine3DDriver; theLog: var Handle[TFunctionLogbook]) {.
    noSideEffect, importcpp: "Validate", header: "DNaming_Line3DDriver.hxx".}
proc mustExecute*(this: DNamingLine3DDriver; theLog: Handle[TFunctionLogbook]): bool {.
    noSideEffect, importcpp: "MustExecute", header: "DNaming_Line3DDriver.hxx".}
proc execute*(this: DNamingLine3DDriver; theLog: var Handle[TFunctionLogbook]): int {.
    noSideEffect, importcpp: "Execute", header: "DNaming_Line3DDriver.hxx".}
type
  DNamingLine3DDriverbaseType* = TFunctionDriver

proc getTypeName*(): cstring {.importcpp: "DNaming_Line3DDriver::get_type_name(@)",
                            header: "DNaming_Line3DDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DNaming_Line3DDriver::get_type_descriptor(@)",
    header: "DNaming_Line3DDriver.hxx".}
proc dynamicType*(this: DNamingLine3DDriver): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "DNaming_Line3DDriver.hxx".}
