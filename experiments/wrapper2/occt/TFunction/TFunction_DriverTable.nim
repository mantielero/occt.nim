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

import
  ../Standard/Standard, ../Standard/Standard_Type, TFunction_DataMapOfGUIDDriver,
  TFunction_HArray1OfDataMapOfGUIDDriver, ../Standard/Standard_Transient,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../Standard/Standard_OStream

discard "forward decl of Standard_GUID"
discard "forward decl of TFunction_Driver"
discard "forward decl of TFunction_DriverTable"
discard "forward decl of TFunction_DriverTable"
type
  Handle_TFunction_DriverTable* = handle[TFunction_DriverTable]

## ! A container for instances of drivers.
## ! You create a new instance of TFunction_Driver
## ! and use the method AddDriver to load it into the driver table.

type
  TFunction_DriverTable* {.importcpp: "TFunction_DriverTable",
                          header: "TFunction_DriverTable.hxx", bycopy.} = object of Standard_Transient ##
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


proc Get*(): handle[TFunction_DriverTable] {.
    importcpp: "TFunction_DriverTable::Get(@)",
    header: "TFunction_DriverTable.hxx".}
proc constructTFunction_DriverTable*(): TFunction_DriverTable {.constructor,
    importcpp: "TFunction_DriverTable(@)", header: "TFunction_DriverTable.hxx".}
proc AddDriver*(this: var TFunction_DriverTable; guid: Standard_GUID;
               driver: handle[TFunction_Driver]; thread: Standard_Integer = 0): Standard_Boolean {.
    importcpp: "AddDriver", header: "TFunction_DriverTable.hxx".}
proc HasDriver*(this: TFunction_DriverTable; guid: Standard_GUID;
               thread: Standard_Integer = 0): Standard_Boolean {.noSideEffect,
    importcpp: "HasDriver", header: "TFunction_DriverTable.hxx".}
proc FindDriver*(this: TFunction_DriverTable; guid: Standard_GUID;
                driver: var handle[TFunction_Driver]; thread: Standard_Integer = 0): Standard_Boolean {.
    noSideEffect, importcpp: "FindDriver", header: "TFunction_DriverTable.hxx".}
proc Dump*(this: TFunction_DriverTable; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TFunction_DriverTable.hxx".}
proc `<<`*(this: TFunction_DriverTable; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "(# << #)", header: "TFunction_DriverTable.hxx".}
proc RemoveDriver*(this: var TFunction_DriverTable; guid: Standard_GUID;
                  thread: Standard_Integer = 0): Standard_Boolean {.
    importcpp: "RemoveDriver", header: "TFunction_DriverTable.hxx".}
proc Clear*(this: var TFunction_DriverTable) {.importcpp: "Clear",
    header: "TFunction_DriverTable.hxx".}
type
  TFunction_DriverTablebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TFunction_DriverTable::get_type_name(@)",
                              header: "TFunction_DriverTable.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TFunction_DriverTable::get_type_descriptor(@)",
    header: "TFunction_DriverTable.hxx".}
proc DynamicType*(this: TFunction_DriverTable): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "TFunction_DriverTable.hxx".}