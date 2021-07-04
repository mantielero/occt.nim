##  Created on: 1997-12-01
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
  ../Standard/Standard, ../Standard/Standard_Type, PCDM_SequenceOfReference,
  ../CDM/CDM_MetaDataLookUpTable

discard "forward decl of Message_Messenger"
discard "forward decl of CDM_Document"
discard "forward decl of CDM_MetaData"
discard "forward decl of CDM_Application"
discard "forward decl of PCDM_ReferenceIterator"
discard "forward decl of PCDM_ReferenceIterator"
type
  Handle_PCDM_ReferenceIterator* = handle[PCDM_ReferenceIterator]
  PCDM_ReferenceIterator* {.importcpp: "PCDM_ReferenceIterator",
                           header: "PCDM_ReferenceIterator.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                  ## !
                                                                                                  ## Warning!
                                                                                                  ## The
                                                                                                  ## constructor
                                                                                                  ## does
                                                                                                  ## not
                                                                                                  ## initialization.


proc constructPCDM_ReferenceIterator*(theMessageDriver: handle[Message_Messenger]): PCDM_ReferenceIterator {.
    constructor, importcpp: "PCDM_ReferenceIterator(@)",
    header: "PCDM_ReferenceIterator.hxx".}
proc LoadReferences*(this: var PCDM_ReferenceIterator;
                    aDocument: handle[CDM_Document];
                    aMetaData: handle[CDM_MetaData];
                    anApplication: handle[CDM_Application];
                    UseStorageConfiguration: Standard_Boolean) {.
    importcpp: "LoadReferences", header: "PCDM_ReferenceIterator.hxx".}
proc Init*(this: var PCDM_ReferenceIterator; aMetaData: handle[CDM_MetaData]) {.
    importcpp: "Init", header: "PCDM_ReferenceIterator.hxx".}
type
  PCDM_ReferenceIteratorbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "PCDM_ReferenceIterator::get_type_name(@)",
                              header: "PCDM_ReferenceIterator.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "PCDM_ReferenceIterator::get_type_descriptor(@)",
    header: "PCDM_ReferenceIterator.hxx".}
proc DynamicType*(this: PCDM_ReferenceIterator): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "PCDM_ReferenceIterator.hxx".}