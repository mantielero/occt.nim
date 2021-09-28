##  Created on: 1994-05-31
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

discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IGESSelect_SelectVisibleStatus"
discard "forward decl of IGESSelect_SelectVisibleStatus"
type
  HandleC1C1* = Handle[IGESSelectSelectVisibleStatus]

## ! This selection looks at Blank Status of IGES Entities
## ! Direct  selection keeps Visible Entities (Blank = 0),
## ! Reverse selection keeps Blanked Entities (Blank = 1)

type
  IGESSelectSelectVisibleStatus* {.importcpp: "IGESSelect_SelectVisibleStatus",
                                  header: "IGESSelect_SelectVisibleStatus.hxx",
                                  bycopy.} = object of IFSelectSelectExtract ## ! Creates a
                                                                        ## SelectVisibleStatus


proc constructIGESSelectSelectVisibleStatus*(): IGESSelectSelectVisibleStatus {.
    constructor, importcpp: "IGESSelect_SelectVisibleStatus(@)",
    header: "IGESSelect_SelectVisibleStatus.hxx".}
proc sort*(this: IGESSelectSelectVisibleStatus; rank: cint;
          ent: Handle[StandardTransient]; model: Handle[InterfaceInterfaceModel]): bool {.
    noSideEffect, importcpp: "Sort", header: "IGESSelect_SelectVisibleStatus.hxx".}
proc extractLabel*(this: IGESSelectSelectVisibleStatus): TCollectionAsciiString {.
    noSideEffect, importcpp: "ExtractLabel",
    header: "IGESSelect_SelectVisibleStatus.hxx".}
type
  IGESSelectSelectVisibleStatusbaseType* = IFSelectSelectExtract

proc getTypeName*(): cstring {.importcpp: "IGESSelect_SelectVisibleStatus::get_type_name(@)",
                            header: "IGESSelect_SelectVisibleStatus.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSelect_SelectVisibleStatus::get_type_descriptor(@)",
    header: "IGESSelect_SelectVisibleStatus.hxx".}
proc dynamicType*(this: IGESSelectSelectVisibleStatus): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSelect_SelectVisibleStatus.hxx".}

























