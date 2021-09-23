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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_XYZ,
  ../Standard/Standard_Integer, ../IGESData/IGESData_IGESEntity,
  ../Standard/Standard_Boolean

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESGraph_TextDisplayTemplate"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESDraw_ConnectPoint"
discard "forward decl of IGESDraw_ConnectPoint"
type
  Handle_IGESDraw_ConnectPoint* = handle[IGESDraw_ConnectPoint]

## ! defines IGESConnectPoint, Type <132> Form Number <0>
## ! in package IGESDraw
## !
## ! Connect Point Entity describes a point of connection for
## ! zero, one or more entities. Its referenced from Composite
## ! curve, or Network Subfigure Definition/Instance, or Flow
## ! Associative Instance, or it may stand alone.

type
  IGESDraw_ConnectPoint* {.importcpp: "IGESDraw_ConnectPoint",
                          header: "IGESDraw_ConnectPoint.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESDraw_ConnectPoint*(): IGESDraw_ConnectPoint {.constructor,
    importcpp: "IGESDraw_ConnectPoint(@)", header: "IGESDraw_ConnectPoint.hxx".}
proc Init*(this: var IGESDraw_ConnectPoint; aPoint: gp_XYZ;
          aDisplaySymbol: handle[IGESData_IGESEntity];
          aTypeFlag: Standard_Integer; aFunctionFlag: Standard_Integer;
          aFunctionIdentifier: handle[TCollection_HAsciiString];
          anIdentifierTemplate: handle[IGESGraph_TextDisplayTemplate];
          aFunctionName: handle[TCollection_HAsciiString];
          aFunctionTemplate: handle[IGESGraph_TextDisplayTemplate];
          aPointIdentifier: Standard_Integer; aFunctionCode: Standard_Integer;
          aSwapFlag: Standard_Integer;
          anOwnerSubfigure: handle[IGESData_IGESEntity]) {.importcpp: "Init",
    header: "IGESDraw_ConnectPoint.hxx".}
proc Point*(this: IGESDraw_ConnectPoint): gp_Pnt {.noSideEffect, importcpp: "Point",
    header: "IGESDraw_ConnectPoint.hxx".}
proc TransformedPoint*(this: IGESDraw_ConnectPoint): gp_Pnt {.noSideEffect,
    importcpp: "TransformedPoint", header: "IGESDraw_ConnectPoint.hxx".}
proc HasDisplaySymbol*(this: IGESDraw_ConnectPoint): Standard_Boolean {.
    noSideEffect, importcpp: "HasDisplaySymbol",
    header: "IGESDraw_ConnectPoint.hxx".}
proc DisplaySymbol*(this: IGESDraw_ConnectPoint): handle[IGESData_IGESEntity] {.
    noSideEffect, importcpp: "DisplaySymbol", header: "IGESDraw_ConnectPoint.hxx".}
proc TypeFlag*(this: IGESDraw_ConnectPoint): Standard_Integer {.noSideEffect,
    importcpp: "TypeFlag", header: "IGESDraw_ConnectPoint.hxx".}
proc FunctionFlag*(this: IGESDraw_ConnectPoint): Standard_Integer {.noSideEffect,
    importcpp: "FunctionFlag", header: "IGESDraw_ConnectPoint.hxx".}
proc FunctionIdentifier*(this: IGESDraw_ConnectPoint): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "FunctionIdentifier",
                               header: "IGESDraw_ConnectPoint.hxx".}
proc HasIdentifierTemplate*(this: IGESDraw_ConnectPoint): Standard_Boolean {.
    noSideEffect, importcpp: "HasIdentifierTemplate",
    header: "IGESDraw_ConnectPoint.hxx".}
proc IdentifierTemplate*(this: IGESDraw_ConnectPoint): handle[
    IGESGraph_TextDisplayTemplate] {.noSideEffect,
                                    importcpp: "IdentifierTemplate",
                                    header: "IGESDraw_ConnectPoint.hxx".}
proc FunctionName*(this: IGESDraw_ConnectPoint): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "FunctionName", header: "IGESDraw_ConnectPoint.hxx".}
proc HasFunctionTemplate*(this: IGESDraw_ConnectPoint): Standard_Boolean {.
    noSideEffect, importcpp: "HasFunctionTemplate",
    header: "IGESDraw_ConnectPoint.hxx".}
proc FunctionTemplate*(this: IGESDraw_ConnectPoint): handle[
    IGESGraph_TextDisplayTemplate] {.noSideEffect, importcpp: "FunctionTemplate",
                                    header: "IGESDraw_ConnectPoint.hxx".}
proc PointIdentifier*(this: IGESDraw_ConnectPoint): Standard_Integer {.noSideEffect,
    importcpp: "PointIdentifier", header: "IGESDraw_ConnectPoint.hxx".}
proc FunctionCode*(this: IGESDraw_ConnectPoint): Standard_Integer {.noSideEffect,
    importcpp: "FunctionCode", header: "IGESDraw_ConnectPoint.hxx".}
proc SwapFlag*(this: IGESDraw_ConnectPoint): Standard_Boolean {.noSideEffect,
    importcpp: "SwapFlag", header: "IGESDraw_ConnectPoint.hxx".}
proc HasOwnerSubfigure*(this: IGESDraw_ConnectPoint): Standard_Boolean {.
    noSideEffect, importcpp: "HasOwnerSubfigure",
    header: "IGESDraw_ConnectPoint.hxx".}
proc OwnerSubfigure*(this: IGESDraw_ConnectPoint): handle[IGESData_IGESEntity] {.
    noSideEffect, importcpp: "OwnerSubfigure", header: "IGESDraw_ConnectPoint.hxx".}
type
  IGESDraw_ConnectPointbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESDraw_ConnectPoint::get_type_name(@)",
                              header: "IGESDraw_ConnectPoint.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDraw_ConnectPoint::get_type_descriptor(@)",
    header: "IGESDraw_ConnectPoint.hxx".}
proc DynamicType*(this: IGESDraw_ConnectPoint): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDraw_ConnectPoint.hxx".}