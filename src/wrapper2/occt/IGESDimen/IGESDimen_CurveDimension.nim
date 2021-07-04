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
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Boolean

discard "forward decl of IGESDimen_GeneralNote"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESDimen_LeaderArrow"
discard "forward decl of IGESDimen_WitnessLine"
discard "forward decl of IGESDimen_CurveDimension"
discard "forward decl of IGESDimen_CurveDimension"
type
  Handle_IGESDimen_CurveDimension* = handle[IGESDimen_CurveDimension]

## ! defines CurveDimension, Type <204> Form <0>
## ! in package IGESDimen
## ! Used to dimension curves
## ! Consists of one tail segment of nonzero length
## ! beginning with an arrowhead and which serves to define
## ! the orientation

type
  IGESDimen_CurveDimension* {.importcpp: "IGESDimen_CurveDimension",
                             header: "IGESDimen_CurveDimension.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESDimen_CurveDimension*(): IGESDimen_CurveDimension {.constructor,
    importcpp: "IGESDimen_CurveDimension(@)",
    header: "IGESDimen_CurveDimension.hxx".}
proc Init*(this: var IGESDimen_CurveDimension; aNote: handle[IGESDimen_GeneralNote];
          aCurve: handle[IGESData_IGESEntity];
          anotherCurve: handle[IGESData_IGESEntity];
          aLeader: handle[IGESDimen_LeaderArrow];
          anotherLeader: handle[IGESDimen_LeaderArrow];
          aLine: handle[IGESDimen_WitnessLine];
          anotherLine: handle[IGESDimen_WitnessLine]) {.importcpp: "Init",
    header: "IGESDimen_CurveDimension.hxx".}
proc Note*(this: IGESDimen_CurveDimension): handle[IGESDimen_GeneralNote] {.
    noSideEffect, importcpp: "Note", header: "IGESDimen_CurveDimension.hxx".}
proc FirstCurve*(this: IGESDimen_CurveDimension): handle[IGESData_IGESEntity] {.
    noSideEffect, importcpp: "FirstCurve", header: "IGESDimen_CurveDimension.hxx".}
proc HasSecondCurve*(this: IGESDimen_CurveDimension): Standard_Boolean {.
    noSideEffect, importcpp: "HasSecondCurve",
    header: "IGESDimen_CurveDimension.hxx".}
proc SecondCurve*(this: IGESDimen_CurveDimension): handle[IGESData_IGESEntity] {.
    noSideEffect, importcpp: "SecondCurve", header: "IGESDimen_CurveDimension.hxx".}
proc FirstLeader*(this: IGESDimen_CurveDimension): handle[IGESDimen_LeaderArrow] {.
    noSideEffect, importcpp: "FirstLeader", header: "IGESDimen_CurveDimension.hxx".}
proc SecondLeader*(this: IGESDimen_CurveDimension): handle[IGESDimen_LeaderArrow] {.
    noSideEffect, importcpp: "SecondLeader", header: "IGESDimen_CurveDimension.hxx".}
proc HasFirstWitnessLine*(this: IGESDimen_CurveDimension): Standard_Boolean {.
    noSideEffect, importcpp: "HasFirstWitnessLine",
    header: "IGESDimen_CurveDimension.hxx".}
proc FirstWitnessLine*(this: IGESDimen_CurveDimension): handle[
    IGESDimen_WitnessLine] {.noSideEffect, importcpp: "FirstWitnessLine",
                            header: "IGESDimen_CurveDimension.hxx".}
proc HasSecondWitnessLine*(this: IGESDimen_CurveDimension): Standard_Boolean {.
    noSideEffect, importcpp: "HasSecondWitnessLine",
    header: "IGESDimen_CurveDimension.hxx".}
proc SecondWitnessLine*(this: IGESDimen_CurveDimension): handle[
    IGESDimen_WitnessLine] {.noSideEffect, importcpp: "SecondWitnessLine",
                            header: "IGESDimen_CurveDimension.hxx".}
type
  IGESDimen_CurveDimensionbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESDimen_CurveDimension::get_type_name(@)",
                              header: "IGESDimen_CurveDimension.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDimen_CurveDimension::get_type_descriptor(@)",
    header: "IGESDimen_CurveDimension.hxx".}
proc DynamicType*(this: IGESDimen_CurveDimension): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDimen_CurveDimension.hxx".}