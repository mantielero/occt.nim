##  Created on: 1992-11-17
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  IFSelect_SelectDeduct, ../Standard/Standard_Integer

discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_Graph"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SelectExtract"
discard "forward decl of IFSelect_SelectExtract"
type
  Handle_IFSelect_SelectExtract* = handle[IFSelect_SelectExtract]

## ! A SelectExtract determines a list of Entities from an Input
## ! Selection, as a sub-list of the Input Result
## ! It works by applying a sort criterium on each Entity of the
## ! Input. This criterium can be applied Direct to Pick Items
## ! (default case) or Reverse to Remove Item
## !
## ! Basic features (the unique Input) are inherited from SelectDeduct

type
  IFSelect_SelectExtract* {.importcpp: "IFSelect_SelectExtract",
                           header: "IFSelect_SelectExtract.hxx", bycopy.} = object of IFSelect_SelectDeduct ##
                                                                                                     ## !
                                                                                                     ## Returns
                                                                                                     ## True
                                                                                                     ## if
                                                                                                     ## Sort
                                                                                                     ## criterium
                                                                                                     ## is
                                                                                                     ## Direct,
                                                                                                     ## False
                                                                                                     ## if
                                                                                                     ## Reverse
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Initializes
                                                                                                     ## a
                                                                                                     ## SelectExtract
                                                                                                     ## :
                                                                                                     ## enforces
                                                                                                     ## the
                                                                                                     ## sort
                                                                                                     ## to
                                                                                                     ## be
                                                                                                     ## Direct


proc IsDirect*(this: IFSelect_SelectExtract): Standard_Boolean {.noSideEffect,
    importcpp: "IsDirect", header: "IFSelect_SelectExtract.hxx".}
proc SetDirect*(this: var IFSelect_SelectExtract; direct: Standard_Boolean) {.
    importcpp: "SetDirect", header: "IFSelect_SelectExtract.hxx".}
proc RootResult*(this: IFSelect_SelectExtract; G: Interface_Graph): Interface_EntityIterator {.
    noSideEffect, importcpp: "RootResult", header: "IFSelect_SelectExtract.hxx".}
proc Sort*(this: IFSelect_SelectExtract; rank: Standard_Integer;
          ent: handle[Standard_Transient]; model: handle[Interface_InterfaceModel]): Standard_Boolean {.
    noSideEffect, importcpp: "Sort", header: "IFSelect_SelectExtract.hxx".}
proc SortInGraph*(this: IFSelect_SelectExtract; rank: Standard_Integer;
                 ent: handle[Standard_Transient]; G: Interface_Graph): Standard_Boolean {.
    noSideEffect, importcpp: "SortInGraph", header: "IFSelect_SelectExtract.hxx".}
proc Label*(this: IFSelect_SelectExtract): TCollection_AsciiString {.noSideEffect,
    importcpp: "Label", header: "IFSelect_SelectExtract.hxx".}
proc ExtractLabel*(this: IFSelect_SelectExtract): TCollection_AsciiString {.
    noSideEffect, importcpp: "ExtractLabel", header: "IFSelect_SelectExtract.hxx".}
type
  IFSelect_SelectExtractbase_type* = IFSelect_SelectDeduct

proc get_type_name*(): cstring {.importcpp: "IFSelect_SelectExtract::get_type_name(@)",
                              header: "IFSelect_SelectExtract.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_SelectExtract::get_type_descriptor(@)",
    header: "IFSelect_SelectExtract.hxx".}
proc DynamicType*(this: IFSelect_SelectExtract): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IFSelect_SelectExtract.hxx".}