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

discard "forward decl of TCollection_ExtendedString"
discard "forward decl of CDM_MetaData"
discard "forward decl of CDM_Document"
discard "forward decl of CDF_FWOSDriver"
discard "forward decl of CDF_FWOSDriver"
type
  HandleC1C1* = Handle[CDF_FWOSDriver]
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
proc find*(this: var CDF_FWOSDriver; aFolder: TCollectionExtendedString;
          aName: TCollectionExtendedString; aVersion: TCollectionExtendedString): bool {.
    importcpp: "Find", header: "CDF_FWOSDriver.hxx".}
proc hasReadPermission*(this: var CDF_FWOSDriver;
                       aFolder: TCollectionExtendedString;
                       aName: TCollectionExtendedString;
                       aVersion: TCollectionExtendedString): bool {.
    importcpp: "HasReadPermission", header: "CDF_FWOSDriver.hxx".}
proc findFolder*(this: var CDF_FWOSDriver; aFolder: TCollectionExtendedString): bool {.
    importcpp: "FindFolder", header: "CDF_FWOSDriver.hxx".}
proc defaultFolder*(this: var CDF_FWOSDriver): TCollectionExtendedString {.
    importcpp: "DefaultFolder", header: "CDF_FWOSDriver.hxx".}
proc buildFileName*(this: var CDF_FWOSDriver; aDocument: Handle[CDM_Document]): TCollectionExtendedString {.
    importcpp: "BuildFileName", header: "CDF_FWOSDriver.hxx".}
proc setName*(this: var CDF_FWOSDriver; aDocument: Handle[CDM_Document];
             aName: TCollectionExtendedString): TCollectionExtendedString {.
    importcpp: "SetName", header: "CDF_FWOSDriver.hxx".}
type
  CDF_FWOSDriverbaseType* = CDF_MetaDataDriver

proc getTypeName*(): cstring {.importcpp: "CDF_FWOSDriver::get_type_name(@)",
                            header: "CDF_FWOSDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "CDF_FWOSDriver::get_type_descriptor(@)",
    header: "CDF_FWOSDriver.hxx".}
proc dynamicType*(this: CDF_FWOSDriver): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "CDF_FWOSDriver.hxx".}

























