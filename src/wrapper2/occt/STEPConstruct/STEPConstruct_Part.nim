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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean

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
  STEPConstruct_Part* {.importcpp: "STEPConstruct_Part",
                       header: "STEPConstruct_Part.hxx", bycopy.} = object


proc constructSTEPConstruct_Part*(): STEPConstruct_Part {.constructor,
    importcpp: "STEPConstruct_Part(@)", header: "STEPConstruct_Part.hxx".}
proc MakeSDR*(this: var STEPConstruct_Part;
             aShape: handle[StepShape_ShapeRepresentation];
             aName: handle[TCollection_HAsciiString];
             AC: handle[StepBasic_ApplicationContext]) {.importcpp: "MakeSDR",
    header: "STEPConstruct_Part.hxx".}
proc ReadSDR*(this: var STEPConstruct_Part;
             aShape: handle[StepShape_ShapeDefinitionRepresentation]) {.
    importcpp: "ReadSDR", header: "STEPConstruct_Part.hxx".}
proc IsDone*(this: STEPConstruct_Part): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "STEPConstruct_Part.hxx".}
proc SDRValue*(this: STEPConstruct_Part): handle[
    StepShape_ShapeDefinitionRepresentation] {.noSideEffect,
    importcpp: "SDRValue", header: "STEPConstruct_Part.hxx".}
proc SRValue*(this: STEPConstruct_Part): handle[StepShape_ShapeRepresentation] {.
    noSideEffect, importcpp: "SRValue", header: "STEPConstruct_Part.hxx".}
proc PC*(this: STEPConstruct_Part): handle[StepBasic_ProductContext] {.noSideEffect,
    importcpp: "PC", header: "STEPConstruct_Part.hxx".}
proc PCname*(this: STEPConstruct_Part): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "PCname", header: "STEPConstruct_Part.hxx".}
proc PCdisciplineType*(this: STEPConstruct_Part): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "PCdisciplineType", header: "STEPConstruct_Part.hxx".}
proc SetPCname*(this: var STEPConstruct_Part; name: handle[TCollection_HAsciiString]) {.
    importcpp: "SetPCname", header: "STEPConstruct_Part.hxx".}
proc SetPCdisciplineType*(this: var STEPConstruct_Part;
                         label: handle[TCollection_HAsciiString]) {.
    importcpp: "SetPCdisciplineType", header: "STEPConstruct_Part.hxx".}
proc AC*(this: STEPConstruct_Part): handle[StepBasic_ApplicationContext] {.
    noSideEffect, importcpp: "AC", header: "STEPConstruct_Part.hxx".}
proc ACapplication*(this: STEPConstruct_Part): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "ACapplication", header: "STEPConstruct_Part.hxx".}
proc SetACapplication*(this: var STEPConstruct_Part;
                      text: handle[TCollection_HAsciiString]) {.
    importcpp: "SetACapplication", header: "STEPConstruct_Part.hxx".}
proc PDC*(this: STEPConstruct_Part): handle[StepBasic_ProductDefinitionContext] {.
    noSideEffect, importcpp: "PDC", header: "STEPConstruct_Part.hxx".}
proc PDCname*(this: STEPConstruct_Part): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "PDCname", header: "STEPConstruct_Part.hxx".}
proc PDCstage*(this: STEPConstruct_Part): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "PDCstage", header: "STEPConstruct_Part.hxx".}
proc SetPDCname*(this: var STEPConstruct_Part;
                label: handle[TCollection_HAsciiString]) {.
    importcpp: "SetPDCname", header: "STEPConstruct_Part.hxx".}
proc SetPDCstage*(this: var STEPConstruct_Part;
                 label: handle[TCollection_HAsciiString]) {.
    importcpp: "SetPDCstage", header: "STEPConstruct_Part.hxx".}
proc Product*(this: STEPConstruct_Part): handle[StepBasic_Product] {.noSideEffect,
    importcpp: "Product", header: "STEPConstruct_Part.hxx".}
proc Pid*(this: STEPConstruct_Part): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Pid", header: "STEPConstruct_Part.hxx".}
proc Pname*(this: STEPConstruct_Part): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Pname", header: "STEPConstruct_Part.hxx".}
proc Pdescription*(this: STEPConstruct_Part): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Pdescription", header: "STEPConstruct_Part.hxx".}
proc SetPid*(this: var STEPConstruct_Part; id: handle[TCollection_HAsciiString]) {.
    importcpp: "SetPid", header: "STEPConstruct_Part.hxx".}
proc SetPname*(this: var STEPConstruct_Part; label: handle[TCollection_HAsciiString]) {.
    importcpp: "SetPname", header: "STEPConstruct_Part.hxx".}
proc SetPdescription*(this: var STEPConstruct_Part;
                     text: handle[TCollection_HAsciiString]) {.
    importcpp: "SetPdescription", header: "STEPConstruct_Part.hxx".}
proc PDF*(this: STEPConstruct_Part): handle[StepBasic_ProductDefinitionFormation] {.
    noSideEffect, importcpp: "PDF", header: "STEPConstruct_Part.hxx".}
proc PDFid*(this: STEPConstruct_Part): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "PDFid", header: "STEPConstruct_Part.hxx".}
proc PDFdescription*(this: STEPConstruct_Part): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "PDFdescription", header: "STEPConstruct_Part.hxx".}
proc SetPDFid*(this: var STEPConstruct_Part; id: handle[TCollection_HAsciiString]) {.
    importcpp: "SetPDFid", header: "STEPConstruct_Part.hxx".}
proc SetPDFdescription*(this: var STEPConstruct_Part;
                       text: handle[TCollection_HAsciiString]) {.
    importcpp: "SetPDFdescription", header: "STEPConstruct_Part.hxx".}
proc PD*(this: STEPConstruct_Part): handle[StepBasic_ProductDefinition] {.
    noSideEffect, importcpp: "PD", header: "STEPConstruct_Part.hxx".}
proc PDdescription*(this: STEPConstruct_Part): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "PDdescription", header: "STEPConstruct_Part.hxx".}
proc SetPDdescription*(this: var STEPConstruct_Part;
                      text: handle[TCollection_HAsciiString]) {.
    importcpp: "SetPDdescription", header: "STEPConstruct_Part.hxx".}
proc PDS*(this: STEPConstruct_Part): handle[StepRepr_ProductDefinitionShape] {.
    noSideEffect, importcpp: "PDS", header: "STEPConstruct_Part.hxx".}
proc PDSname*(this: STEPConstruct_Part): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "PDSname", header: "STEPConstruct_Part.hxx".}
proc PDSdescription*(this: STEPConstruct_Part): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "PDSdescription", header: "STEPConstruct_Part.hxx".}
proc SetPDSname*(this: var STEPConstruct_Part;
                label: handle[TCollection_HAsciiString]) {.
    importcpp: "SetPDSname", header: "STEPConstruct_Part.hxx".}
proc SetPDSdescription*(this: var STEPConstruct_Part;
                       text: handle[TCollection_HAsciiString]) {.
    importcpp: "SetPDSdescription", header: "STEPConstruct_Part.hxx".}
proc PRPC*(this: STEPConstruct_Part): handle[
    StepBasic_ProductRelatedProductCategory] {.noSideEffect, importcpp: "PRPC",
    header: "STEPConstruct_Part.hxx".}
proc PRPCname*(this: STEPConstruct_Part): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "PRPCname", header: "STEPConstruct_Part.hxx".}
proc PRPCdescription*(this: STEPConstruct_Part): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "PRPCdescription", header: "STEPConstruct_Part.hxx".}
proc SetPRPCname*(this: var STEPConstruct_Part;
                 label: handle[TCollection_HAsciiString]) {.
    importcpp: "SetPRPCname", header: "STEPConstruct_Part.hxx".}
proc SetPRPCdescription*(this: var STEPConstruct_Part;
                        text: handle[TCollection_HAsciiString]) {.
    importcpp: "SetPRPCdescription", header: "STEPConstruct_Part.hxx".}