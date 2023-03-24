import ../standard/standard_types
import ../cdm/cdm_types
import ../tcollection/tcollection_types
import pcdm_types
#import ../storage/storage_types
import ../message/message_includes


##  Created on: 1997-11-03
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





proc make*(this: var PCDM_StorageDriver; aDocument: Handle[CDM_Document]): Handle[
    PCDM_Document] {.cdecl, importcpp: "Make", header: "PCDM_StorageDriver.hxx".}
proc make*(this: var PCDM_StorageDriver; aDocument: Handle[CDM_Document];
          documents: var PCDM_SequenceOfDocument) {.cdecl, importcpp: "Make",
    header: "PCDM_StorageDriver.hxx".}
proc write*(this: var PCDM_StorageDriver; aDocument: Handle[CDM_Document];
           aFileName: TCollectionExtendedString;
           theRange: MessageProgressRange = newMessageProgressRange()) {.cdecl,
    importcpp: "Write", header: "PCDM_StorageDriver.hxx".}
proc write*(this: var PCDM_StorageDriver; theDocument: Handle[CDM_Document];
           theOStream: var StandardOStream;
           theRange: MessageProgressRange = newMessageProgressRange()) {.cdecl,
    importcpp: "Write", header: "PCDM_StorageDriver.hxx".}
proc setFormat*(this: var PCDM_StorageDriver; aformat: TCollectionExtendedString) {.
    cdecl, importcpp: "SetFormat", header: "PCDM_StorageDriver.hxx".}
proc getFormat*(this: PCDM_StorageDriver): TCollectionExtendedString {.noSideEffect,
    cdecl, importcpp: "GetFormat", header: "PCDM_StorageDriver.hxx".}
proc isError*(this: PCDM_StorageDriver): bool {.noSideEffect, cdecl,
    importcpp: "IsError", header: "PCDM_StorageDriver.hxx".}
proc setIsError*(this: var PCDM_StorageDriver; theIsError: bool) {.cdecl,
    importcpp: "SetIsError", header: "PCDM_StorageDriver.hxx".}
proc getStoreStatus*(this: PCDM_StorageDriver): PCDM_StoreStatus {.noSideEffect,
    cdecl, importcpp: "GetStoreStatus", header: "PCDM_StorageDriver.hxx".}
proc setStoreStatus*(this: var PCDM_StorageDriver; theStoreStatus: PCDM_StoreStatus) {.
    cdecl, importcpp: "SetStoreStatus", header: "PCDM_StorageDriver.hxx".}

