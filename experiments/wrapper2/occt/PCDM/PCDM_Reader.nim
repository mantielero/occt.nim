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

import
  ../Standard/Standard, ../Standard/Standard_Type, PCDM_ReaderStatus,
  ../Standard/Standard_Transient, ../Standard/Standard_IStream,
  ../Storage/Storage_Data, ../Message/Message_ProgressRange

discard "forward decl of PCDM_DriverError"
discard "forward decl of CDM_Document"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of CDM_Application"
discard "forward decl of PCDM_Reader"
discard "forward decl of PCDM_Reader"
type
  Handle_PCDM_Reader* = handle[PCDM_Reader]
  PCDM_Reader* {.importcpp: "PCDM_Reader", header: "PCDM_Reader.hxx", bycopy.} = object of Standard_Transient ##
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


proc CreateDocument*(this: var PCDM_Reader): handle[CDM_Document] {.
    importcpp: "CreateDocument", header: "PCDM_Reader.hxx".}
proc Read*(this: var PCDM_Reader; aFileName: TCollection_ExtendedString;
          aNewDocument: handle[CDM_Document];
          anApplication: handle[CDM_Application];
          theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "Read", header: "PCDM_Reader.hxx".}
proc Read*(this: var PCDM_Reader; theIStream: var Standard_IStream;
          theStorageData: handle[Storage_Data]; theDoc: handle[CDM_Document];
          theApplication: handle[CDM_Application];
          theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "Read", header: "PCDM_Reader.hxx".}
proc GetStatus*(this: PCDM_Reader): PCDM_ReaderStatus {.noSideEffect,
    importcpp: "GetStatus", header: "PCDM_Reader.hxx".}
type
  PCDM_Readerbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "PCDM_Reader::get_type_name(@)",
                              header: "PCDM_Reader.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "PCDM_Reader::get_type_descriptor(@)", header: "PCDM_Reader.hxx".}
proc DynamicType*(this: PCDM_Reader): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "PCDM_Reader.hxx".}