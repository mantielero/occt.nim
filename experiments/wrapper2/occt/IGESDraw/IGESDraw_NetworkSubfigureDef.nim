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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../IGESData/IGESData_HArray1OfIGESEntity, IGESDraw_HArray1OfConnectPoint,
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Boolean

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESGraph_TextDisplayTemplate"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESDraw_ConnectPoint"
discard "forward decl of IGESDraw_NetworkSubfigureDef"
discard "forward decl of IGESDraw_NetworkSubfigureDef"
type
  Handle_IGESDraw_NetworkSubfigureDef* = handle[IGESDraw_NetworkSubfigureDef]

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
  IGESDraw_NetworkSubfigureDef* {.importcpp: "IGESDraw_NetworkSubfigureDef",
                                 header: "IGESDraw_NetworkSubfigureDef.hxx",
                                 bycopy.} = object of IGESData_IGESEntity


proc constructIGESDraw_NetworkSubfigureDef*(): IGESDraw_NetworkSubfigureDef {.
    constructor, importcpp: "IGESDraw_NetworkSubfigureDef(@)",
    header: "IGESDraw_NetworkSubfigureDef.hxx".}
proc Init*(this: var IGESDraw_NetworkSubfigureDef; aDepth: Standard_Integer;
          aName: handle[TCollection_HAsciiString];
          allEntities: handle[IGESData_HArray1OfIGESEntity];
          aTypeFlag: Standard_Integer;
          aDesignator: handle[TCollection_HAsciiString];
          aTemplate: handle[IGESGraph_TextDisplayTemplate];
          allPointEntities: handle[IGESDraw_HArray1OfConnectPoint]) {.
    importcpp: "Init", header: "IGESDraw_NetworkSubfigureDef.hxx".}
proc Depth*(this: IGESDraw_NetworkSubfigureDef): Standard_Integer {.noSideEffect,
    importcpp: "Depth", header: "IGESDraw_NetworkSubfigureDef.hxx".}
proc Name*(this: IGESDraw_NetworkSubfigureDef): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "IGESDraw_NetworkSubfigureDef.hxx".}
proc NbEntities*(this: IGESDraw_NetworkSubfigureDef): Standard_Integer {.
    noSideEffect, importcpp: "NbEntities",
    header: "IGESDraw_NetworkSubfigureDef.hxx".}
proc Entity*(this: IGESDraw_NetworkSubfigureDef; Index: Standard_Integer): handle[
    IGESData_IGESEntity] {.noSideEffect, importcpp: "Entity",
                          header: "IGESDraw_NetworkSubfigureDef.hxx".}
proc TypeFlag*(this: IGESDraw_NetworkSubfigureDef): Standard_Integer {.noSideEffect,
    importcpp: "TypeFlag", header: "IGESDraw_NetworkSubfigureDef.hxx".}
proc Designator*(this: IGESDraw_NetworkSubfigureDef): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Designator",
                               header: "IGESDraw_NetworkSubfigureDef.hxx".}
proc HasDesignatorTemplate*(this: IGESDraw_NetworkSubfigureDef): Standard_Boolean {.
    noSideEffect, importcpp: "HasDesignatorTemplate",
    header: "IGESDraw_NetworkSubfigureDef.hxx".}
proc DesignatorTemplate*(this: IGESDraw_NetworkSubfigureDef): handle[
    IGESGraph_TextDisplayTemplate] {.noSideEffect,
                                    importcpp: "DesignatorTemplate",
                                    header: "IGESDraw_NetworkSubfigureDef.hxx".}
proc NbPointEntities*(this: IGESDraw_NetworkSubfigureDef): Standard_Integer {.
    noSideEffect, importcpp: "NbPointEntities",
    header: "IGESDraw_NetworkSubfigureDef.hxx".}
proc HasPointEntity*(this: IGESDraw_NetworkSubfigureDef; Index: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "HasPointEntity",
    header: "IGESDraw_NetworkSubfigureDef.hxx".}
proc PointEntity*(this: IGESDraw_NetworkSubfigureDef; Index: Standard_Integer): handle[
    IGESDraw_ConnectPoint] {.noSideEffect, importcpp: "PointEntity",
                            header: "IGESDraw_NetworkSubfigureDef.hxx".}
type
  IGESDraw_NetworkSubfigureDefbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESDraw_NetworkSubfigureDef::get_type_name(@)",
                              header: "IGESDraw_NetworkSubfigureDef.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDraw_NetworkSubfigureDef::get_type_descriptor(@)",
    header: "IGESDraw_NetworkSubfigureDef.hxx".}
proc DynamicType*(this: IGESDraw_NetworkSubfigureDef): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESDraw_NetworkSubfigureDef.hxx".}