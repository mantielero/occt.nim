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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../IGESData/IGESData_HArray1OfIGESEntity,
  ../IGESDraw/IGESDraw_HArray1OfConnectPoint,
  ../Interface/Interface_HArray1OfHAsciiString,
  ../IGESGraph/IGESGraph_HArray1OfTextDisplayTemplate,
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Boolean

discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESDraw_ConnectPoint"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESGraph_TextDisplayTemplate"
discard "forward decl of IGESAppli_PipingFlow"
discard "forward decl of IGESAppli_PipingFlow"
type
  Handle_IGESAppli_PipingFlow* = handle[IGESAppli_PipingFlow]

## ! defines PipingFlow, Type <402> Form <20>
## ! in package IGESAppli
## ! Represents a single fluid flow path

type
  IGESAppli_PipingFlow* {.importcpp: "IGESAppli_PipingFlow",
                         header: "IGESAppli_PipingFlow.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESAppli_PipingFlow*(): IGESAppli_PipingFlow {.constructor,
    importcpp: "IGESAppli_PipingFlow(@)", header: "IGESAppli_PipingFlow.hxx".}
proc Init*(this: var IGESAppli_PipingFlow; nbContextFlags: Standard_Integer;
          aFlowType: Standard_Integer;
          allFlowAssocs: handle[IGESData_HArray1OfIGESEntity];
          allConnectPoints: handle[IGESDraw_HArray1OfConnectPoint];
          allJoins: handle[IGESData_HArray1OfIGESEntity];
          allFlowNames: handle[Interface_HArray1OfHAsciiString];
          allTextDisps: handle[IGESGraph_HArray1OfTextDisplayTemplate];
          allContFlowAssocs: handle[IGESData_HArray1OfIGESEntity]) {.
    importcpp: "Init", header: "IGESAppli_PipingFlow.hxx".}
proc OwnCorrect*(this: var IGESAppli_PipingFlow): Standard_Boolean {.
    importcpp: "OwnCorrect", header: "IGESAppli_PipingFlow.hxx".}
proc NbContextFlags*(this: IGESAppli_PipingFlow): Standard_Integer {.noSideEffect,
    importcpp: "NbContextFlags", header: "IGESAppli_PipingFlow.hxx".}
proc NbFlowAssociativities*(this: IGESAppli_PipingFlow): Standard_Integer {.
    noSideEffect, importcpp: "NbFlowAssociativities",
    header: "IGESAppli_PipingFlow.hxx".}
proc NbConnectPoints*(this: IGESAppli_PipingFlow): Standard_Integer {.noSideEffect,
    importcpp: "NbConnectPoints", header: "IGESAppli_PipingFlow.hxx".}
proc NbJoins*(this: IGESAppli_PipingFlow): Standard_Integer {.noSideEffect,
    importcpp: "NbJoins", header: "IGESAppli_PipingFlow.hxx".}
proc NbFlowNames*(this: IGESAppli_PipingFlow): Standard_Integer {.noSideEffect,
    importcpp: "NbFlowNames", header: "IGESAppli_PipingFlow.hxx".}
proc NbTextDisplayTemplates*(this: IGESAppli_PipingFlow): Standard_Integer {.
    noSideEffect, importcpp: "NbTextDisplayTemplates",
    header: "IGESAppli_PipingFlow.hxx".}
proc NbContFlowAssociativities*(this: IGESAppli_PipingFlow): Standard_Integer {.
    noSideEffect, importcpp: "NbContFlowAssociativities",
    header: "IGESAppli_PipingFlow.hxx".}
proc TypeOfFlow*(this: IGESAppli_PipingFlow): Standard_Integer {.noSideEffect,
    importcpp: "TypeOfFlow", header: "IGESAppli_PipingFlow.hxx".}
proc FlowAssociativity*(this: IGESAppli_PipingFlow; Index: Standard_Integer): handle[
    IGESData_IGESEntity] {.noSideEffect, importcpp: "FlowAssociativity",
                          header: "IGESAppli_PipingFlow.hxx".}
proc ConnectPoint*(this: IGESAppli_PipingFlow; Index: Standard_Integer): handle[
    IGESDraw_ConnectPoint] {.noSideEffect, importcpp: "ConnectPoint",
                            header: "IGESAppli_PipingFlow.hxx".}
proc Join*(this: IGESAppli_PipingFlow; Index: Standard_Integer): handle[
    IGESData_IGESEntity] {.noSideEffect, importcpp: "Join",
                          header: "IGESAppli_PipingFlow.hxx".}
proc FlowName*(this: IGESAppli_PipingFlow; Index: Standard_Integer): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "FlowName",
                               header: "IGESAppli_PipingFlow.hxx".}
proc TextDisplayTemplate*(this: IGESAppli_PipingFlow; Index: Standard_Integer): handle[
    IGESGraph_TextDisplayTemplate] {.noSideEffect,
                                    importcpp: "TextDisplayTemplate",
                                    header: "IGESAppli_PipingFlow.hxx".}
proc ContFlowAssociativity*(this: IGESAppli_PipingFlow; Index: Standard_Integer): handle[
    IGESData_IGESEntity] {.noSideEffect, importcpp: "ContFlowAssociativity",
                          header: "IGESAppli_PipingFlow.hxx".}
type
  IGESAppli_PipingFlowbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESAppli_PipingFlow::get_type_name(@)",
                              header: "IGESAppli_PipingFlow.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESAppli_PipingFlow::get_type_descriptor(@)",
    header: "IGESAppli_PipingFlow.hxx".}
proc DynamicType*(this: IGESAppli_PipingFlow): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESAppli_PipingFlow.hxx".}