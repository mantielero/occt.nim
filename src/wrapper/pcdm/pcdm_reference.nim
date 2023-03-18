import ../tcollection/tcollection_types
import pcdm_types



##  Created on: 1997-12-09
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



proc newPCDM_Reference*(): PCDM_Reference {.cdecl, constructor,
    importcpp: "PCDM_Reference(@)", header: "PCDM_Reference.hxx".}
proc newPCDM_Reference*(aReferenceIdentifier: cint;
                       aFileName: TCollectionExtendedString;
                       aDocumentVersion: cint): PCDM_Reference {.cdecl, constructor,
    importcpp: "PCDM_Reference(@)", header: "PCDM_Reference.hxx".}
proc referenceIdentifier*(this: PCDM_Reference): cint {.noSideEffect, cdecl,
    importcpp: "ReferenceIdentifier", header: "PCDM_Reference.hxx".}
proc fileName*(this: PCDM_Reference): TCollectionExtendedString {.noSideEffect,
    cdecl, importcpp: "FileName", header: "PCDM_Reference.hxx".}
proc documentVersion*(this: PCDM_Reference): cint {.noSideEffect, cdecl,
    importcpp: "DocumentVersion", header: "PCDM_Reference.hxx".}

