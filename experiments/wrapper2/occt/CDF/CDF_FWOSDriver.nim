##  Created on: 1997-01-22
##  Created by: Mister rmi
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, CDF_MetaDataDriver,
  ../CDM/CDM_MetaDataLookUpTable, ../Standard/Standard_Boolean

discard "forward decl of TCollection_ExtendedString"
discard "forward decl of CDM_MetaData"
discard "forward decl of CDM_Document"
discard "forward decl of CDF_FWOSDriver"
discard "forward decl of CDF_FWOSDriver"
type
  Handle_CDF_FWOSDriver* = handle[CDF_FWOSDriver]
  CDF_FWOSDriver* {.importcpp: "CDF_FWOSDriver", header: "CDF_FWOSDriver.hxx", bycopy.} = object of CDF_MetaDataDriver ##
                                                                                                             ## !
                                                                                                             ## Initializes
                                                                                                             ## the
                                                                                                             ## MetaDatadriver
                                                                                                             ## connected
                                                                                                             ## to
                                                                                                             ## specified
                                                                                                             ## look-up
                                                                                                             ## table.
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## Note
                                                                                                             ## that
                                                                                                             ## the
                                                                                                             ## created
                                                                                                             ## driver
                                                                                                             ## will
                                                                                                             ## keep
                                                                                                             ## reference
                                                                                                             ## to
                                                                                                             ## the
                                                                                                             ## table,
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## thus
                                                                                                             ## it
                                                                                                             ## must
                                                                                                             ## have
                                                                                                             ## life
                                                                                                             ## time
                                                                                                             ## longer
                                                                                                             ## than
                                                                                                             ## this
                                                                                                             ## object.


proc constructCDF_FWOSDriver*(theLookUpTable: var CDM_MetaDataLookUpTable): CDF_FWOSDriver {.
    constructor, importcpp: "CDF_FWOSDriver(@)", header: "CDF_FWOSDriver.hxx".}
proc Find*(this: var CDF_FWOSDriver; aFolder: TCollection_ExtendedString;
          aName: TCollection_ExtendedString; aVersion: TCollection_ExtendedString): Standard_Boolean {.
    importcpp: "Find", header: "CDF_FWOSDriver.hxx".}
proc HasReadPermission*(this: var CDF_FWOSDriver;
                       aFolder: TCollection_ExtendedString;
                       aName: TCollection_ExtendedString;
                       aVersion: TCollection_ExtendedString): Standard_Boolean {.
    importcpp: "HasReadPermission", header: "CDF_FWOSDriver.hxx".}
proc FindFolder*(this: var CDF_FWOSDriver; aFolder: TCollection_ExtendedString): Standard_Boolean {.
    importcpp: "FindFolder", header: "CDF_FWOSDriver.hxx".}
proc DefaultFolder*(this: var CDF_FWOSDriver): TCollection_ExtendedString {.
    importcpp: "DefaultFolder", header: "CDF_FWOSDriver.hxx".}
proc BuildFileName*(this: var CDF_FWOSDriver; aDocument: handle[CDM_Document]): TCollection_ExtendedString {.
    importcpp: "BuildFileName", header: "CDF_FWOSDriver.hxx".}
proc SetName*(this: var CDF_FWOSDriver; aDocument: handle[CDM_Document];
             aName: TCollection_ExtendedString): TCollection_ExtendedString {.
    importcpp: "SetName", header: "CDF_FWOSDriver.hxx".}
type
  CDF_FWOSDriverbase_type* = CDF_MetaDataDriver

proc get_type_name*(): cstring {.importcpp: "CDF_FWOSDriver::get_type_name(@)",
                              header: "CDF_FWOSDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "CDF_FWOSDriver::get_type_descriptor(@)",
    header: "CDF_FWOSDriver.hxx".}
proc DynamicType*(this: CDF_FWOSDriver): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "CDF_FWOSDriver.hxx".}