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

discard "forward decl of Standard_GUID"
discard "forward decl of TPrsStd_Driver"
discard "forward decl of TPrsStd_DriverTable"
discard "forward decl of TPrsStd_DriverTable"
type
  HandleC1C1* = Handle[TPrsStdDriverTable]

## ! This class is   a  container to record  (AddDriver)
## ! binding between  GUID and  TPrsStd_Driver.
## ! You create a new instance of TPrsStd_Driver
## ! and use the method AddDriver to load it into the driver table. the method

type
  TPrsStdDriverTable* {.importcpp: "TPrsStd_DriverTable",
                       header: "TPrsStd_DriverTable.hxx", bycopy.} = object of StandardTransient ##
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


proc get*(): Handle[TPrsStdDriverTable] {.importcpp: "TPrsStd_DriverTable::Get(@)",
                                       header: "TPrsStd_DriverTable.hxx".}
proc constructTPrsStdDriverTable*(): TPrsStdDriverTable {.constructor,
    importcpp: "TPrsStd_DriverTable(@)", header: "TPrsStd_DriverTable.hxx".}
proc initStandardDrivers*(this: var TPrsStdDriverTable) {.
    importcpp: "InitStandardDrivers", header: "TPrsStd_DriverTable.hxx".}
proc addDriver*(this: var TPrsStdDriverTable; guid: StandardGUID;
               driver: Handle[TPrsStdDriver]): bool {.importcpp: "AddDriver",
    header: "TPrsStd_DriverTable.hxx".}
proc findDriver*(this: TPrsStdDriverTable; guid: StandardGUID;
                driver: var Handle[TPrsStdDriver]): bool {.noSideEffect,
    importcpp: "FindDriver", header: "TPrsStd_DriverTable.hxx".}
proc removeDriver*(this: var TPrsStdDriverTable; guid: StandardGUID): bool {.
    importcpp: "RemoveDriver", header: "TPrsStd_DriverTable.hxx".}
proc clear*(this: var TPrsStdDriverTable) {.importcpp: "Clear",
                                        header: "TPrsStd_DriverTable.hxx".}
type
  TPrsStdDriverTablebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TPrsStd_DriverTable::get_type_name(@)",
                            header: "TPrsStd_DriverTable.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TPrsStd_DriverTable::get_type_descriptor(@)",
    header: "TPrsStd_DriverTable.hxx".}
proc dynamicType*(this: TPrsStdDriverTable): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TPrsStd_DriverTable.hxx".}

























