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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_XYZ,
  ../Standard/Standard_Integer, IGESDraw_HArray1OfConnectPoint,
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Boolean

discard "forward decl of IGESDraw_NetworkSubfigureDef"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESGraph_TextDisplayTemplate"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_XYZ"
discard "forward decl of IGESDraw_ConnectPoint"
discard "forward decl of IGESDraw_NetworkSubfigure"
discard "forward decl of IGESDraw_NetworkSubfigure"
type
  Handle_IGESDraw_NetworkSubfigure* = handle[IGESDraw_NetworkSubfigure]

## ! defines IGES Network Subfigure Instance Entity,
## ! Type <420> Form Number <0> in package IGESDraw
## !
## ! Used to specify each instance of Network Subfigure
## ! Definition Entity (Type 320, Form 0).

type
  IGESDraw_NetworkSubfigure* {.importcpp: "IGESDraw_NetworkSubfigure",
                              header: "IGESDraw_NetworkSubfigure.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESDraw_NetworkSubfigure*(): IGESDraw_NetworkSubfigure {.
    constructor, importcpp: "IGESDraw_NetworkSubfigure(@)",
    header: "IGESDraw_NetworkSubfigure.hxx".}
proc Init*(this: var IGESDraw_NetworkSubfigure;
          aDefinition: handle[IGESDraw_NetworkSubfigureDef]; aTranslation: gp_XYZ;
          aScaleFactor: gp_XYZ; aTypeFlag: Standard_Integer;
          aDesignator: handle[TCollection_HAsciiString];
          aTemplate: handle[IGESGraph_TextDisplayTemplate];
          allConnectPoints: handle[IGESDraw_HArray1OfConnectPoint]) {.
    importcpp: "Init", header: "IGESDraw_NetworkSubfigure.hxx".}
proc SubfigureDefinition*(this: IGESDraw_NetworkSubfigure): handle[
    IGESDraw_NetworkSubfigureDef] {.noSideEffect,
                                   importcpp: "SubfigureDefinition",
                                   header: "IGESDraw_NetworkSubfigure.hxx".}
proc Translation*(this: IGESDraw_NetworkSubfigure): gp_XYZ {.noSideEffect,
    importcpp: "Translation", header: "IGESDraw_NetworkSubfigure.hxx".}
proc TransformedTranslation*(this: IGESDraw_NetworkSubfigure): gp_XYZ {.
    noSideEffect, importcpp: "TransformedTranslation",
    header: "IGESDraw_NetworkSubfigure.hxx".}
proc ScaleFactors*(this: IGESDraw_NetworkSubfigure): gp_XYZ {.noSideEffect,
    importcpp: "ScaleFactors", header: "IGESDraw_NetworkSubfigure.hxx".}
proc TypeFlag*(this: IGESDraw_NetworkSubfigure): Standard_Integer {.noSideEffect,
    importcpp: "TypeFlag", header: "IGESDraw_NetworkSubfigure.hxx".}
proc ReferenceDesignator*(this: IGESDraw_NetworkSubfigure): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "ReferenceDesignator",
                               header: "IGESDraw_NetworkSubfigure.hxx".}
proc HasDesignatorTemplate*(this: IGESDraw_NetworkSubfigure): Standard_Boolean {.
    noSideEffect, importcpp: "HasDesignatorTemplate",
    header: "IGESDraw_NetworkSubfigure.hxx".}
proc DesignatorTemplate*(this: IGESDraw_NetworkSubfigure): handle[
    IGESGraph_TextDisplayTemplate] {.noSideEffect,
                                    importcpp: "DesignatorTemplate",
                                    header: "IGESDraw_NetworkSubfigure.hxx".}
proc NbConnectPoints*(this: IGESDraw_NetworkSubfigure): Standard_Integer {.
    noSideEffect, importcpp: "NbConnectPoints",
    header: "IGESDraw_NetworkSubfigure.hxx".}
proc ConnectPoint*(this: IGESDraw_NetworkSubfigure; Index: Standard_Integer): handle[
    IGESDraw_ConnectPoint] {.noSideEffect, importcpp: "ConnectPoint",
                            header: "IGESDraw_NetworkSubfigure.hxx".}
type
  IGESDraw_NetworkSubfigurebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESDraw_NetworkSubfigure::get_type_name(@)",
                              header: "IGESDraw_NetworkSubfigure.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDraw_NetworkSubfigure::get_type_descriptor(@)",
    header: "IGESDraw_NetworkSubfigure.hxx".}
proc DynamicType*(this: IGESDraw_NetworkSubfigure): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDraw_NetworkSubfigure.hxx".}