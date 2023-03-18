import ../standard/standard_types
import ../tcollection/tcollection_types
import cdf_types
import ../message/message_types
import ../cdm/cdm_types
import ../pcdm/pcdm_types



##  Created on: 1997-11-17
##  Created by: Jean-Louis Frenkel
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





proc hasVersionCapability*(this: var CDF_MetaDataDriver): bool {.cdecl,
    importcpp: "HasVersionCapability", header: "CDF_MetaDataDriver.hxx".}
proc createDependsOn*(this: var CDF_MetaDataDriver;
                     aFirstData: Handle[CDM_MetaData];
                     aSecondData: Handle[CDM_MetaData]) {.cdecl,
    importcpp: "CreateDependsOn", header: "CDF_MetaDataDriver.hxx".}
proc createReference*(this: var CDF_MetaDataDriver; aFrom: Handle[CDM_MetaData];
                     aTo: Handle[CDM_MetaData]; aReferenceIdentifier: cint;
                     aToDocumentVersion: cint) {.cdecl,
    importcpp: "CreateReference", header: "CDF_MetaDataDriver.hxx".}
proc hasVersion*(this: var CDF_MetaDataDriver; aFolder: TCollectionExtendedString;
                aName: TCollectionExtendedString): bool {.cdecl,
    importcpp: "HasVersion", header: "CDF_MetaDataDriver.hxx".}
proc buildFileName*(this: var CDF_MetaDataDriver; aDocument: Handle[CDM_Document]): TCollectionExtendedString {.
    cdecl, importcpp: "BuildFileName", header: "CDF_MetaDataDriver.hxx".}
proc setName*(this: var CDF_MetaDataDriver; aDocument: Handle[CDM_Document];
             aName: TCollectionExtendedString): TCollectionExtendedString {.cdecl,
    importcpp: "SetName", header: "CDF_MetaDataDriver.hxx".}
proc find*(this: var CDF_MetaDataDriver; aFolder: TCollectionExtendedString;
          aName: TCollectionExtendedString; aVersion: TCollectionExtendedString): bool {.
    cdecl, importcpp: "Find", header: "CDF_MetaDataDriver.hxx".}
proc hasReadPermission*(this: var CDF_MetaDataDriver;
                       aFolder: TCollectionExtendedString;
                       aName: TCollectionExtendedString;
                       aVersion: TCollectionExtendedString): bool {.cdecl,
    importcpp: "HasReadPermission", header: "CDF_MetaDataDriver.hxx".}
proc metaData*(this: var CDF_MetaDataDriver; aFolder: TCollectionExtendedString;
              aName: TCollectionExtendedString;
              aVersion: TCollectionExtendedString): Handle[CDM_MetaData] {.cdecl,
    importcpp: "MetaData", header: "CDF_MetaDataDriver.hxx".}
proc lastVersion*(this: var CDF_MetaDataDriver; aMetaData: Handle[CDM_MetaData]): Handle[
    CDM_MetaData] {.cdecl, importcpp: "LastVersion",
                   header: "CDF_MetaDataDriver.hxx".}
proc createMetaData*(this: var CDF_MetaDataDriver; aDocument: Handle[CDM_Document];
                    aFileName: TCollectionExtendedString): Handle[CDM_MetaData] {.
    cdecl, importcpp: "CreateMetaData", header: "CDF_MetaDataDriver.hxx".}
proc findFolder*(this: var CDF_MetaDataDriver; aFolder: TCollectionExtendedString): bool {.
    cdecl, importcpp: "FindFolder", header: "CDF_MetaDataDriver.hxx".}
proc defaultFolder*(this: var CDF_MetaDataDriver): TCollectionExtendedString {.cdecl,
    importcpp: "DefaultFolder", header: "CDF_MetaDataDriver.hxx".}
proc referenceIterator*(this: var CDF_MetaDataDriver;
                       theMessageDriver: Handle[MessageMessenger]): Handle[
    PCDM_ReferenceIterator] {.cdecl, importcpp: "ReferenceIterator",
                             header: "CDF_MetaDataDriver.hxx".}
proc find*(this: var CDF_MetaDataDriver; aFolder: TCollectionExtendedString;
          aName: TCollectionExtendedString): bool {.cdecl, importcpp: "Find",
    header: "CDF_MetaDataDriver.hxx".}
proc metaData*(this: var CDF_MetaDataDriver; aFolder: TCollectionExtendedString;
              aName: TCollectionExtendedString): Handle[CDM_MetaData] {.cdecl,
    importcpp: "MetaData", header: "CDF_MetaDataDriver.hxx".}


