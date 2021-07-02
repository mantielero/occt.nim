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

discard "forward decl of IGESDimen_GeneralNote"
discard "forward decl of IGESDimen_WitnessLine"
discard "forward decl of IGESDimen_LeaderArrow"
discard "forward decl of IGESDimen_OrdinateDimension"
discard "forward decl of IGESDimen_OrdinateDimension"
type
  HandleIGESDimenOrdinateDimension* = Handle[IGESDimenOrdinateDimension]

## ! defines IGES Ordinate Dimension, Type <218> Form <0, 1>,
## ! in package IGESDimen
## ! Note   : The ordinate dimension entity is used to
## ! indicate dimensions from a common base line.
## ! Dimensioning is only permitted along the XT
## ! or YT axis.

type
  IGESDimenOrdinateDimension* {.importcpp: "IGESDimen_OrdinateDimension",
                               header: "IGESDimen_OrdinateDimension.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESDimenOrdinateDimension*(): IGESDimenOrdinateDimension {.
    constructor, importcpp: "IGESDimen_OrdinateDimension(@)",
    header: "IGESDimen_OrdinateDimension.hxx".}
proc init*(this: var IGESDimenOrdinateDimension;
          aNote: Handle[IGESDimenGeneralNote]; aType: StandardBoolean;
          aLine: Handle[IGESDimenWitnessLine];
          anArrow: Handle[IGESDimenLeaderArrow]) {.importcpp: "Init",
    header: "IGESDimen_OrdinateDimension.hxx".}
proc isLine*(this: IGESDimenOrdinateDimension): StandardBoolean {.noSideEffect,
    importcpp: "IsLine", header: "IGESDimen_OrdinateDimension.hxx".}
proc isLeader*(this: IGESDimenOrdinateDimension): StandardBoolean {.noSideEffect,
    importcpp: "IsLeader", header: "IGESDimen_OrdinateDimension.hxx".}
proc note*(this: IGESDimenOrdinateDimension): Handle[IGESDimenGeneralNote] {.
    noSideEffect, importcpp: "Note", header: "IGESDimen_OrdinateDimension.hxx".}
proc witnessLine*(this: IGESDimenOrdinateDimension): Handle[IGESDimenWitnessLine] {.
    noSideEffect, importcpp: "WitnessLine",
    header: "IGESDimen_OrdinateDimension.hxx".}
proc leader*(this: IGESDimenOrdinateDimension): Handle[IGESDimenLeaderArrow] {.
    noSideEffect, importcpp: "Leader", header: "IGESDimen_OrdinateDimension.hxx".}
type
  IGESDimenOrdinateDimensionbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESDimen_OrdinateDimension::get_type_name(@)",
                            header: "IGESDimen_OrdinateDimension.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDimen_OrdinateDimension::get_type_descriptor(@)",
    header: "IGESDimen_OrdinateDimension.hxx".}
proc dynamicType*(this: IGESDimenOrdinateDimension): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESDimen_OrdinateDimension.hxx".}

