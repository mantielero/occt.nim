##  Created on: 2003-01-28
##  Created by: data exchange team
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepBasic_DocumentProductAssociation"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepBasicRWDocumentProductAssociation* {.
      importcpp: "RWStepBasic_RWDocumentProductAssociation",
      header: "RWStepBasic_RWDocumentProductAssociation.hxx", bycopy.} = object ## ! Empty
                                                                           ## constructor


proc constructRWStepBasicRWDocumentProductAssociation*(): RWStepBasicRWDocumentProductAssociation {.
    constructor, importcpp: "RWStepBasic_RWDocumentProductAssociation(@)",
    header: "RWStepBasic_RWDocumentProductAssociation.hxx".}
proc readStep*(this: RWStepBasicRWDocumentProductAssociation;
              data: Handle[StepDataStepReaderData]; num: cint;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepBasicDocumentProductAssociation]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepBasic_RWDocumentProductAssociation.hxx".}
proc writeStep*(this: RWStepBasicRWDocumentProductAssociation;
               sw: var StepDataStepWriter;
               ent: Handle[StepBasicDocumentProductAssociation]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepBasic_RWDocumentProductAssociation.hxx".}
proc share*(this: RWStepBasicRWDocumentProductAssociation;
           ent: Handle[StepBasicDocumentProductAssociation];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepBasic_RWDocumentProductAssociation.hxx".}

























