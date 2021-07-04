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

discard "forward decl of IFSelect_IntParam"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IGESSelect_SelectLevelNumber"
discard "forward decl of IGESSelect_SelectLevelNumber"
type
  Handle_IGESSelect_SelectLevelNumber* = handle[IGESSelect_SelectLevelNumber]

## ! This selection looks at Level Number of IGES Entities :
## ! it considers items attached, either to a single level with a
## ! given value, or to a level list which contains this value
## !
## ! Level = 0  means entities not attached to any level
## !
## ! Remark : the class CounterOfLevelNumber gives informations
## ! about present levels in a file.

type
  IGESSelect_SelectLevelNumber* {.importcpp: "IGESSelect_SelectLevelNumber",
                                 header: "IGESSelect_SelectLevelNumber.hxx",
                                 bycopy.} = object of IFSelect_SelectExtract ## ! Creates a
                                                                        ## SelectLevelNumber, with no Level
                                                                        ## criterium : see
                                                                        ## !
                                                                        ## SetLevelNumber. Empty, this
                                                                        ## selection filters nothing.


proc constructIGESSelect_SelectLevelNumber*(): IGESSelect_SelectLevelNumber {.
    constructor, importcpp: "IGESSelect_SelectLevelNumber(@)",
    header: "IGESSelect_SelectLevelNumber.hxx".}
proc SetLevelNumber*(this: var IGESSelect_SelectLevelNumber;
                    levnum: handle[IFSelect_IntParam]) {.
    importcpp: "SetLevelNumber", header: "IGESSelect_SelectLevelNumber.hxx".}
proc LevelNumber*(this: IGESSelect_SelectLevelNumber): handle[IFSelect_IntParam] {.
    noSideEffect, importcpp: "LevelNumber",
    header: "IGESSelect_SelectLevelNumber.hxx".}
proc Sort*(this: IGESSelect_SelectLevelNumber; rank: Standard_Integer;
          ent: handle[Standard_Transient]; model: handle[Interface_InterfaceModel]): Standard_Boolean {.
    noSideEffect, importcpp: "Sort", header: "IGESSelect_SelectLevelNumber.hxx".}
proc ExtractLabel*(this: IGESSelect_SelectLevelNumber): TCollection_AsciiString {.
    noSideEffect, importcpp: "ExtractLabel",
    header: "IGESSelect_SelectLevelNumber.hxx".}
type
  IGESSelect_SelectLevelNumberbase_type* = IFSelect_SelectExtract

proc get_type_name*(): cstring {.importcpp: "IGESSelect_SelectLevelNumber::get_type_name(@)",
                              header: "IGESSelect_SelectLevelNumber.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSelect_SelectLevelNumber::get_type_descriptor(@)",
    header: "IGESSelect_SelectLevelNumber.hxx".}
proc DynamicType*(this: IGESSelect_SelectLevelNumber): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSelect_SelectLevelNumber.hxx".}