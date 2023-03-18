import ../standard/standard_types
import ../cdm/cdm_types
import ../message/message_types
import pcdm_types



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



proc newPCDM_ReferenceIterator*(theMessageDriver: Handle[MessageMessenger]): PCDM_ReferenceIterator {.
    cdecl, constructor, importcpp: "PCDM_ReferenceIterator(@)",
    header: "PCDM_ReferenceIterator.hxx".}
proc loadReferences*(this: var PCDM_ReferenceIterator;
                    aDocument: Handle[CDM_Document];
                    aMetaData: Handle[CDM_MetaData];
                    anApplication: Handle[CDM_Application];
                    useStorageConfiguration: bool) {.cdecl,
    importcpp: "LoadReferences", header: "PCDM_ReferenceIterator.hxx".}
proc init*(this: var PCDM_ReferenceIterator; aMetaData: Handle[CDM_MetaData]) {.cdecl,
    importcpp: "Init", header: "PCDM_ReferenceIterator.hxx".}

