##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen ( SIVA )
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../IGESData/IGESData_IGESEntity

discard "forward decl of IGESDimen_GeneralNote"
discard "forward decl of IGESDimen_WitnessLine"
discard "forward decl of IGESDimen_LeaderArrow"
discard "forward decl of IGESDimen_OrdinateDimension"
discard "forward decl of IGESDimen_OrdinateDimension"
type
  Handle_IGESDimen_OrdinateDimension* = handle[IGESDimen_OrdinateDimension]

## ! defines IGES Ordinate Dimension, Type <218> Form <0, 1>,
## ! in package IGESDimen
## ! Note   : The ordinate dimension entity is used to
## ! indicate dimensions from a common base line.
## ! Dimensioning is only permitted along the XT
## ! or YT axis.

type
  IGESDimen_OrdinateDimension* {.importcpp: "IGESDimen_OrdinateDimension",
                                header: "IGESDimen_OrdinateDimension.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESDimen_OrdinateDimension*(): IGESDimen_OrdinateDimension {.
    constructor, importcpp: "IGESDimen_OrdinateDimension(@)",
    header: "IGESDimen_OrdinateDimension.hxx".}
proc Init*(this: var IGESDimen_OrdinateDimension;
          aNote: handle[IGESDimen_GeneralNote]; aType: Standard_Boolean;
          aLine: handle[IGESDimen_WitnessLine];
          anArrow: handle[IGESDimen_LeaderArrow]) {.importcpp: "Init",
    header: "IGESDimen_OrdinateDimension.hxx".}
proc IsLine*(this: IGESDimen_OrdinateDimension): Standard_Boolean {.noSideEffect,
    importcpp: "IsLine", header: "IGESDimen_OrdinateDimension.hxx".}
proc IsLeader*(this: IGESDimen_OrdinateDimension): Standard_Boolean {.noSideEffect,
    importcpp: "IsLeader", header: "IGESDimen_OrdinateDimension.hxx".}
proc Note*(this: IGESDimen_OrdinateDimension): handle[IGESDimen_GeneralNote] {.
    noSideEffect, importcpp: "Note", header: "IGESDimen_OrdinateDimension.hxx".}
proc WitnessLine*(this: IGESDimen_OrdinateDimension): handle[IGESDimen_WitnessLine] {.
    noSideEffect, importcpp: "WitnessLine",
    header: "IGESDimen_OrdinateDimension.hxx".}
proc Leader*(this: IGESDimen_OrdinateDimension): handle[IGESDimen_LeaderArrow] {.
    noSideEffect, importcpp: "Leader", header: "IGESDimen_OrdinateDimension.hxx".}
type
  IGESDimen_OrdinateDimensionbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESDimen_OrdinateDimension::get_type_name(@)",
                              header: "IGESDimen_OrdinateDimension.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDimen_OrdinateDimension::get_type_descriptor(@)",
    header: "IGESDimen_OrdinateDimension.hxx".}
proc DynamicType*(this: IGESDimen_OrdinateDimension): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESDimen_OrdinateDimension.hxx".}