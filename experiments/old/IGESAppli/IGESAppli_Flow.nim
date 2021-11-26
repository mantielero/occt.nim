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
discard "forward decl of IGESAppli_Flow"
discard "forward decl of IGESAppli_Flow"
type
  HandleC1C1* = Handle[IGESAppliFlow]

## ! defines Flow, Type <402> Form <18>
## ! in package IGESAppli
## ! Represents a single signal or a single fluid flow path
## ! starting from a starting Connect Point Entity and
## ! including additional intermediate connect points.

type
  IGESAppliFlow* {.importcpp: "IGESAppli_Flow", header: "IGESAppli_Flow.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESAppliFlow*(): IGESAppliFlow {.constructor,
    importcpp: "IGESAppli_Flow(@)", header: "IGESAppli_Flow.hxx".}
proc init*(this: var IGESAppliFlow; nbContextFlags: cint; aFlowType: cint;
          aFuncFlag: cint; allFlowAssocs: Handle[IGESDataHArray1OfIGESEntity];
          allConnectPoints: Handle[IGESDrawHArray1OfConnectPoint];
          allJoins: Handle[IGESDataHArray1OfIGESEntity];
          allFlowNames: Handle[InterfaceHArray1OfHAsciiString];
          allTextDisps: Handle[IGESGraphHArray1OfTextDisplayTemplate];
          allContFlowAssocs: Handle[IGESDataHArray1OfIGESEntity]) {.
    importcpp: "Init", header: "IGESAppli_Flow.hxx".}
proc ownCorrect*(this: var IGESAppliFlow): bool {.importcpp: "OwnCorrect",
    header: "IGESAppli_Flow.hxx".}
proc nbContextFlags*(this: IGESAppliFlow): cint {.noSideEffect,
    importcpp: "NbContextFlags", header: "IGESAppli_Flow.hxx".}
proc nbFlowAssociativities*(this: IGESAppliFlow): cint {.noSideEffect,
    importcpp: "NbFlowAssociativities", header: "IGESAppli_Flow.hxx".}
proc nbConnectPoints*(this: IGESAppliFlow): cint {.noSideEffect,
    importcpp: "NbConnectPoints", header: "IGESAppli_Flow.hxx".}
proc nbJoins*(this: IGESAppliFlow): cint {.noSideEffect, importcpp: "NbJoins",
                                       header: "IGESAppli_Flow.hxx".}
proc nbFlowNames*(this: IGESAppliFlow): cint {.noSideEffect,
    importcpp: "NbFlowNames", header: "IGESAppli_Flow.hxx".}
proc nbTextDisplayTemplates*(this: IGESAppliFlow): cint {.noSideEffect,
    importcpp: "NbTextDisplayTemplates", header: "IGESAppli_Flow.hxx".}
proc nbContFlowAssociativities*(this: IGESAppliFlow): cint {.noSideEffect,
    importcpp: "NbContFlowAssociativities", header: "IGESAppli_Flow.hxx".}
proc typeOfFlow*(this: IGESAppliFlow): cint {.noSideEffect, importcpp: "TypeOfFlow",
    header: "IGESAppli_Flow.hxx".}
proc functionFlag*(this: IGESAppliFlow): cint {.noSideEffect,
    importcpp: "FunctionFlag", header: "IGESAppli_Flow.hxx".}
proc flowAssociativity*(this: IGESAppliFlow; index: cint): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "FlowAssociativity", header: "IGESAppli_Flow.hxx".}
proc connectPoint*(this: IGESAppliFlow; index: cint): Handle[IGESDrawConnectPoint] {.
    noSideEffect, importcpp: "ConnectPoint", header: "IGESAppli_Flow.hxx".}
proc join*(this: IGESAppliFlow; index: cint): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "Join", header: "IGESAppli_Flow.hxx".}
proc flowName*(this: IGESAppliFlow; index: cint): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "FlowName", header: "IGESAppli_Flow.hxx".}
proc textDisplayTemplate*(this: IGESAppliFlow; index: cint): Handle[
    IGESGraphTextDisplayTemplate] {.noSideEffect,
                                   importcpp: "TextDisplayTemplate",
                                   header: "IGESAppli_Flow.hxx".}
proc contFlowAssociativity*(this: IGESAppliFlow; index: cint): Handle[
    IGESDataIGESEntity] {.noSideEffect, importcpp: "ContFlowAssociativity",
                         header: "IGESAppli_Flow.hxx".}
type
  IGESAppliFlowbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESAppli_Flow::get_type_name(@)",
                            header: "IGESAppli_Flow.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESAppli_Flow::get_type_descriptor(@)",
    header: "IGESAppli_Flow.hxx".}
proc dynamicType*(this: IGESAppliFlow): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESAppli_Flow.hxx".}

























