##  Created on: 1996-10-11
##  Created by: Christian CAILLET
##  Copyright (c) 1996-1999 Matra Datavision
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
# when defined(Status):
#   discard
discard "forward decl of IGESSelect_SelectSubordinate"
discard "forward decl of IGESSelect_SelectSubordinate"
type
  HandleIGESSelectSelectSubordinate* = Handle[IGESSelectSelectSubordinate]

## ! This selections uses Subordinate Status as sort criterium
## ! It is an integer number which can be :
## ! 0 Independant
## ! 1 Physically Dependant
## ! 2 Logically Dependant
## ! 3 Both (recorded)
## ! + to sort :
## ! 4 : 1 or 3  ->  at least Physically
## ! 5 : 2 or 3  ->  at least Logically
## ! 6 : 1 or 2 or 3 -> any kind of dependance
## ! (corresponds to 0 reversed)

type
  IGESSelectSelectSubordinate* {.importcpp: "IGESSelect_SelectSubordinate",
                                header: "IGESSelect_SelectSubordinate.hxx", bycopy.} = object of IFSelectSelectExtract ##
                                                                                                                ## !
                                                                                                                ## Creates
                                                                                                                ## a
                                                                                                                ## SelectSubordinate
                                                                                                                ## with
                                                                                                                ## a
                                                                                                                ## status
                                                                                                                ## to
                                                                                                                ## be
                                                                                                                ## sorted


proc constructIGESSelectSelectSubordinate*(status: int): IGESSelectSelectSubordinate {.
    constructor, importcpp: "IGESSelect_SelectSubordinate(@)",
    header: "IGESSelect_SelectSubordinate.hxx".}
proc status*(this: IGESSelectSelectSubordinate): int {.noSideEffect,
    importcpp: "Status", header: "IGESSelect_SelectSubordinate.hxx".}
proc sort*(this: IGESSelectSelectSubordinate; rank: int;
          ent: Handle[StandardTransient]; model: Handle[InterfaceInterfaceModel]): bool {.
    noSideEffect, importcpp: "Sort", header: "IGESSelect_SelectSubordinate.hxx".}
proc extractLabel*(this: IGESSelectSelectSubordinate): TCollectionAsciiString {.
    noSideEffect, importcpp: "ExtractLabel",
    header: "IGESSelect_SelectSubordinate.hxx".}
type
  IGESSelectSelectSubordinatebaseType* = IFSelectSelectExtract

proc getTypeName*(): cstring {.importcpp: "IGESSelect_SelectSubordinate::get_type_name(@)",
                            header: "IGESSelect_SelectSubordinate.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSelect_SelectSubordinate::get_type_descriptor(@)",
    header: "IGESSelect_SelectSubordinate.hxx".}
proc dynamicType*(this: IGESSelectSelectSubordinate): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSelect_SelectSubordinate.hxx".}
