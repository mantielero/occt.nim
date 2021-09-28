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
  STEPConstructExternRefs* {.importcpp: "STEPConstruct_ExternRefs",
                            header: "STEPConstruct_ExternRefs.hxx", bycopy.} = object of STEPConstructTool ##
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


proc constructSTEPConstructExternRefs*(): STEPConstructExternRefs {.constructor,
    importcpp: "STEPConstruct_ExternRefs(@)",
    header: "STEPConstruct_ExternRefs.hxx".}
proc constructSTEPConstructExternRefs*(ws: Handle[XSControlWorkSession]): STEPConstructExternRefs {.
    constructor, importcpp: "STEPConstruct_ExternRefs(@)",
    header: "STEPConstruct_ExternRefs.hxx".}
proc init*(this: var STEPConstructExternRefs; ws: Handle[XSControlWorkSession]): bool {.
    importcpp: "Init", header: "STEPConstruct_ExternRefs.hxx".}
proc clear*(this: var STEPConstructExternRefs) {.importcpp: "Clear",
    header: "STEPConstruct_ExternRefs.hxx".}
proc loadExternRefs*(this: var STEPConstructExternRefs): bool {.
    importcpp: "LoadExternRefs", header: "STEPConstruct_ExternRefs.hxx".}
proc nbExternRefs*(this: STEPConstructExternRefs): cint {.noSideEffect,
    importcpp: "NbExternRefs", header: "STEPConstruct_ExternRefs.hxx".}
proc fileName*(this: STEPConstructExternRefs; num: cint): StandardCString {.
    noSideEffect, importcpp: "FileName", header: "STEPConstruct_ExternRefs.hxx".}
proc prodDef*(this: STEPConstructExternRefs; num: cint): Handle[
    StepBasicProductDefinition] {.noSideEffect, importcpp: "ProdDef",
                                 header: "STEPConstruct_ExternRefs.hxx".}
proc docFile*(this: STEPConstructExternRefs; num: cint): Handle[StepBasicDocumentFile] {.
    noSideEffect, importcpp: "DocFile", header: "STEPConstruct_ExternRefs.hxx".}
proc format*(this: STEPConstructExternRefs; num: cint): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Format",
                              header: "STEPConstruct_ExternRefs.hxx".}
proc addExternRef*(this: var STEPConstructExternRefs; filename: StandardCString;
                  pd: Handle[StepBasicProductDefinition]; format: StandardCString): cint {.
    importcpp: "AddExternRef", header: "STEPConstruct_ExternRefs.hxx".}
proc checkAP214Shared*(this: var STEPConstructExternRefs) {.
    importcpp: "checkAP214Shared", header: "STEPConstruct_ExternRefs.hxx".}
proc writeExternRefs*(this: STEPConstructExternRefs; num: cint): cint {.noSideEffect,
    importcpp: "WriteExternRefs", header: "STEPConstruct_ExternRefs.hxx".}
proc setAP214APD*(this: var STEPConstructExternRefs;
                 apd: Handle[StepBasicApplicationProtocolDefinition]) {.
    importcpp: "SetAP214APD", header: "STEPConstruct_ExternRefs.hxx".}
proc getAP214APD*(this: var STEPConstructExternRefs): Handle[
    StepBasicApplicationProtocolDefinition] {.importcpp: "GetAP214APD",
    header: "STEPConstruct_ExternRefs.hxx".}

























