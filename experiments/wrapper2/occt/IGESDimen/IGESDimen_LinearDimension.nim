##  Created on: 1993-01-13
##  Created by: CKY / Contract Toubro-Larsen ( Deepak PRABHU )
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean

discard "forward decl of IGESDimen_GeneralNote"
discard "forward decl of IGESDimen_LeaderArrow"
discard "forward decl of IGESDimen_WitnessLine"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESDimen_LinearDimension"
discard "forward decl of IGESDimen_LinearDimension"
type
  Handle_IGESDimen_LinearDimension* = handle[IGESDimen_LinearDimension]

## ! defines LinearDimension, Type <216> Form <0>
## ! in package IGESDimen
## ! Used for linear dimensioning

type
  IGESDimen_LinearDimension* {.importcpp: "IGESDimen_LinearDimension",
                              header: "IGESDimen_LinearDimension.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESDimen_LinearDimension*(): IGESDimen_LinearDimension {.
    constructor, importcpp: "IGESDimen_LinearDimension(@)",
    header: "IGESDimen_LinearDimension.hxx".}
proc Init*(this: var IGESDimen_LinearDimension;
          aNote: handle[IGESDimen_GeneralNote];
          aLeader: handle[IGESDimen_LeaderArrow];
          anotherLeader: handle[IGESDimen_LeaderArrow];
          aWitness: handle[IGESDimen_WitnessLine];
          anotherWitness: handle[IGESDimen_WitnessLine]) {.importcpp: "Init",
    header: "IGESDimen_LinearDimension.hxx".}
proc SetFormNumber*(this: var IGESDimen_LinearDimension; form: Standard_Integer) {.
    importcpp: "SetFormNumber", header: "IGESDimen_LinearDimension.hxx".}
proc Note*(this: IGESDimen_LinearDimension): handle[IGESDimen_GeneralNote] {.
    noSideEffect, importcpp: "Note", header: "IGESDimen_LinearDimension.hxx".}
proc FirstLeader*(this: IGESDimen_LinearDimension): handle[IGESDimen_LeaderArrow] {.
    noSideEffect, importcpp: "FirstLeader", header: "IGESDimen_LinearDimension.hxx".}
proc SecondLeader*(this: IGESDimen_LinearDimension): handle[IGESDimen_LeaderArrow] {.
    noSideEffect, importcpp: "SecondLeader",
    header: "IGESDimen_LinearDimension.hxx".}
proc HasFirstWitness*(this: IGESDimen_LinearDimension): Standard_Boolean {.
    noSideEffect, importcpp: "HasFirstWitness",
    header: "IGESDimen_LinearDimension.hxx".}
proc FirstWitness*(this: IGESDimen_LinearDimension): handle[IGESDimen_WitnessLine] {.
    noSideEffect, importcpp: "FirstWitness",
    header: "IGESDimen_LinearDimension.hxx".}
proc HasSecondWitness*(this: IGESDimen_LinearDimension): Standard_Boolean {.
    noSideEffect, importcpp: "HasSecondWitness",
    header: "IGESDimen_LinearDimension.hxx".}
proc SecondWitness*(this: IGESDimen_LinearDimension): handle[IGESDimen_WitnessLine] {.
    noSideEffect, importcpp: "SecondWitness",
    header: "IGESDimen_LinearDimension.hxx".}
type
  IGESDimen_LinearDimensionbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESDimen_LinearDimension::get_type_name(@)",
                              header: "IGESDimen_LinearDimension.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDimen_LinearDimension::get_type_descriptor(@)",
    header: "IGESDimen_LinearDimension.hxx".}
proc DynamicType*(this: IGESDimen_LinearDimension): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDimen_LinearDimension.hxx".}