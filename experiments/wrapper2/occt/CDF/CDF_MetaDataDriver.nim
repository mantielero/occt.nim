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

import
  ../Standard/Standard_Type

discard "forward decl of Standard_NotImplemented"
discard "forward decl of CDM_MetaData"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of CDM_Document"
discard "forward decl of PCDM_ReferenceIterator"
discard "forward decl of Message_Messenger"
discard "forward decl of CDF_MetaDataDriver"
discard "forward decl of CDF_MetaDataDriver"
type
  Handle_CDF_MetaDataDriver* = handle[CDF_MetaDataDriver]

## ! this class list the method that must be available for
## ! a specific DBMS

type
  CDF_MetaDataDriver* {.importcpp: "CDF_MetaDataDriver",
                       header: "CDF_MetaDataDriver.hxx", bycopy.} = object of Standard_Transient ##
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


proc HasVersionCapability*(this: var CDF_MetaDataDriver): Standard_Boolean {.
    importcpp: "HasVersionCapability", header: "CDF_MetaDataDriver.hxx".}
proc CreateDependsOn*(this: var CDF_MetaDataDriver;
                     aFirstData: handle[CDM_MetaData];
                     aSecondData: handle[CDM_MetaData]) {.
    importcpp: "CreateDependsOn", header: "CDF_MetaDataDriver.hxx".}
proc CreateReference*(this: var CDF_MetaDataDriver; aFrom: handle[CDM_MetaData];
                     aTo: handle[CDM_MetaData];
                     aReferenceIdentifier: Standard_Integer;
                     aToDocumentVersion: Standard_Integer) {.
    importcpp: "CreateReference", header: "CDF_MetaDataDriver.hxx".}
proc HasVersion*(this: var CDF_MetaDataDriver; aFolder: TCollection_ExtendedString;
                aName: TCollection_ExtendedString): Standard_Boolean {.
    importcpp: "HasVersion", header: "CDF_MetaDataDriver.hxx".}
proc BuildFileName*(this: var CDF_MetaDataDriver; aDocument: handle[CDM_Document]): TCollection_ExtendedString {.
    importcpp: "BuildFileName", header: "CDF_MetaDataDriver.hxx".}
proc SetName*(this: var CDF_MetaDataDriver; aDocument: handle[CDM_Document];
             aName: TCollection_ExtendedString): TCollection_ExtendedString {.
    importcpp: "SetName", header: "CDF_MetaDataDriver.hxx".}
proc Find*(this: var CDF_MetaDataDriver; aFolder: TCollection_ExtendedString;
          aName: TCollection_ExtendedString; aVersion: TCollection_ExtendedString): Standard_Boolean {.
    importcpp: "Find", header: "CDF_MetaDataDriver.hxx".}
proc HasReadPermission*(this: var CDF_MetaDataDriver;
                       aFolder: TCollection_ExtendedString;
                       aName: TCollection_ExtendedString;
                       aVersion: TCollection_ExtendedString): Standard_Boolean {.
    importcpp: "HasReadPermission", header: "CDF_MetaDataDriver.hxx".}
proc MetaData*(this: var CDF_MetaDataDriver; aFolder: TCollection_ExtendedString;
              aName: TCollection_ExtendedString;
              aVersion: TCollection_ExtendedString): handle[CDM_MetaData] {.
    importcpp: "MetaData", header: "CDF_MetaDataDriver.hxx".}
proc LastVersion*(this: var CDF_MetaDataDriver; aMetaData: handle[CDM_MetaData]): handle[
    CDM_MetaData] {.importcpp: "LastVersion", header: "CDF_MetaDataDriver.hxx".}
proc CreateMetaData*(this: var CDF_MetaDataDriver; aDocument: handle[CDM_Document];
                    aFileName: TCollection_ExtendedString): handle[CDM_MetaData] {.
    importcpp: "CreateMetaData", header: "CDF_MetaDataDriver.hxx".}
proc FindFolder*(this: var CDF_MetaDataDriver; aFolder: TCollection_ExtendedString): Standard_Boolean {.
    importcpp: "FindFolder", header: "CDF_MetaDataDriver.hxx".}
proc DefaultFolder*(this: var CDF_MetaDataDriver): TCollection_ExtendedString {.
    importcpp: "DefaultFolder", header: "CDF_MetaDataDriver.hxx".}
proc ReferenceIterator*(this: var CDF_MetaDataDriver;
                       theMessageDriver: handle[Message_Messenger]): handle[
    PCDM_ReferenceIterator] {.importcpp: "ReferenceIterator",
                             header: "CDF_MetaDataDriver.hxx".}
proc Find*(this: var CDF_MetaDataDriver; aFolder: TCollection_ExtendedString;
          aName: TCollection_ExtendedString): Standard_Boolean {.importcpp: "Find",
    header: "CDF_MetaDataDriver.hxx".}
proc MetaData*(this: var CDF_MetaDataDriver; aFolder: TCollection_ExtendedString;
              aName: TCollection_ExtendedString): handle[CDM_MetaData] {.
    importcpp: "MetaData", header: "CDF_MetaDataDriver.hxx".}
type
  CDF_MetaDataDriverbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "CDF_MetaDataDriver::get_type_name(@)",
                              header: "CDF_MetaDataDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "CDF_MetaDataDriver::get_type_descriptor(@)",
    header: "CDF_MetaDataDriver.hxx".}
proc DynamicType*(this: CDF_MetaDataDriver): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "CDF_MetaDataDriver.hxx".}