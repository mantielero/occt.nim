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
discard "forward decl of gp_XY"
discard "forward decl of gp_Pnt2d"
discard "forward decl of IGESDimen_DiameterDimension"
discard "forward decl of IGESDimen_DiameterDimension"
type
  HandleC1C1* = Handle[IGESDimenDiameterDimension]

## ! defines DiameterDimension, Type <206> Form <0>
## ! in package IGESDimen
## ! Used for dimensioning diameters

type
  IGESDimenDiameterDimension* {.importcpp: "IGESDimen_DiameterDimension",
                               header: "IGESDimen_DiameterDimension.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESDimenDiameterDimension*(): IGESDimenDiameterDimension {.
    constructor, importcpp: "IGESDimen_DiameterDimension(@)",
    header: "IGESDimen_DiameterDimension.hxx".}
proc init*(this: var IGESDimenDiameterDimension;
          aNote: Handle[IGESDimenGeneralNote];
          aLeader: Handle[IGESDimenLeaderArrow];
          anotherLeader: Handle[IGESDimenLeaderArrow]; aCenter: Xy) {.
    importcpp: "Init", header: "IGESDimen_DiameterDimension.hxx".}
proc note*(this: IGESDimenDiameterDimension): Handle[IGESDimenGeneralNote] {.
    noSideEffect, importcpp: "Note", header: "IGESDimen_DiameterDimension.hxx".}
proc firstLeader*(this: IGESDimenDiameterDimension): Handle[IGESDimenLeaderArrow] {.
    noSideEffect, importcpp: "FirstLeader",
    header: "IGESDimen_DiameterDimension.hxx".}
proc hasSecondLeader*(this: IGESDimenDiameterDimension): bool {.noSideEffect,
    importcpp: "HasSecondLeader", header: "IGESDimen_DiameterDimension.hxx".}
proc secondLeader*(this: IGESDimenDiameterDimension): Handle[IGESDimenLeaderArrow] {.
    noSideEffect, importcpp: "SecondLeader",
    header: "IGESDimen_DiameterDimension.hxx".}
proc center*(this: IGESDimenDiameterDimension): Pnt2d {.noSideEffect,
    importcpp: "Center", header: "IGESDimen_DiameterDimension.hxx".}
proc transformedCenter*(this: IGESDimenDiameterDimension): Pnt2d {.noSideEffect,
    importcpp: "TransformedCenter", header: "IGESDimen_DiameterDimension.hxx".}
type
  IGESDimenDiameterDimensionbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESDimen_DiameterDimension::get_type_name(@)",
                            header: "IGESDimen_DiameterDimension.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDimen_DiameterDimension::get_type_descriptor(@)",
    header: "IGESDimen_DiameterDimension.hxx".}
proc dynamicType*(this: IGESDimenDiameterDimension): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESDimen_DiameterDimension.hxx".}

























