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

discard "forward decl of IGESDimen_GeneralNote"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESDimen_LeaderArrow"
discard "forward decl of IGESDimen_WitnessLine"
discard "forward decl of IGESDimen_CurveDimension"
discard "forward decl of IGESDimen_CurveDimension"
type
  HandleIGESDimenCurveDimension* = Handle[IGESDimenCurveDimension]

## ! defines CurveDimension, Type <204> Form <0>
## ! in package IGESDimen
## ! Used to dimension curves
## ! Consists of one tail segment of nonzero length
## ! beginning with an arrowhead and which serves to define
## ! the orientation

type
  IGESDimenCurveDimension* {.importcpp: "IGESDimen_CurveDimension",
                            header: "IGESDimen_CurveDimension.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESDimenCurveDimension*(): IGESDimenCurveDimension {.constructor,
    importcpp: "IGESDimen_CurveDimension(@)",
    header: "IGESDimen_CurveDimension.hxx".}
proc init*(this: var IGESDimenCurveDimension; aNote: Handle[IGESDimenGeneralNote];
          aCurve: Handle[IGESDataIGESEntity];
          anotherCurve: Handle[IGESDataIGESEntity];
          aLeader: Handle[IGESDimenLeaderArrow];
          anotherLeader: Handle[IGESDimenLeaderArrow];
          aLine: Handle[IGESDimenWitnessLine];
          anotherLine: Handle[IGESDimenWitnessLine]) {.importcpp: "Init",
    header: "IGESDimen_CurveDimension.hxx".}
proc note*(this: IGESDimenCurveDimension): Handle[IGESDimenGeneralNote] {.
    noSideEffect, importcpp: "Note", header: "IGESDimen_CurveDimension.hxx".}
proc firstCurve*(this: IGESDimenCurveDimension): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "FirstCurve", header: "IGESDimen_CurveDimension.hxx".}
proc hasSecondCurve*(this: IGESDimenCurveDimension): bool {.noSideEffect,
    importcpp: "HasSecondCurve", header: "IGESDimen_CurveDimension.hxx".}
proc secondCurve*(this: IGESDimenCurveDimension): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "SecondCurve", header: "IGESDimen_CurveDimension.hxx".}
proc firstLeader*(this: IGESDimenCurveDimension): Handle[IGESDimenLeaderArrow] {.
    noSideEffect, importcpp: "FirstLeader", header: "IGESDimen_CurveDimension.hxx".}
proc secondLeader*(this: IGESDimenCurveDimension): Handle[IGESDimenLeaderArrow] {.
    noSideEffect, importcpp: "SecondLeader", header: "IGESDimen_CurveDimension.hxx".}
proc hasFirstWitnessLine*(this: IGESDimenCurveDimension): bool {.noSideEffect,
    importcpp: "HasFirstWitnessLine", header: "IGESDimen_CurveDimension.hxx".}
proc firstWitnessLine*(this: IGESDimenCurveDimension): Handle[IGESDimenWitnessLine] {.
    noSideEffect, importcpp: "FirstWitnessLine",
    header: "IGESDimen_CurveDimension.hxx".}
proc hasSecondWitnessLine*(this: IGESDimenCurveDimension): bool {.noSideEffect,
    importcpp: "HasSecondWitnessLine", header: "IGESDimen_CurveDimension.hxx".}
proc secondWitnessLine*(this: IGESDimenCurveDimension): Handle[IGESDimenWitnessLine] {.
    noSideEffect, importcpp: "SecondWitnessLine",
    header: "IGESDimen_CurveDimension.hxx".}
type
  IGESDimenCurveDimensionbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESDimen_CurveDimension::get_type_name(@)",
                            header: "IGESDimen_CurveDimension.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDimen_CurveDimension::get_type_descriptor(@)",
    header: "IGESDimen_CurveDimension.hxx".}
proc dynamicType*(this: IGESDimenCurveDimension): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDimen_CurveDimension.hxx".}
