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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IGESSelect_SelectName"
discard "forward decl of IGESSelect_SelectName"
type
  Handle_IGESSelect_SelectName* = handle[IGESSelect_SelectName]

## ! Selects Entities which have a given name.
## ! Consider Property Name if present, else Short Label, but
## ! not the Subscript Number
## ! First version : keeps exact name
## ! Later : regular expression

type
  IGESSelect_SelectName* {.importcpp: "IGESSelect_SelectName",
                          header: "IGESSelect_SelectName.hxx", bycopy.} = object of IFSelect_SelectExtract ##
                                                                                                    ## !
                                                                                                    ## Creates
                                                                                                    ## an
                                                                                                    ## empty
                                                                                                    ## SelectName
                                                                                                    ## :
                                                                                                    ## every
                                                                                                    ## entity
                                                                                                    ## is
                                                                                                    ## considered
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## good
                                                                                                    ## (no
                                                                                                    ## filter
                                                                                                    ## active)


proc constructIGESSelect_SelectName*(): IGESSelect_SelectName {.constructor,
    importcpp: "IGESSelect_SelectName(@)", header: "IGESSelect_SelectName.hxx".}
proc Sort*(this: IGESSelect_SelectName; rank: Standard_Integer;
          ent: handle[Standard_Transient]; model: handle[Interface_InterfaceModel]): Standard_Boolean {.
    noSideEffect, importcpp: "Sort", header: "IGESSelect_SelectName.hxx".}
proc SetName*(this: var IGESSelect_SelectName;
             name: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "IGESSelect_SelectName.hxx".}
proc Name*(this: IGESSelect_SelectName): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "IGESSelect_SelectName.hxx".}
proc ExtractLabel*(this: IGESSelect_SelectName): TCollection_AsciiString {.
    noSideEffect, importcpp: "ExtractLabel", header: "IGESSelect_SelectName.hxx".}
type
  IGESSelect_SelectNamebase_type* = IFSelect_SelectExtract

proc get_type_name*(): cstring {.importcpp: "IGESSelect_SelectName::get_type_name(@)",
                              header: "IGESSelect_SelectName.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSelect_SelectName::get_type_descriptor(@)",
    header: "IGESSelect_SelectName.hxx".}
proc DynamicType*(this: IGESSelect_SelectName): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSelect_SelectName.hxx".}