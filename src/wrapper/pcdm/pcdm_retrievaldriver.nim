import ../standard/standard_types
import ../tcollection/tcollection_types
import ../message/message_types
import pcdm_types



##  Created on: 1997-08-07
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



proc documentVersion*(theFileName: TCollectionExtendedString;
                     theMsgDriver: Handle[MessageMessenger]): cint {.cdecl,
    importcpp: "PCDM_RetrievalDriver::DocumentVersion(@)",
    header: "PCDM_RetrievalDriver.hxx".}
proc referenceCounter*(theFileName: TCollectionExtendedString;
                      theMsgDriver: Handle[MessageMessenger]): cint {.cdecl,
    importcpp: "PCDM_RetrievalDriver::ReferenceCounter(@)",
    header: "PCDM_RetrievalDriver.hxx".}
proc setFormat*(this: var PCDM_RetrievalDriver; aformat: TCollectionExtendedString) {.
    cdecl, importcpp: "SetFormat", header: "PCDM_RetrievalDriver.hxx".}
proc getFormat*(this: PCDM_RetrievalDriver): TCollectionExtendedString {.
    noSideEffect, cdecl, importcpp: "GetFormat", header: "PCDM_RetrievalDriver.hxx".}

