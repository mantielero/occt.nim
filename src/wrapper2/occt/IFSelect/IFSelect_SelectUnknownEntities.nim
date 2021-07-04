##  Created on: 1992-11-18
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
  ../Standard/Standard, ../Standard/Standard_Type, IFSelect_SelectExtract,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SelectUnknownEntities"
discard "forward decl of IFSelect_SelectUnknownEntities"
type
  Handle_IFSelect_SelectUnknownEntities* = handle[IFSelect_SelectUnknownEntities]

## ! A SelectUnknownEntities sorts the Entities which are qualified
## ! as "Unknown" (their Type has not been recognized)

type
  IFSelect_SelectUnknownEntities* {.importcpp: "IFSelect_SelectUnknownEntities", header: "IFSelect_SelectUnknownEntities.hxx",
                                   bycopy.} = object of IFSelect_SelectExtract ## !
                                                                          ## Creates a
                                                                          ## SelectUnknownEntities


proc constructIFSelect_SelectUnknownEntities*(): IFSelect_SelectUnknownEntities {.
    constructor, importcpp: "IFSelect_SelectUnknownEntities(@)",
    header: "IFSelect_SelectUnknownEntities.hxx".}
proc Sort*(this: IFSelect_SelectUnknownEntities; rank: Standard_Integer;
          ent: handle[Standard_Transient]; model: handle[Interface_InterfaceModel]): Standard_Boolean {.
    noSideEffect, importcpp: "Sort", header: "IFSelect_SelectUnknownEntities.hxx".}
proc ExtractLabel*(this: IFSelect_SelectUnknownEntities): TCollection_AsciiString {.
    noSideEffect, importcpp: "ExtractLabel",
    header: "IFSelect_SelectUnknownEntities.hxx".}
type
  IFSelect_SelectUnknownEntitiesbase_type* = IFSelect_SelectExtract

proc get_type_name*(): cstring {.importcpp: "IFSelect_SelectUnknownEntities::get_type_name(@)",
                              header: "IFSelect_SelectUnknownEntities.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_SelectUnknownEntities::get_type_descriptor(@)",
    header: "IFSelect_SelectUnknownEntities.hxx".}
proc DynamicType*(this: IFSelect_SelectUnknownEntities): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IFSelect_SelectUnknownEntities.hxx".}