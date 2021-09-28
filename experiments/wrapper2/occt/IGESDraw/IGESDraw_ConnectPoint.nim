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

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESGraph_TextDisplayTemplate"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESDraw_ConnectPoint"
discard "forward decl of IGESDraw_ConnectPoint"
type
  HandleC1C1* = Handle[IGESDrawConnectPoint]

## ! defines IGESConnectPoint, Type <132> Form Number <0>
## ! in package IGESDraw
## !
## ! Connect Point Entity describes a point of connection for
## ! zero, one or more entities. Its referenced from Composite
## ! curve, or Network Subfigure Definition/Instance, or Flow
## ! Associative Instance, or it may stand alone.

type
  IGESDrawConnectPoint* {.importcpp: "IGESDraw_ConnectPoint",
                         header: "IGESDraw_ConnectPoint.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESDrawConnectPoint*(): IGESDrawConnectPoint {.constructor,
    importcpp: "IGESDraw_ConnectPoint(@)", header: "IGESDraw_ConnectPoint.hxx".}
proc init*(this: var IGESDrawConnectPoint; aPoint: Xyz;
          aDisplaySymbol: Handle[IGESDataIGESEntity]; aTypeFlag: cint;
          aFunctionFlag: cint;
          aFunctionIdentifier: Handle[TCollectionHAsciiString];
          anIdentifierTemplate: Handle[IGESGraphTextDisplayTemplate];
          aFunctionName: Handle[TCollectionHAsciiString];
          aFunctionTemplate: Handle[IGESGraphTextDisplayTemplate];
          aPointIdentifier: cint; aFunctionCode: cint; aSwapFlag: cint;
          anOwnerSubfigure: Handle[IGESDataIGESEntity]) {.importcpp: "Init",
    header: "IGESDraw_ConnectPoint.hxx".}
proc point*(this: IGESDrawConnectPoint): Pnt {.noSideEffect, importcpp: "Point",
    header: "IGESDraw_ConnectPoint.hxx".}
proc transformedPoint*(this: IGESDrawConnectPoint): Pnt {.noSideEffect,
    importcpp: "TransformedPoint", header: "IGESDraw_ConnectPoint.hxx".}
proc hasDisplaySymbol*(this: IGESDrawConnectPoint): bool {.noSideEffect,
    importcpp: "HasDisplaySymbol", header: "IGESDraw_ConnectPoint.hxx".}
proc displaySymbol*(this: IGESDrawConnectPoint): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "DisplaySymbol", header: "IGESDraw_ConnectPoint.hxx".}
proc typeFlag*(this: IGESDrawConnectPoint): cint {.noSideEffect,
    importcpp: "TypeFlag", header: "IGESDraw_ConnectPoint.hxx".}
proc functionFlag*(this: IGESDrawConnectPoint): cint {.noSideEffect,
    importcpp: "FunctionFlag", header: "IGESDraw_ConnectPoint.hxx".}
proc functionIdentifier*(this: IGESDrawConnectPoint): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "FunctionIdentifier",
                              header: "IGESDraw_ConnectPoint.hxx".}
proc hasIdentifierTemplate*(this: IGESDrawConnectPoint): bool {.noSideEffect,
    importcpp: "HasIdentifierTemplate", header: "IGESDraw_ConnectPoint.hxx".}
proc identifierTemplate*(this: IGESDrawConnectPoint): Handle[
    IGESGraphTextDisplayTemplate] {.noSideEffect, importcpp: "IdentifierTemplate",
                                   header: "IGESDraw_ConnectPoint.hxx".}
proc functionName*(this: IGESDrawConnectPoint): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "FunctionName", header: "IGESDraw_ConnectPoint.hxx".}
proc hasFunctionTemplate*(this: IGESDrawConnectPoint): bool {.noSideEffect,
    importcpp: "HasFunctionTemplate", header: "IGESDraw_ConnectPoint.hxx".}
proc functionTemplate*(this: IGESDrawConnectPoint): Handle[
    IGESGraphTextDisplayTemplate] {.noSideEffect, importcpp: "FunctionTemplate",
                                   header: "IGESDraw_ConnectPoint.hxx".}
proc pointIdentifier*(this: IGESDrawConnectPoint): cint {.noSideEffect,
    importcpp: "PointIdentifier", header: "IGESDraw_ConnectPoint.hxx".}
proc functionCode*(this: IGESDrawConnectPoint): cint {.noSideEffect,
    importcpp: "FunctionCode", header: "IGESDraw_ConnectPoint.hxx".}
proc swapFlag*(this: IGESDrawConnectPoint): bool {.noSideEffect,
    importcpp: "SwapFlag", header: "IGESDraw_ConnectPoint.hxx".}
proc hasOwnerSubfigure*(this: IGESDrawConnectPoint): bool {.noSideEffect,
    importcpp: "HasOwnerSubfigure", header: "IGESDraw_ConnectPoint.hxx".}
proc ownerSubfigure*(this: IGESDrawConnectPoint): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "OwnerSubfigure", header: "IGESDraw_ConnectPoint.hxx".}
type
  IGESDrawConnectPointbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESDraw_ConnectPoint::get_type_name(@)",
                            header: "IGESDraw_ConnectPoint.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDraw_ConnectPoint::get_type_descriptor(@)",
    header: "IGESDraw_ConnectPoint.hxx".}
proc dynamicType*(this: IGESDrawConnectPoint): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESDraw_ConnectPoint.hxx".}

























