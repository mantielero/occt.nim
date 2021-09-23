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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, CDM_ListIteratorOfListOfReferences,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of CDM_Document"
type
  CDM_ReferenceIterator* {.importcpp: "CDM_ReferenceIterator",
                          header: "CDM_ReferenceIterator.hxx", bycopy.} = object


proc constructCDM_ReferenceIterator*(aDocument: handle[CDM_Document]): CDM_ReferenceIterator {.
    constructor, importcpp: "CDM_ReferenceIterator(@)",
    header: "CDM_ReferenceIterator.hxx".}
proc More*(this: CDM_ReferenceIterator): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "CDM_ReferenceIterator.hxx".}
proc Next*(this: var CDM_ReferenceIterator) {.importcpp: "Next",
    header: "CDM_ReferenceIterator.hxx".}
proc Document*(this: CDM_ReferenceIterator): handle[CDM_Document] {.noSideEffect,
    importcpp: "Document", header: "CDM_ReferenceIterator.hxx".}
proc ReferenceIdentifier*(this: CDM_ReferenceIterator): Standard_Integer {.
    noSideEffect, importcpp: "ReferenceIdentifier",
    header: "CDM_ReferenceIterator.hxx".}
proc DocumentVersion*(this: CDM_ReferenceIterator): Standard_Integer {.noSideEffect,
    importcpp: "DocumentVersion", header: "CDM_ReferenceIterator.hxx".}