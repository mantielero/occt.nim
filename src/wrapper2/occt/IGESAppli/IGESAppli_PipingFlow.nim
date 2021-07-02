##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen ( Anand NATRAJAN )
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESDraw_ConnectPoint"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESGraph_TextDisplayTemplate"
discard "forward decl of IGESAppli_PipingFlow"
discard "forward decl of IGESAppli_PipingFlow"
type
  HandleIGESAppliPipingFlow* = Handle[IGESAppliPipingFlow]

## ! defines PipingFlow, Type <402> Form <20>
## ! in package IGESAppli
## ! Represents a single fluid flow path

type
  IGESAppliPipingFlow* {.importcpp: "IGESAppli_PipingFlow",
                        header: "IGESAppli_PipingFlow.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESAppliPipingFlow*(): IGESAppliPipingFlow {.constructor,
    importcpp: "IGESAppli_PipingFlow(@)", header: "IGESAppli_PipingFlow.hxx".}
proc init*(this: var IGESAppliPipingFlow; nbContextFlags: StandardInteger;
          aFlowType: StandardInteger;
          allFlowAssocs: Handle[IGESDataHArray1OfIGESEntity];
          allConnectPoints: Handle[IGESDrawHArray1OfConnectPoint];
          allJoins: Handle[IGESDataHArray1OfIGESEntity];
          allFlowNames: Handle[InterfaceHArray1OfHAsciiString];
          allTextDisps: Handle[IGESGraphHArray1OfTextDisplayTemplate];
          allContFlowAssocs: Handle[IGESDataHArray1OfIGESEntity]) {.
    importcpp: "Init", header: "IGESAppli_PipingFlow.hxx".}
proc ownCorrect*(this: var IGESAppliPipingFlow): StandardBoolean {.
    importcpp: "OwnCorrect", header: "IGESAppli_PipingFlow.hxx".}
proc nbContextFlags*(this: IGESAppliPipingFlow): StandardInteger {.noSideEffect,
    importcpp: "NbContextFlags", header: "IGESAppli_PipingFlow.hxx".}
proc nbFlowAssociativities*(this: IGESAppliPipingFlow): StandardInteger {.
    noSideEffect, importcpp: "NbFlowAssociativities",
    header: "IGESAppli_PipingFlow.hxx".}
proc nbConnectPoints*(this: IGESAppliPipingFlow): StandardInteger {.noSideEffect,
    importcpp: "NbConnectPoints", header: "IGESAppli_PipingFlow.hxx".}
proc nbJoins*(this: IGESAppliPipingFlow): StandardInteger {.noSideEffect,
    importcpp: "NbJoins", header: "IGESAppli_PipingFlow.hxx".}
proc nbFlowNames*(this: IGESAppliPipingFlow): StandardInteger {.noSideEffect,
    importcpp: "NbFlowNames", header: "IGESAppli_PipingFlow.hxx".}
proc nbTextDisplayTemplates*(this: IGESAppliPipingFlow): StandardInteger {.
    noSideEffect, importcpp: "NbTextDisplayTemplates",
    header: "IGESAppli_PipingFlow.hxx".}
proc nbContFlowAssociativities*(this: IGESAppliPipingFlow): StandardInteger {.
    noSideEffect, importcpp: "NbContFlowAssociativities",
    header: "IGESAppli_PipingFlow.hxx".}
proc typeOfFlow*(this: IGESAppliPipingFlow): StandardInteger {.noSideEffect,
    importcpp: "TypeOfFlow", header: "IGESAppli_PipingFlow.hxx".}
proc flowAssociativity*(this: IGESAppliPipingFlow; index: StandardInteger): Handle[
    IGESDataIGESEntity] {.noSideEffect, importcpp: "FlowAssociativity",
                         header: "IGESAppli_PipingFlow.hxx".}
proc connectPoint*(this: IGESAppliPipingFlow; index: StandardInteger): Handle[
    IGESDrawConnectPoint] {.noSideEffect, importcpp: "ConnectPoint",
                           header: "IGESAppli_PipingFlow.hxx".}
proc join*(this: IGESAppliPipingFlow; index: StandardInteger): Handle[
    IGESDataIGESEntity] {.noSideEffect, importcpp: "Join",
                         header: "IGESAppli_PipingFlow.hxx".}
proc flowName*(this: IGESAppliPipingFlow; index: StandardInteger): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "FlowName",
                              header: "IGESAppli_PipingFlow.hxx".}
proc textDisplayTemplate*(this: IGESAppliPipingFlow; index: StandardInteger): Handle[
    IGESGraphTextDisplayTemplate] {.noSideEffect,
                                   importcpp: "TextDisplayTemplate",
                                   header: "IGESAppli_PipingFlow.hxx".}
proc contFlowAssociativity*(this: IGESAppliPipingFlow; index: StandardInteger): Handle[
    IGESDataIGESEntity] {.noSideEffect, importcpp: "ContFlowAssociativity",
                         header: "IGESAppli_PipingFlow.hxx".}
type
  IGESAppliPipingFlowbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESAppli_PipingFlow::get_type_name(@)",
                            header: "IGESAppli_PipingFlow.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESAppli_PipingFlow::get_type_descriptor(@)",
    header: "IGESAppli_PipingFlow.hxx".}
proc dynamicType*(this: IGESAppliPipingFlow): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESAppli_PipingFlow.hxx".}

