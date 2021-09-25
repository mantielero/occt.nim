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

discard "forward decl of Standard_NotImplemented"
discard "forward decl of CDM_MetaData"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of CDM_Document"
discard "forward decl of PCDM_ReferenceIterator"
discard "forward decl of Message_Messenger"
discard "forward decl of CDF_MetaDataDriver"
discard "forward decl of CDF_MetaDataDriver"
type
  HandleCDF_MetaDataDriver* = Handle[CDF_MetaDataDriver]

## ! this class list the method that must be available for
## ! a specific DBMS

type
  CDF_MetaDataDriver* {.importcpp: "CDF_MetaDataDriver",
                       header: "CDF_MetaDataDriver.hxx", bycopy.} = object of StandardTransient ##
                                                                                         ## !
                                                                                         ## returns
                                                                                         ## true
                                                                                         ## if
                                                                                         ## the
                                                                                         ## MetaDataDriver
                                                                                         ## can
                                                                                         ## manage
                                                                                         ## different
                                                                                         ##
                                                                                         ## !
                                                                                         ## versions
                                                                                         ## of
                                                                                         ## a
                                                                                         ## Data.
                                                                                         ##
                                                                                         ## !
                                                                                         ## By
                                                                                         ## default,
                                                                                         ## returns
                                                                                         ## Standard_False.


proc hasVersionCapability*(this: var CDF_MetaDataDriver): bool {.
    importcpp: "HasVersionCapability", header: "CDF_MetaDataDriver.hxx".}
proc createDependsOn*(this: var CDF_MetaDataDriver;
                     aFirstData: Handle[CDM_MetaData];
                     aSecondData: Handle[CDM_MetaData]) {.
    importcpp: "CreateDependsOn", header: "CDF_MetaDataDriver.hxx".}
proc createReference*(this: var CDF_MetaDataDriver; aFrom: Handle[CDM_MetaData];
                     aTo: Handle[CDM_MetaData]; aReferenceIdentifier: int;
                     aToDocumentVersion: int) {.importcpp: "CreateReference",
    header: "CDF_MetaDataDriver.hxx".}
proc hasVersion*(this: var CDF_MetaDataDriver; aFolder: TCollectionExtendedString;
                aName: TCollectionExtendedString): bool {.importcpp: "HasVersion",
    header: "CDF_MetaDataDriver.hxx".}
proc buildFileName*(this: var CDF_MetaDataDriver; aDocument: Handle[CDM_Document]): TCollectionExtendedString {.
    importcpp: "BuildFileName", header: "CDF_MetaDataDriver.hxx".}
proc setName*(this: var CDF_MetaDataDriver; aDocument: Handle[CDM_Document];
             aName: TCollectionExtendedString): TCollectionExtendedString {.
    importcpp: "SetName", header: "CDF_MetaDataDriver.hxx".}
proc find*(this: var CDF_MetaDataDriver; aFolder: TCollectionExtendedString;
          aName: TCollectionExtendedString; aVersion: TCollectionExtendedString): bool {.
    importcpp: "Find", header: "CDF_MetaDataDriver.hxx".}
proc hasReadPermission*(this: var CDF_MetaDataDriver;
                       aFolder: TCollectionExtendedString;
                       aName: TCollectionExtendedString;
                       aVersion: TCollectionExtendedString): bool {.
    importcpp: "HasReadPermission", header: "CDF_MetaDataDriver.hxx".}
proc metaData*(this: var CDF_MetaDataDriver; aFolder: TCollectionExtendedString;
              aName: TCollectionExtendedString;
              aVersion: TCollectionExtendedString): Handle[CDM_MetaData] {.
    importcpp: "MetaData", header: "CDF_MetaDataDriver.hxx".}
proc lastVersion*(this: var CDF_MetaDataDriver; aMetaData: Handle[CDM_MetaData]): Handle[
    CDM_MetaData] {.importcpp: "LastVersion", header: "CDF_MetaDataDriver.hxx".}
proc createMetaData*(this: var CDF_MetaDataDriver; aDocument: Handle[CDM_Document];
                    aFileName: TCollectionExtendedString): Handle[CDM_MetaData] {.
    importcpp: "CreateMetaData", header: "CDF_MetaDataDriver.hxx".}
proc findFolder*(this: var CDF_MetaDataDriver; aFolder: TCollectionExtendedString): bool {.
    importcpp: "FindFolder", header: "CDF_MetaDataDriver.hxx".}
proc defaultFolder*(this: var CDF_MetaDataDriver): TCollectionExtendedString {.
    importcpp: "DefaultFolder", header: "CDF_MetaDataDriver.hxx".}
proc referenceIterator*(this: var CDF_MetaDataDriver;
                       theMessageDriver: Handle[MessageMessenger]): Handle[
    PCDM_ReferenceIterator] {.importcpp: "ReferenceIterator",
                             header: "CDF_MetaDataDriver.hxx".}
proc find*(this: var CDF_MetaDataDriver; aFolder: TCollectionExtendedString;
          aName: TCollectionExtendedString): bool {.importcpp: "Find",
    header: "CDF_MetaDataDriver.hxx".}
proc metaData*(this: var CDF_MetaDataDriver; aFolder: TCollectionExtendedString;
              aName: TCollectionExtendedString): Handle[CDM_MetaData] {.
    importcpp: "MetaData", header: "CDF_MetaDataDriver.hxx".}
type
  CDF_MetaDataDriverbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "CDF_MetaDataDriver::get_type_name(@)",
                            header: "CDF_MetaDataDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "CDF_MetaDataDriver::get_type_descriptor(@)",
    header: "CDF_MetaDataDriver.hxx".}
proc dynamicType*(this: CDF_MetaDataDriver): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "CDF_MetaDataDriver.hxx".}
