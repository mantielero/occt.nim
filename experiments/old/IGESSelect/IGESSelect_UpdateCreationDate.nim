##  Created on: 1994-06-01
##  Created by: Christian CAILLET
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of IFSelect_ContextModif"
discard "forward decl of IGESData_IGESModel"
discard "forward decl of Interface_CopyTool"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IGESSelect_UpdateCreationDate"
discard "forward decl of IGESSelect_UpdateCreationDate"
type
  HandleC1C1* = Handle[IGESSelectUpdateCreationDate]

## ! Allows to Change the Creation Date indication in the Header
## ! (Global Section) of IGES File. It is taken from the operating
## ! system (time of application of the Modifier).
## ! The Selection of the Modifier is not used : it simply acts as
## ! a criterium to select IGES Files to touch up

type
  IGESSelectUpdateCreationDate* {.importcpp: "IGESSelect_UpdateCreationDate",
                                 header: "IGESSelect_UpdateCreationDate.hxx",
                                 bycopy.} = object of IGESSelectModelModifier ## ! Creates an
                                                                         ## UpdateCreationDate, which uses the system Date


proc constructIGESSelectUpdateCreationDate*(): IGESSelectUpdateCreationDate {.
    constructor, importcpp: "IGESSelect_UpdateCreationDate(@)",
    header: "IGESSelect_UpdateCreationDate.hxx".}
proc performing*(this: IGESSelectUpdateCreationDate; ctx: var IFSelectContextModif;
                target: Handle[IGESDataIGESModel]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "Performing",
    header: "IGESSelect_UpdateCreationDate.hxx".}
proc label*(this: IGESSelectUpdateCreationDate): TCollectionAsciiString {.
    noSideEffect, importcpp: "Label", header: "IGESSelect_UpdateCreationDate.hxx".}
type
  IGESSelectUpdateCreationDatebaseType* = IGESSelectModelModifier

proc getTypeName*(): cstring {.importcpp: "IGESSelect_UpdateCreationDate::get_type_name(@)",
                            header: "IGESSelect_UpdateCreationDate.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSelect_UpdateCreationDate::get_type_descriptor(@)",
    header: "IGESSelect_UpdateCreationDate.hxx".}
proc dynamicType*(this: IGESSelectUpdateCreationDate): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSelect_UpdateCreationDate.hxx".}

























