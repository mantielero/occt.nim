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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IGESSelect_SelectName"
discard "forward decl of IGESSelect_SelectName"
type
  HandleC1C1* = Handle[IGESSelectSelectName]

## ! Selects Entities which have a given name.
## ! Consider Property Name if present, else Short Label, but
## ! not the Subscript Number
## ! First version : keeps exact name
## ! Later : regular expression

type
  IGESSelectSelectName* {.importcpp: "IGESSelect_SelectName",
                         header: "IGESSelect_SelectName.hxx", bycopy.} = object of IFSelectSelectExtract ##
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


proc constructIGESSelectSelectName*(): IGESSelectSelectName {.constructor,
    importcpp: "IGESSelect_SelectName(@)", header: "IGESSelect_SelectName.hxx".}
proc sort*(this: IGESSelectSelectName; rank: cint; ent: Handle[StandardTransient];
          model: Handle[InterfaceInterfaceModel]): bool {.noSideEffect,
    importcpp: "Sort", header: "IGESSelect_SelectName.hxx".}
proc setName*(this: var IGESSelectSelectName; name: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetName", header: "IGESSelect_SelectName.hxx".}
proc name*(this: IGESSelectSelectName): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "IGESSelect_SelectName.hxx".}
proc extractLabel*(this: IGESSelectSelectName): TCollectionAsciiString {.
    noSideEffect, importcpp: "ExtractLabel", header: "IGESSelect_SelectName.hxx".}
type
  IGESSelectSelectNamebaseType* = IFSelectSelectExtract

proc getTypeName*(): cstring {.importcpp: "IGESSelect_SelectName::get_type_name(@)",
                            header: "IGESSelect_SelectName.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSelect_SelectName::get_type_descriptor(@)",
    header: "IGESSelect_SelectName.hxx".}
proc dynamicType*(this: IGESSelectSelectName): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSelect_SelectName.hxx".}

























