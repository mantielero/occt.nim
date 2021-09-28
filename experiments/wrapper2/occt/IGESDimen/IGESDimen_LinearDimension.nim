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
discard "forward decl of IGESDimen_LeaderArrow"
discard "forward decl of IGESDimen_WitnessLine"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESDimen_LinearDimension"
discard "forward decl of IGESDimen_LinearDimension"
type
  HandleC1C1* = Handle[IGESDimenLinearDimension]

## ! defines LinearDimension, Type <216> Form <0>
## ! in package IGESDimen
## ! Used for linear dimensioning

type
  IGESDimenLinearDimension* {.importcpp: "IGESDimen_LinearDimension",
                             header: "IGESDimen_LinearDimension.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESDimenLinearDimension*(): IGESDimenLinearDimension {.constructor,
    importcpp: "IGESDimen_LinearDimension(@)",
    header: "IGESDimen_LinearDimension.hxx".}
proc init*(this: var IGESDimenLinearDimension; aNote: Handle[IGESDimenGeneralNote];
          aLeader: Handle[IGESDimenLeaderArrow];
          anotherLeader: Handle[IGESDimenLeaderArrow];
          aWitness: Handle[IGESDimenWitnessLine];
          anotherWitness: Handle[IGESDimenWitnessLine]) {.importcpp: "Init",
    header: "IGESDimen_LinearDimension.hxx".}
proc setFormNumber*(this: var IGESDimenLinearDimension; form: cint) {.
    importcpp: "SetFormNumber", header: "IGESDimen_LinearDimension.hxx".}
proc note*(this: IGESDimenLinearDimension): Handle[IGESDimenGeneralNote] {.
    noSideEffect, importcpp: "Note", header: "IGESDimen_LinearDimension.hxx".}
proc firstLeader*(this: IGESDimenLinearDimension): Handle[IGESDimenLeaderArrow] {.
    noSideEffect, importcpp: "FirstLeader", header: "IGESDimen_LinearDimension.hxx".}
proc secondLeader*(this: IGESDimenLinearDimension): Handle[IGESDimenLeaderArrow] {.
    noSideEffect, importcpp: "SecondLeader",
    header: "IGESDimen_LinearDimension.hxx".}
proc hasFirstWitness*(this: IGESDimenLinearDimension): bool {.noSideEffect,
    importcpp: "HasFirstWitness", header: "IGESDimen_LinearDimension.hxx".}
proc firstWitness*(this: IGESDimenLinearDimension): Handle[IGESDimenWitnessLine] {.
    noSideEffect, importcpp: "FirstWitness",
    header: "IGESDimen_LinearDimension.hxx".}
proc hasSecondWitness*(this: IGESDimenLinearDimension): bool {.noSideEffect,
    importcpp: "HasSecondWitness", header: "IGESDimen_LinearDimension.hxx".}
proc secondWitness*(this: IGESDimenLinearDimension): Handle[IGESDimenWitnessLine] {.
    noSideEffect, importcpp: "SecondWitness",
    header: "IGESDimen_LinearDimension.hxx".}
type
  IGESDimenLinearDimensionbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESDimen_LinearDimension::get_type_name(@)",
                            header: "IGESDimen_LinearDimension.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDimen_LinearDimension::get_type_descriptor(@)",
    header: "IGESDimen_LinearDimension.hxx".}
proc dynamicType*(this: IGESDimenLinearDimension): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDimen_LinearDimension.hxx".}

























