##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen ( TCD )
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

discard "forward decl of IGESDraw_NetworkSubfigureDef"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESGraph_TextDisplayTemplate"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_XYZ"
discard "forward decl of IGESDraw_ConnectPoint"
discard "forward decl of IGESDraw_NetworkSubfigure"
discard "forward decl of IGESDraw_NetworkSubfigure"
type
  HandleC1C1* = Handle[IGESDrawNetworkSubfigure]

## ! defines IGES Network Subfigure Instance Entity,
## ! Type <420> Form Number <0> in package IGESDraw
## !
## ! Used to specify each instance of Network Subfigure
## ! Definition Entity (Type 320, Form 0).

type
  IGESDrawNetworkSubfigure* {.importcpp: "IGESDraw_NetworkSubfigure",
                             header: "IGESDraw_NetworkSubfigure.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESDrawNetworkSubfigure*(): IGESDrawNetworkSubfigure {.constructor,
    importcpp: "IGESDraw_NetworkSubfigure(@)",
    header: "IGESDraw_NetworkSubfigure.hxx".}
proc init*(this: var IGESDrawNetworkSubfigure;
          aDefinition: Handle[IGESDrawNetworkSubfigureDef]; aTranslation: Xyz;
          aScaleFactor: Xyz; aTypeFlag: cint;
          aDesignator: Handle[TCollectionHAsciiString];
          aTemplate: Handle[IGESGraphTextDisplayTemplate];
          allConnectPoints: Handle[IGESDrawHArray1OfConnectPoint]) {.
    importcpp: "Init", header: "IGESDraw_NetworkSubfigure.hxx".}
proc subfigureDefinition*(this: IGESDrawNetworkSubfigure): Handle[
    IGESDrawNetworkSubfigureDef] {.noSideEffect, importcpp: "SubfigureDefinition",
                                  header: "IGESDraw_NetworkSubfigure.hxx".}
proc translation*(this: IGESDrawNetworkSubfigure): Xyz {.noSideEffect,
    importcpp: "Translation", header: "IGESDraw_NetworkSubfigure.hxx".}
proc transformedTranslation*(this: IGESDrawNetworkSubfigure): Xyz {.noSideEffect,
    importcpp: "TransformedTranslation", header: "IGESDraw_NetworkSubfigure.hxx".}
proc scaleFactors*(this: IGESDrawNetworkSubfigure): Xyz {.noSideEffect,
    importcpp: "ScaleFactors", header: "IGESDraw_NetworkSubfigure.hxx".}
proc typeFlag*(this: IGESDrawNetworkSubfigure): cint {.noSideEffect,
    importcpp: "TypeFlag", header: "IGESDraw_NetworkSubfigure.hxx".}
proc referenceDesignator*(this: IGESDrawNetworkSubfigure): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "ReferenceDesignator",
                              header: "IGESDraw_NetworkSubfigure.hxx".}
proc hasDesignatorTemplate*(this: IGESDrawNetworkSubfigure): bool {.noSideEffect,
    importcpp: "HasDesignatorTemplate", header: "IGESDraw_NetworkSubfigure.hxx".}
proc designatorTemplate*(this: IGESDrawNetworkSubfigure): Handle[
    IGESGraphTextDisplayTemplate] {.noSideEffect, importcpp: "DesignatorTemplate",
                                   header: "IGESDraw_NetworkSubfigure.hxx".}
proc nbConnectPoints*(this: IGESDrawNetworkSubfigure): cint {.noSideEffect,
    importcpp: "NbConnectPoints", header: "IGESDraw_NetworkSubfigure.hxx".}
proc connectPoint*(this: IGESDrawNetworkSubfigure; index: cint): Handle[
    IGESDrawConnectPoint] {.noSideEffect, importcpp: "ConnectPoint",
                           header: "IGESDraw_NetworkSubfigure.hxx".}
type
  IGESDrawNetworkSubfigurebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESDraw_NetworkSubfigure::get_type_name(@)",
                            header: "IGESDraw_NetworkSubfigure.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDraw_NetworkSubfigure::get_type_descriptor(@)",
    header: "IGESDraw_NetworkSubfigure.hxx".}
proc dynamicType*(this: IGESDrawNetworkSubfigure): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDraw_NetworkSubfigure.hxx".}

























