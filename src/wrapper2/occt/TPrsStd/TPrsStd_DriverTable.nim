##  Created on: 1999-08-04
##  Created by: Denis PASCAL
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
  ../Standard/Standard, ../Standard/Standard_Type, TPrsStd_DataMapOfGUIDDriver,
  ../Standard/Standard_Transient, ../Standard/Standard_Boolean

discard "forward decl of Standard_GUID"
discard "forward decl of TPrsStd_Driver"
discard "forward decl of TPrsStd_DriverTable"
discard "forward decl of TPrsStd_DriverTable"
type
  Handle_TPrsStd_DriverTable* = handle[TPrsStd_DriverTable]

## ! This class is   a  container to record  (AddDriver)
## ! binding between  GUID and  TPrsStd_Driver.
## ! You create a new instance of TPrsStd_Driver
## ! and use the method AddDriver to load it into the driver table. the method

type
  TPrsStd_DriverTable* {.importcpp: "TPrsStd_DriverTable",
                        header: "TPrsStd_DriverTable.hxx", bycopy.} = object of Standard_Transient ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## the
                                                                                            ## static
                                                                                            ## table.
                                                                                            ##
                                                                                            ## !
                                                                                            ## If
                                                                                            ## it
                                                                                            ## does
                                                                                            ## not
                                                                                            ## exist,
                                                                                            ## creates
                                                                                            ## it
                                                                                            ## and
                                                                                            ## fills
                                                                                            ## it
                                                                                            ## with
                                                                                            ## standard
                                                                                            ## drivers.


proc Get*(): handle[TPrsStd_DriverTable] {.importcpp: "TPrsStd_DriverTable::Get(@)",
                                        header: "TPrsStd_DriverTable.hxx".}
proc constructTPrsStd_DriverTable*(): TPrsStd_DriverTable {.constructor,
    importcpp: "TPrsStd_DriverTable(@)", header: "TPrsStd_DriverTable.hxx".}
proc InitStandardDrivers*(this: var TPrsStd_DriverTable) {.
    importcpp: "InitStandardDrivers", header: "TPrsStd_DriverTable.hxx".}
proc AddDriver*(this: var TPrsStd_DriverTable; guid: Standard_GUID;
               driver: handle[TPrsStd_Driver]): Standard_Boolean {.
    importcpp: "AddDriver", header: "TPrsStd_DriverTable.hxx".}
proc FindDriver*(this: TPrsStd_DriverTable; guid: Standard_GUID;
                driver: var handle[TPrsStd_Driver]): Standard_Boolean {.
    noSideEffect, importcpp: "FindDriver", header: "TPrsStd_DriverTable.hxx".}
proc RemoveDriver*(this: var TPrsStd_DriverTable; guid: Standard_GUID): Standard_Boolean {.
    importcpp: "RemoveDriver", header: "TPrsStd_DriverTable.hxx".}
proc Clear*(this: var TPrsStd_DriverTable) {.importcpp: "Clear",
    header: "TPrsStd_DriverTable.hxx".}
type
  TPrsStd_DriverTablebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TPrsStd_DriverTable::get_type_name(@)",
                              header: "TPrsStd_DriverTable.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TPrsStd_DriverTable::get_type_descriptor(@)",
    header: "TPrsStd_DriverTable.hxx".}
proc DynamicType*(this: TPrsStd_DriverTable): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TPrsStd_DriverTable.hxx".}