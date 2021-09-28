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

discard "forward decl of IFSelect_IntParam"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IGESSelect_SelectLevelNumber"
discard "forward decl of IGESSelect_SelectLevelNumber"
type
  HandleC1C1* = Handle[IGESSelectSelectLevelNumber]

## ! This selection looks at Level Number of IGES Entities :
## ! it considers items attached, either to a single level with a
## ! given value, or to a level list which contains this value
## !
## ! Level = 0  means entities not attached to any level
## !
## ! Remark : the class CounterOfLevelNumber gives informations
## ! about present levels in a file.

type
  IGESSelectSelectLevelNumber* {.importcpp: "IGESSelect_SelectLevelNumber",
                                header: "IGESSelect_SelectLevelNumber.hxx", bycopy.} = object of IFSelectSelectExtract ##
                                                                                                                ## !
                                                                                                                ## Creates
                                                                                                                ## a
                                                                                                                ## SelectLevelNumber,
                                                                                                                ## with
                                                                                                                ## no
                                                                                                                ## Level
                                                                                                                ## criterium
                                                                                                                ## :
                                                                                                                ## see
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## SetLevelNumber.
                                                                                                                ## Empty,
                                                                                                                ## this
                                                                                                                ## selection
                                                                                                                ## filters
                                                                                                                ## nothing.


proc constructIGESSelectSelectLevelNumber*(): IGESSelectSelectLevelNumber {.
    constructor, importcpp: "IGESSelect_SelectLevelNumber(@)",
    header: "IGESSelect_SelectLevelNumber.hxx".}
proc setLevelNumber*(this: var IGESSelectSelectLevelNumber;
                    levnum: Handle[IFSelectIntParam]) {.
    importcpp: "SetLevelNumber", header: "IGESSelect_SelectLevelNumber.hxx".}
proc levelNumber*(this: IGESSelectSelectLevelNumber): Handle[IFSelectIntParam] {.
    noSideEffect, importcpp: "LevelNumber",
    header: "IGESSelect_SelectLevelNumber.hxx".}
proc sort*(this: IGESSelectSelectLevelNumber; rank: cint;
          ent: Handle[StandardTransient]; model: Handle[InterfaceInterfaceModel]): bool {.
    noSideEffect, importcpp: "Sort", header: "IGESSelect_SelectLevelNumber.hxx".}
proc extractLabel*(this: IGESSelectSelectLevelNumber): TCollectionAsciiString {.
    noSideEffect, importcpp: "ExtractLabel",
    header: "IGESSelect_SelectLevelNumber.hxx".}
type
  IGESSelectSelectLevelNumberbaseType* = IFSelectSelectExtract

proc getTypeName*(): cstring {.importcpp: "IGESSelect_SelectLevelNumber::get_type_name(@)",
                            header: "IGESSelect_SelectLevelNumber.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSelect_SelectLevelNumber::get_type_descriptor(@)",
    header: "IGESSelect_SelectLevelNumber.hxx".}
proc dynamicType*(this: IGESSelectSelectLevelNumber): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSelect_SelectLevelNumber.hxx".}

























