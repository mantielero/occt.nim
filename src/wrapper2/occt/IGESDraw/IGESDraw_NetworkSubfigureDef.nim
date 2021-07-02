##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen ( Niraj RANGWALA )
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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESGraph_TextDisplayTemplate"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESDraw_ConnectPoint"
discard "forward decl of IGESDraw_NetworkSubfigureDef"
discard "forward decl of IGESDraw_NetworkSubfigureDef"
type
  HandleIGESDrawNetworkSubfigureDef* = Handle[IGESDrawNetworkSubfigureDef]

## ! defines IGESNetworkSubfigureDef,
## ! Type <320> Form Number <0> in package IGESDraw
## !
## ! This class differs from the ordinary subfigure definition
## ! in that it defines a specialized subfigure, one whose
## ! instances may participate in networks.
## !
## ! The Number of associated(child) Connect Point Entities
## ! in the Network Subfigure Instance must match the number
## ! in the Network Subfigure Definition, their order must
## ! be identical, and any unused points of connection in
## ! the instance must be indicated by a null(zero) pointer.

type
  IGESDrawNetworkSubfigureDef* {.importcpp: "IGESDraw_NetworkSubfigureDef",
                                header: "IGESDraw_NetworkSubfigureDef.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESDrawNetworkSubfigureDef*(): IGESDrawNetworkSubfigureDef {.
    constructor, importcpp: "IGESDraw_NetworkSubfigureDef(@)",
    header: "IGESDraw_NetworkSubfigureDef.hxx".}
proc init*(this: var IGESDrawNetworkSubfigureDef; aDepth: StandardInteger;
          aName: Handle[TCollectionHAsciiString];
          allEntities: Handle[IGESDataHArray1OfIGESEntity];
          aTypeFlag: StandardInteger;
          aDesignator: Handle[TCollectionHAsciiString];
          aTemplate: Handle[IGESGraphTextDisplayTemplate];
          allPointEntities: Handle[IGESDrawHArray1OfConnectPoint]) {.
    importcpp: "Init", header: "IGESDraw_NetworkSubfigureDef.hxx".}
proc depth*(this: IGESDrawNetworkSubfigureDef): StandardInteger {.noSideEffect,
    importcpp: "Depth", header: "IGESDraw_NetworkSubfigureDef.hxx".}
proc name*(this: IGESDrawNetworkSubfigureDef): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "IGESDraw_NetworkSubfigureDef.hxx".}
proc nbEntities*(this: IGESDrawNetworkSubfigureDef): StandardInteger {.noSideEffect,
    importcpp: "NbEntities", header: "IGESDraw_NetworkSubfigureDef.hxx".}
proc entity*(this: IGESDrawNetworkSubfigureDef; index: StandardInteger): Handle[
    IGESDataIGESEntity] {.noSideEffect, importcpp: "Entity",
                         header: "IGESDraw_NetworkSubfigureDef.hxx".}
proc typeFlag*(this: IGESDrawNetworkSubfigureDef): StandardInteger {.noSideEffect,
    importcpp: "TypeFlag", header: "IGESDraw_NetworkSubfigureDef.hxx".}
proc designator*(this: IGESDrawNetworkSubfigureDef): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Designator",
    header: "IGESDraw_NetworkSubfigureDef.hxx".}
proc hasDesignatorTemplate*(this: IGESDrawNetworkSubfigureDef): StandardBoolean {.
    noSideEffect, importcpp: "HasDesignatorTemplate",
    header: "IGESDraw_NetworkSubfigureDef.hxx".}
proc designatorTemplate*(this: IGESDrawNetworkSubfigureDef): Handle[
    IGESGraphTextDisplayTemplate] {.noSideEffect, importcpp: "DesignatorTemplate",
                                   header: "IGESDraw_NetworkSubfigureDef.hxx".}
proc nbPointEntities*(this: IGESDrawNetworkSubfigureDef): StandardInteger {.
    noSideEffect, importcpp: "NbPointEntities",
    header: "IGESDraw_NetworkSubfigureDef.hxx".}
proc hasPointEntity*(this: IGESDrawNetworkSubfigureDef; index: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "HasPointEntity",
    header: "IGESDraw_NetworkSubfigureDef.hxx".}
proc pointEntity*(this: IGESDrawNetworkSubfigureDef; index: StandardInteger): Handle[
    IGESDrawConnectPoint] {.noSideEffect, importcpp: "PointEntity",
                           header: "IGESDraw_NetworkSubfigureDef.hxx".}
type
  IGESDrawNetworkSubfigureDefbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESDraw_NetworkSubfigureDef::get_type_name(@)",
                            header: "IGESDraw_NetworkSubfigureDef.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDraw_NetworkSubfigureDef::get_type_descriptor(@)",
    header: "IGESDraw_NetworkSubfigureDef.hxx".}
proc dynamicType*(this: IGESDrawNetworkSubfigureDef): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESDraw_NetworkSubfigureDef.hxx".}

