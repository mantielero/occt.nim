##  Created on: 2000-09-29
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_Handle, ../TColStd/TColStd_SequenceOfTransient,
  ../TColStd/TColStd_SequenceOfInteger, STEPConstruct_Tool,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../Standard/Standard_CString

discard "forward decl of StepBasic_ProductRelatedProductCategory"
discard "forward decl of StepBasic_DocumentType"
discard "forward decl of StepBasic_ProductDefinitionContext"
discard "forward decl of StepBasic_ProductContext"
discard "forward decl of StepBasic_ApplicationProtocolDefinition"
discard "forward decl of XSControl_WorkSession"
discard "forward decl of StepBasic_ProductDefinition"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepAP214_AppliedDocumentReference"
discard "forward decl of StepBasic_DocumentFile"
type
  STEPConstruct_ExternRefs* {.importcpp: "STEPConstruct_ExternRefs",
                             header: "STEPConstruct_ExternRefs.hxx", bycopy.} = object of STEPConstruct_Tool ##
                                                                                                      ## !
                                                                                                      ## Creates
                                                                                                      ## an
                                                                                                      ## empty
                                                                                                      ## tool
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Create
                                                                                                      ## a
                                                                                                      ## new
                                                                                                      ## additional
                                                                                                      ## structure
                                                                                                      ## entities
                                                                                                      ## and
                                                                                                      ## add
                                                                                                      ## ncessary
                                                                                                      ## references
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Note:
                                                                                                      ## do
                                                                                                      ## not
                                                                                                      ## refer
                                                                                                      ## from
                                                                                                      ## ADR
                                                                                                      ## to
                                                                                                      ## DF
                                                                                                      ## directly
                                                                                                      ## in
                                                                                                      ## AP214
                                                                                                      ## (TRJ11).


proc constructSTEPConstruct_ExternRefs*(): STEPConstruct_ExternRefs {.constructor,
    importcpp: "STEPConstruct_ExternRefs(@)",
    header: "STEPConstruct_ExternRefs.hxx".}
proc constructSTEPConstruct_ExternRefs*(WS: handle[XSControl_WorkSession]): STEPConstruct_ExternRefs {.
    constructor, importcpp: "STEPConstruct_ExternRefs(@)",
    header: "STEPConstruct_ExternRefs.hxx".}
proc Init*(this: var STEPConstruct_ExternRefs; WS: handle[XSControl_WorkSession]): Standard_Boolean {.
    importcpp: "Init", header: "STEPConstruct_ExternRefs.hxx".}
proc Clear*(this: var STEPConstruct_ExternRefs) {.importcpp: "Clear",
    header: "STEPConstruct_ExternRefs.hxx".}
proc LoadExternRefs*(this: var STEPConstruct_ExternRefs): Standard_Boolean {.
    importcpp: "LoadExternRefs", header: "STEPConstruct_ExternRefs.hxx".}
proc NbExternRefs*(this: STEPConstruct_ExternRefs): Standard_Integer {.noSideEffect,
    importcpp: "NbExternRefs", header: "STEPConstruct_ExternRefs.hxx".}
proc FileName*(this: STEPConstruct_ExternRefs; num: Standard_Integer): Standard_CString {.
    noSideEffect, importcpp: "FileName", header: "STEPConstruct_ExternRefs.hxx".}
proc ProdDef*(this: STEPConstruct_ExternRefs; num: Standard_Integer): handle[
    StepBasic_ProductDefinition] {.noSideEffect, importcpp: "ProdDef",
                                  header: "STEPConstruct_ExternRefs.hxx".}
proc DocFile*(this: STEPConstruct_ExternRefs; num: Standard_Integer): handle[
    StepBasic_DocumentFile] {.noSideEffect, importcpp: "DocFile",
                             header: "STEPConstruct_ExternRefs.hxx".}
proc Format*(this: STEPConstruct_ExternRefs; num: Standard_Integer): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Format",
                               header: "STEPConstruct_ExternRefs.hxx".}
proc AddExternRef*(this: var STEPConstruct_ExternRefs; filename: Standard_CString;
                  PD: handle[StepBasic_ProductDefinition];
                  format: Standard_CString): Standard_Integer {.
    importcpp: "AddExternRef", header: "STEPConstruct_ExternRefs.hxx".}
proc checkAP214Shared*(this: var STEPConstruct_ExternRefs) {.
    importcpp: "checkAP214Shared", header: "STEPConstruct_ExternRefs.hxx".}
proc WriteExternRefs*(this: STEPConstruct_ExternRefs; num: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "WriteExternRefs",
    header: "STEPConstruct_ExternRefs.hxx".}
proc SetAP214APD*(this: var STEPConstruct_ExternRefs;
                 APD: handle[StepBasic_ApplicationProtocolDefinition]) {.
    importcpp: "SetAP214APD", header: "STEPConstruct_ExternRefs.hxx".}
proc GetAP214APD*(this: var STEPConstruct_ExternRefs): handle[
    StepBasic_ApplicationProtocolDefinition] {.importcpp: "GetAP214APD",
    header: "STEPConstruct_ExternRefs.hxx".}