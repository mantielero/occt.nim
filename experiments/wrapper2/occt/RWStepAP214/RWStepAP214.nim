##  Created on: 1995-12-04
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of RWStepAP214_ReadWriteModule"
discard "forward decl of RWStepAP214_GeneralModule"
discard "forward decl of RWStepAP214_RWAutoDesignActualDateAndTimeAssignment"
discard "forward decl of RWStepAP214_RWAutoDesignActualDateAssignment"
discard "forward decl of RWStepAP214_RWAutoDesignApprovalAssignment"
discard "forward decl of RWStepAP214_RWAutoDesignDateAndPersonAssignment"
discard "forward decl of RWStepAP214_RWAutoDesignGroupAssignment"
discard "forward decl of RWStepAP214_RWAutoDesignNominalDateAndTimeAssignment"
discard "forward decl of RWStepAP214_RWAutoDesignNominalDateAssignment"
discard "forward decl of RWStepAP214_RWAutoDesignOrganizationAssignment"
discard "forward decl of RWStepAP214_RWAutoDesignPersonAndOrganizationAssignment"
discard "forward decl of RWStepAP214_RWAutoDesignPresentedItem"
discard "forward decl of RWStepAP214_RWAutoDesignSecurityClassificationAssignment"
discard "forward decl of RWStepAP214_RWAutoDesignDocumentReference"
discard "forward decl of RWStepAP214_RWAppliedDateAndTimeAssignment"
discard "forward decl of RWStepAP214_RWAppliedDateAssignment"
discard "forward decl of RWStepAP214_RWAppliedApprovalAssignment"
discard "forward decl of RWStepAP214_RWAppliedGroupAssignment"
discard "forward decl of RWStepAP214_RWAppliedOrganizationAssignment"
discard "forward decl of RWStepAP214_RWAppliedPersonAndOrganizationAssignment"
discard "forward decl of RWStepAP214_RWAppliedPresentedItem"
discard "forward decl of RWStepAP214_RWAppliedSecurityClassificationAssignment"
discard "forward decl of RWStepAP214_RWAppliedDocumentReference"
discard "forward decl of RWStepAP214_RWAppliedExternalIdentificationAssignment"
discard "forward decl of RWStepAP214_RWClass"
discard "forward decl of RWStepAP214_RWExternallyDefinedClass"
discard "forward decl of RWStepAP214_RWExternallyDefinedGeneralProperty"
discard "forward decl of RWStepAP214_RWRepItemGroup"
type
  RWStepAP214* {.importcpp: "RWStepAP214", header: "RWStepAP214.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## enforced
                                                                                ## the
                                                                                ## initialisation
                                                                                ## of
                                                                                ## the
                                                                                ## libraries


proc init*() {.importcpp: "RWStepAP214::Init(@)", header: "RWStepAP214.hxx".}
