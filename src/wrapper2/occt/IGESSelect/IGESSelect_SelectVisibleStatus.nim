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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../IFSelect/IFSelect_SelectExtract, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IGESSelect_SelectVisibleStatus"
discard "forward decl of IGESSelect_SelectVisibleStatus"
type
  Handle_IGESSelect_SelectVisibleStatus* = handle[IGESSelect_SelectVisibleStatus]

## ! This selection looks at Blank Status of IGES Entities
## ! Direct  selection keeps Visible Entities (Blank = 0),
## ! Reverse selection keeps Blanked Entities (Blank = 1)

type
  IGESSelect_SelectVisibleStatus* {.importcpp: "IGESSelect_SelectVisibleStatus", header: "IGESSelect_SelectVisibleStatus.hxx",
                                   bycopy.} = object of IFSelect_SelectExtract ## !
                                                                          ## Creates a
                                                                          ## SelectVisibleStatus


proc constructIGESSelect_SelectVisibleStatus*(): IGESSelect_SelectVisibleStatus {.
    constructor, importcpp: "IGESSelect_SelectVisibleStatus(@)",
    header: "IGESSelect_SelectVisibleStatus.hxx".}
proc Sort*(this: IGESSelect_SelectVisibleStatus; rank: Standard_Integer;
          ent: handle[Standard_Transient]; model: handle[Interface_InterfaceModel]): Standard_Boolean {.
    noSideEffect, importcpp: "Sort", header: "IGESSelect_SelectVisibleStatus.hxx".}
proc ExtractLabel*(this: IGESSelect_SelectVisibleStatus): TCollection_AsciiString {.
    noSideEffect, importcpp: "ExtractLabel",
    header: "IGESSelect_SelectVisibleStatus.hxx".}
type
  IGESSelect_SelectVisibleStatusbase_type* = IFSelect_SelectExtract

proc get_type_name*(): cstring {.importcpp: "IGESSelect_SelectVisibleStatus::get_type_name(@)",
                              header: "IGESSelect_SelectVisibleStatus.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSelect_SelectVisibleStatus::get_type_descriptor(@)",
    header: "IGESSelect_SelectVisibleStatus.hxx".}
proc DynamicType*(this: IGESSelect_SelectVisibleStatus): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSelect_SelectVisibleStatus.hxx".}