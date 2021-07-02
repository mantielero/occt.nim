##  Created on: 1997-12-18
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

discard "forward decl of PCDM_DriverError"
discard "forward decl of CDM_Document"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of CDM_Application"
discard "forward decl of PCDM_Reader"
discard "forward decl of PCDM_Reader"
type
  HandlePCDM_Reader* = Handle[PCDM_Reader]
  PCDM_Reader* {.importcpp: "PCDM_Reader", header: "PCDM_Reader.hxx", bycopy.} = object of StandardTransient ##
                                                                                                   ## !
                                                                                                   ## this
                                                                                                   ## method
                                                                                                   ## is
                                                                                                   ## called
                                                                                                   ## by
                                                                                                   ## the
                                                                                                   ## framework
                                                                                                   ## before
                                                                                                   ## the
                                                                                                   ## read
                                                                                                   ## method.


proc createDocument*(this: var PCDM_Reader): Handle[CDM_Document] {.
    importcpp: "CreateDocument", header: "PCDM_Reader.hxx".}
proc read*(this: var PCDM_Reader; aFileName: TCollectionExtendedString;
          aNewDocument: Handle[CDM_Document];
          anApplication: Handle[CDM_Application];
          theProgress: MessageProgressRange = messageProgressRange()) {.
    importcpp: "Read", header: "PCDM_Reader.hxx".}
proc read*(this: var PCDM_Reader; theIStream: var StandardIStream;
          theStorageData: Handle[StorageData]; theDoc: Handle[CDM_Document];
          theApplication: Handle[CDM_Application];
          theProgress: MessageProgressRange = messageProgressRange()) {.
    importcpp: "Read", header: "PCDM_Reader.hxx".}
proc getStatus*(this: PCDM_Reader): PCDM_ReaderStatus {.noSideEffect,
    importcpp: "GetStatus", header: "PCDM_Reader.hxx".}
type
  PCDM_ReaderbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "PCDM_Reader::get_type_name(@)",
                            header: "PCDM_Reader.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "PCDM_Reader::get_type_descriptor(@)", header: "PCDM_Reader.hxx".}
proc dynamicType*(this: PCDM_Reader): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "PCDM_Reader.hxx".}

