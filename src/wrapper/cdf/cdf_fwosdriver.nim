import ../standard/standard_types
import ../tcollection/tcollection_types
import cdf_types
import ../cdm/cdm_types




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



proc newCDF_FWOSDriver*(theLookUpTable: var CDM_MetaDataLookUpTable): CDF_FWOSDriver {.
    cdecl, constructor, importcpp: "CDF_FWOSDriver(@)", header: "CDF_FWOSDriver.hxx".}
proc find*(this: var CDF_FWOSDriver; aFolder: TCollectionExtendedString;
          aName: TCollectionExtendedString; aVersion: TCollectionExtendedString): bool {.
    cdecl, importcpp: "Find", header: "CDF_FWOSDriver.hxx".}
proc hasReadPermission*(this: var CDF_FWOSDriver;
                       aFolder: TCollectionExtendedString;
                       aName: TCollectionExtendedString;
                       aVersion: TCollectionExtendedString): bool {.cdecl,
    importcpp: "HasReadPermission", header: "CDF_FWOSDriver.hxx".}
proc findFolder*(this: var CDF_FWOSDriver; aFolder: TCollectionExtendedString): bool {.
    cdecl, importcpp: "FindFolder", header: "CDF_FWOSDriver.hxx".}
proc defaultFolder*(this: var CDF_FWOSDriver): TCollectionExtendedString {.cdecl,
    importcpp: "DefaultFolder", header: "CDF_FWOSDriver.hxx".}
proc buildFileName*(this: var CDF_FWOSDriver; aDocument: Handle[CDM_Document]): TCollectionExtendedString {.
    cdecl, importcpp: "BuildFileName", header: "CDF_FWOSDriver.hxx".}
proc setName*(this: var CDF_FWOSDriver; aDocument: Handle[CDM_Document];
             aName: TCollectionExtendedString): TCollectionExtendedString {.cdecl,
    importcpp: "SetName", header: "CDF_FWOSDriver.hxx".}


