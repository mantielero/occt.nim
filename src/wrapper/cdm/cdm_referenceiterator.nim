import ../standard/standard_types
import cdm_types



##  Created on: 1997-08-04
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



proc newCDM_ReferenceIterator*(aDocument: Handle[CDM_Document]): CDM_ReferenceIterator {.
    cdecl, constructor, importcpp: "CDM_ReferenceIterator(@)",
    header: "CDM_ReferenceIterator.hxx".}
proc more*(this: CDM_ReferenceIterator): bool {.noSideEffect, cdecl,
    importcpp: "More", header: "CDM_ReferenceIterator.hxx".}
proc next*(this: var CDM_ReferenceIterator) {.cdecl, importcpp: "Next",
    header: "CDM_ReferenceIterator.hxx".}
proc document*(this: CDM_ReferenceIterator): Handle[CDM_Document] {.noSideEffect,
    cdecl, importcpp: "Document", header: "CDM_ReferenceIterator.hxx".}
proc referenceIdentifier*(this: CDM_ReferenceIterator): cint {.noSideEffect, cdecl,
    importcpp: "ReferenceIdentifier", header: "CDM_ReferenceIterator.hxx".}
proc documentVersion*(this: CDM_ReferenceIterator): cint {.noSideEffect, cdecl,
    importcpp: "DocumentVersion", header: "CDM_ReferenceIterator.hxx".}

