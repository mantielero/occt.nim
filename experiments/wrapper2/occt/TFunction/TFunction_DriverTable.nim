##  Created on: 1999-06-11
##  Created by: Vladislav ROMASHKO
##  Copyright (c) 1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

discard "forward decl of Standard_GUID"
discard "forward decl of TFunction_Driver"
discard "forward decl of TFunction_DriverTable"
discard "forward decl of TFunction_DriverTable"
type
  HandleTFunctionDriverTable* = Handle[TFunctionDriverTable]

## ! A container for instances of drivers.
## ! You create a new instance of TFunction_Driver
## ! and use the method AddDriver to load it into the driver table.

type
  TFunctionDriverTable* {.importcpp: "TFunction_DriverTable",
                         header: "TFunction_DriverTable.hxx", bycopy.} = object of StandardTransient ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## the
                                                                                              ## driver
                                                                                              ## table.
                                                                                              ## If
                                                                                              ## a
                                                                                              ## driver
                                                                                              ## does
                                                                                              ## not
                                                                                              ## exist,
                                                                                              ## creates
                                                                                              ## it.


proc get*(): Handle[TFunctionDriverTable] {.
    importcpp: "TFunction_DriverTable::Get(@)",
    header: "TFunction_DriverTable.hxx".}
proc constructTFunctionDriverTable*(): TFunctionDriverTable {.constructor,
    importcpp: "TFunction_DriverTable(@)", header: "TFunction_DriverTable.hxx".}
proc addDriver*(this: var TFunctionDriverTable; guid: StandardGUID;
               driver: Handle[TFunctionDriver]; thread: int = 0): bool {.
    importcpp: "AddDriver", header: "TFunction_DriverTable.hxx".}
proc hasDriver*(this: TFunctionDriverTable; guid: StandardGUID; thread: int = 0): bool {.
    noSideEffect, importcpp: "HasDriver", header: "TFunction_DriverTable.hxx".}
proc findDriver*(this: TFunctionDriverTable; guid: StandardGUID;
                driver: var Handle[TFunctionDriver]; thread: int = 0): bool {.
    noSideEffect, importcpp: "FindDriver", header: "TFunction_DriverTable.hxx".}
proc dump*(this: TFunctionDriverTable; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TFunction_DriverTable.hxx".}
proc `<<`*(this: TFunctionDriverTable; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "(# << #)", header: "TFunction_DriverTable.hxx".}
proc removeDriver*(this: var TFunctionDriverTable; guid: StandardGUID; thread: int = 0): bool {.
    importcpp: "RemoveDriver", header: "TFunction_DriverTable.hxx".}
proc clear*(this: var TFunctionDriverTable) {.importcpp: "Clear",
    header: "TFunction_DriverTable.hxx".}
type
  TFunctionDriverTablebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TFunction_DriverTable::get_type_name(@)",
                            header: "TFunction_DriverTable.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TFunction_DriverTable::get_type_descriptor(@)",
    header: "TFunction_DriverTable.hxx".}
proc dynamicType*(this: TFunctionDriverTable): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TFunction_DriverTable.hxx".}
