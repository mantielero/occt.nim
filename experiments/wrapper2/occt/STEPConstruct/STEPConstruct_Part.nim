##  Created on: 1993-08-04
##  Created by: Herve LEGRAND
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of StepShape_ShapeDefinitionRepresentation"
discard "forward decl of StepBasic_ProductRelatedProductCategory"
discard "forward decl of StepShape_ShapeRepresentation"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_ApplicationContext"
discard "forward decl of StepBasic_ProductContext"
discard "forward decl of StepBasic_ProductDefinitionContext"
discard "forward decl of StepBasic_Product"
discard "forward decl of StepBasic_ProductDefinitionFormation"
discard "forward decl of StepBasic_ProductDefinition"
discard "forward decl of StepRepr_ProductDefinitionShape"
type
  STEPConstructPart* {.importcpp: "STEPConstruct_Part",
                      header: "STEPConstruct_Part.hxx", bycopy.} = object


proc constructSTEPConstructPart*(): STEPConstructPart {.constructor,
    importcpp: "STEPConstruct_Part(@)", header: "STEPConstruct_Part.hxx".}
proc makeSDR*(this: var STEPConstructPart;
             aShape: Handle[StepShapeShapeRepresentation];
             aName: Handle[TCollectionHAsciiString];
             ac: Handle[StepBasicApplicationContext]) {.importcpp: "MakeSDR",
    header: "STEPConstruct_Part.hxx".}
proc readSDR*(this: var STEPConstructPart;
             aShape: Handle[StepShapeShapeDefinitionRepresentation]) {.
    importcpp: "ReadSDR", header: "STEPConstruct_Part.hxx".}
proc isDone*(this: STEPConstructPart): bool {.noSideEffect, importcpp: "IsDone",
    header: "STEPConstruct_Part.hxx".}
proc sDRValue*(this: STEPConstructPart): Handle[
    StepShapeShapeDefinitionRepresentation] {.noSideEffect, importcpp: "SDRValue",
    header: "STEPConstruct_Part.hxx".}
proc sRValue*(this: STEPConstructPart): Handle[StepShapeShapeRepresentation] {.
    noSideEffect, importcpp: "SRValue", header: "STEPConstruct_Part.hxx".}
proc pc*(this: STEPConstructPart): Handle[StepBasicProductContext] {.noSideEffect,
    importcpp: "PC", header: "STEPConstruct_Part.hxx".}
proc pCname*(this: STEPConstructPart): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "PCname", header: "STEPConstruct_Part.hxx".}
proc pCdisciplineType*(this: STEPConstructPart): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "PCdisciplineType", header: "STEPConstruct_Part.hxx".}
proc setPCname*(this: var STEPConstructPart; name: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetPCname", header: "STEPConstruct_Part.hxx".}
proc setPCdisciplineType*(this: var STEPConstructPart;
                         label: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetPCdisciplineType", header: "STEPConstruct_Part.hxx".}
proc ac*(this: STEPConstructPart): Handle[StepBasicApplicationContext] {.
    noSideEffect, importcpp: "AC", header: "STEPConstruct_Part.hxx".}
proc aCapplication*(this: STEPConstructPart): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "ACapplication", header: "STEPConstruct_Part.hxx".}
proc setACapplication*(this: var STEPConstructPart;
                      text: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetACapplication", header: "STEPConstruct_Part.hxx".}
proc pdc*(this: STEPConstructPart): Handle[StepBasicProductDefinitionContext] {.
    noSideEffect, importcpp: "PDC", header: "STEPConstruct_Part.hxx".}
proc pDCname*(this: STEPConstructPart): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "PDCname", header: "STEPConstruct_Part.hxx".}
proc pDCstage*(this: STEPConstructPart): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "PDCstage", header: "STEPConstruct_Part.hxx".}
proc setPDCname*(this: var STEPConstructPart; label: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetPDCname", header: "STEPConstruct_Part.hxx".}
proc setPDCstage*(this: var STEPConstructPart;
                 label: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetPDCstage", header: "STEPConstruct_Part.hxx".}
proc product*(this: STEPConstructPart): Handle[StepBasicProduct] {.noSideEffect,
    importcpp: "Product", header: "STEPConstruct_Part.hxx".}
proc pid*(this: STEPConstructPart): Handle[TCollectionHAsciiString] {.noSideEffect,
    importcpp: "Pid", header: "STEPConstruct_Part.hxx".}
proc pname*(this: STEPConstructPart): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Pname", header: "STEPConstruct_Part.hxx".}
proc pdescription*(this: STEPConstructPart): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Pdescription", header: "STEPConstruct_Part.hxx".}
proc setPid*(this: var STEPConstructPart; id: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetPid", header: "STEPConstruct_Part.hxx".}
proc setPname*(this: var STEPConstructPart; label: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetPname", header: "STEPConstruct_Part.hxx".}
proc setPdescription*(this: var STEPConstructPart;
                     text: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetPdescription", header: "STEPConstruct_Part.hxx".}
proc pdf*(this: STEPConstructPart): Handle[StepBasicProductDefinitionFormation] {.
    noSideEffect, importcpp: "PDF", header: "STEPConstruct_Part.hxx".}
proc pDFid*(this: STEPConstructPart): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "PDFid", header: "STEPConstruct_Part.hxx".}
proc pDFdescription*(this: STEPConstructPart): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "PDFdescription", header: "STEPConstruct_Part.hxx".}
proc setPDFid*(this: var STEPConstructPart; id: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetPDFid", header: "STEPConstruct_Part.hxx".}
proc setPDFdescription*(this: var STEPConstructPart;
                       text: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetPDFdescription", header: "STEPConstruct_Part.hxx".}
proc pd*(this: STEPConstructPart): Handle[StepBasicProductDefinition] {.
    noSideEffect, importcpp: "PD", header: "STEPConstruct_Part.hxx".}
proc pDdescription*(this: STEPConstructPart): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "PDdescription", header: "STEPConstruct_Part.hxx".}
proc setPDdescription*(this: var STEPConstructPart;
                      text: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetPDdescription", header: "STEPConstruct_Part.hxx".}
proc pds*(this: STEPConstructPart): Handle[StepReprProductDefinitionShape] {.
    noSideEffect, importcpp: "PDS", header: "STEPConstruct_Part.hxx".}
proc pDSname*(this: STEPConstructPart): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "PDSname", header: "STEPConstruct_Part.hxx".}
proc pDSdescription*(this: STEPConstructPart): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "PDSdescription", header: "STEPConstruct_Part.hxx".}
proc setPDSname*(this: var STEPConstructPart; label: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetPDSname", header: "STEPConstruct_Part.hxx".}
proc setPDSdescription*(this: var STEPConstructPart;
                       text: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetPDSdescription", header: "STEPConstruct_Part.hxx".}
proc prpc*(this: STEPConstructPart): Handle[StepBasicProductRelatedProductCategory] {.
    noSideEffect, importcpp: "PRPC", header: "STEPConstruct_Part.hxx".}
proc pRPCname*(this: STEPConstructPart): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "PRPCname", header: "STEPConstruct_Part.hxx".}
proc pRPCdescription*(this: STEPConstructPart): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "PRPCdescription", header: "STEPConstruct_Part.hxx".}
proc setPRPCname*(this: var STEPConstructPart;
                 label: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetPRPCname", header: "STEPConstruct_Part.hxx".}
proc setPRPCdescription*(this: var STEPConstructPart;
                        text: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetPRPCdescription", header: "STEPConstruct_Part.hxx".}
