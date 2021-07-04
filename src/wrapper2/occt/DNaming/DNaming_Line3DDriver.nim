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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../TFunction/TFunction_Driver,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../TopTools/TopTools_Array1OfShape

discard "forward decl of TFunction_Logbook"
discard "forward decl of TDF_Label"
discard "forward decl of TopoDS_Wire"
discard "forward decl of DNaming_Line3DDriver"
discard "forward decl of DNaming_Line3DDriver"
type
  Handle_DNaming_Line3DDriver* = handle[DNaming_Line3DDriver]

## ! Computes Line 3D function

type
  DNaming_Line3DDriver* {.importcpp: "DNaming_Line3DDriver",
                         header: "DNaming_Line3DDriver.hxx", bycopy.} = object of TFunction_Driver ##
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


proc constructDNaming_Line3DDriver*(): DNaming_Line3DDriver {.constructor,
    importcpp: "DNaming_Line3DDriver(@)", header: "DNaming_Line3DDriver.hxx".}
proc Validate*(this: DNaming_Line3DDriver; theLog: var handle[TFunction_Logbook]) {.
    noSideEffect, importcpp: "Validate", header: "DNaming_Line3DDriver.hxx".}
proc MustExecute*(this: DNaming_Line3DDriver; theLog: handle[TFunction_Logbook]): Standard_Boolean {.
    noSideEffect, importcpp: "MustExecute", header: "DNaming_Line3DDriver.hxx".}
proc Execute*(this: DNaming_Line3DDriver; theLog: var handle[TFunction_Logbook]): Standard_Integer {.
    noSideEffect, importcpp: "Execute", header: "DNaming_Line3DDriver.hxx".}
type
  DNaming_Line3DDriverbase_type* = TFunction_Driver

proc get_type_name*(): cstring {.importcpp: "DNaming_Line3DDriver::get_type_name(@)",
                              header: "DNaming_Line3DDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "DNaming_Line3DDriver::get_type_descriptor(@)",
    header: "DNaming_Line3DDriver.hxx".}
proc DynamicType*(this: DNaming_Line3DDriver): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "DNaming_Line3DDriver.hxx".}