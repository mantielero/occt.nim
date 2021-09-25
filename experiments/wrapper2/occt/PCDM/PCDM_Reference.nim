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

discard "forward decl of TCollection_ExtendedString"
type
  PCDM_Reference* {.importcpp: "PCDM_Reference", header: "PCDM_Reference.hxx", bycopy.} = object


proc constructPCDM_Reference*(): PCDM_Reference {.constructor,
    importcpp: "PCDM_Reference(@)", header: "PCDM_Reference.hxx".}
proc constructPCDM_Reference*(aReferenceIdentifier: int;
                             aFileName: TCollectionExtendedString;
                             aDocumentVersion: int): PCDM_Reference {.constructor,
    importcpp: "PCDM_Reference(@)", header: "PCDM_Reference.hxx".}
proc referenceIdentifier*(this: PCDM_Reference): int {.noSideEffect,
    importcpp: "ReferenceIdentifier", header: "PCDM_Reference.hxx".}
proc fileName*(this: PCDM_Reference): TCollectionExtendedString {.noSideEffect,
    importcpp: "FileName", header: "PCDM_Reference.hxx".}
proc documentVersion*(this: PCDM_Reference): int {.noSideEffect,
    importcpp: "DocumentVersion", header: "PCDM_Reference.hxx".}
