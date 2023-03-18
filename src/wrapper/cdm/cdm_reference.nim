import ../standard/standard_types
import cdm_types



##  Created on: 1997-10-22
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



proc fromDocument*(this: var CDM_Reference): Handle[CDM_Document] {.cdecl,
    importcpp: "FromDocument", header: "CDM_Reference.hxx".}
proc toDocument*(this: var CDM_Reference): Handle[CDM_Document] {.cdecl,
    importcpp: "ToDocument", header: "CDM_Reference.hxx".}
proc referenceIdentifier*(this: var CDM_Reference): cint {.cdecl,
    importcpp: "ReferenceIdentifier", header: "CDM_Reference.hxx".}
proc documentVersion*(this: CDM_Reference): cint {.noSideEffect, cdecl,
    importcpp: "DocumentVersion", header: "CDM_Reference.hxx".}
proc isReadOnly*(this: CDM_Reference): bool {.noSideEffect, cdecl,
    importcpp: "IsReadOnly", header: "CDM_Reference.hxx".}
proc dumpJson*(this: CDM_Reference; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "CDM_Reference.hxx".}

