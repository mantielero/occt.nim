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

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of PCDM_DriverError"
discard "forward decl of PCDM_Document"
discard "forward decl of CDM_Document"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of Storage_Schema"
discard "forward decl of PCDM_StorageDriver"
discard "forward decl of PCDM_StorageDriver"
type
  HandlePCDM_StorageDriver* = Handle[PCDM_StorageDriver]

## ! persistent implemention of storage.
## !
## ! The  application  must redefine one the two Make()
## ! methods.  The first one, if  the application wants to
## ! put only one document in the storage file.
## !
## ! The  second  method  should  be   redefined  to  put
## ! additional document  that   could  be  used by   the
## ! retrieval instead of the principal document, depending
## ! on the schema used during the retrieval.  For example,
## ! a    second     document   could   be     a   standard
## ! CDMShape_Document.    This  means   that a   client
## ! application will already be able to extract a CDMShape_Document
## ! of the file, if the Shape Schema remains unchanged.

type
  PCDM_StorageDriver* {.importcpp: "PCDM_StorageDriver",
                       header: "PCDM_StorageDriver.hxx", bycopy.} = object of PCDM_Writer ##
                                                                                   ## !
                                                                                   ## raises
                                                                                   ## NotImplemented.


proc make*(this: var PCDM_StorageDriver; aDocument: Handle[CDM_Document]): Handle[
    PCDM_Document] {.importcpp: "Make", header: "PCDM_StorageDriver.hxx".}
proc make*(this: var PCDM_StorageDriver; aDocument: Handle[CDM_Document];
          documents: var PCDM_SequenceOfDocument) {.importcpp: "Make",
    header: "PCDM_StorageDriver.hxx".}
proc write*(this: var PCDM_StorageDriver; aDocument: Handle[CDM_Document];
           aFileName: TCollectionExtendedString;
           theRange: MessageProgressRange = messageProgressRange()) {.
    importcpp: "Write", header: "PCDM_StorageDriver.hxx".}
proc write*(this: var PCDM_StorageDriver; theDocument: Handle[CDM_Document];
           theOStream: var StandardOStream;
           theRange: MessageProgressRange = messageProgressRange()) {.
    importcpp: "Write", header: "PCDM_StorageDriver.hxx".}
proc setFormat*(this: var PCDM_StorageDriver; aformat: TCollectionExtendedString) {.
    importcpp: "SetFormat", header: "PCDM_StorageDriver.hxx".}
proc getFormat*(this: PCDM_StorageDriver): TCollectionExtendedString {.noSideEffect,
    importcpp: "GetFormat", header: "PCDM_StorageDriver.hxx".}
proc isError*(this: PCDM_StorageDriver): bool {.noSideEffect, importcpp: "IsError",
    header: "PCDM_StorageDriver.hxx".}
proc setIsError*(this: var PCDM_StorageDriver; theIsError: bool) {.
    importcpp: "SetIsError", header: "PCDM_StorageDriver.hxx".}
proc getStoreStatus*(this: PCDM_StorageDriver): PCDM_StoreStatus {.noSideEffect,
    importcpp: "GetStoreStatus", header: "PCDM_StorageDriver.hxx".}
proc setStoreStatus*(this: var PCDM_StorageDriver; theStoreStatus: PCDM_StoreStatus) {.
    importcpp: "SetStoreStatus", header: "PCDM_StorageDriver.hxx".}
type
  PCDM_StorageDriverbaseType* = PCDM_Writer

proc getTypeName*(): cstring {.importcpp: "PCDM_StorageDriver::get_type_name(@)",
                            header: "PCDM_StorageDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "PCDM_StorageDriver::get_type_descriptor(@)",
    header: "PCDM_StorageDriver.hxx".}
proc dynamicType*(this: PCDM_StorageDriver): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "PCDM_StorageDriver.hxx".}
