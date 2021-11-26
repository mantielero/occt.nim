##  Created on: 1993-01-09
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
discard "forward decl of IGESDimen_LeaderArrow"
discard "forward decl of gp_XY"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESDimen_RadiusDimension"
discard "forward decl of IGESDimen_RadiusDimension"
type
  HandleC1C1* = Handle[IGESDimenRadiusDimension]

## ! Defines IGES Radius Dimension, type <222> Form <0, 1>,
## ! in package IGESDimen.
## ! A Radius Dimension Entity consists of a General Note, a
## ! leader, and an arc center point. A second form of this
## ! entity accounts for the occasional need to have two
## ! leader entities referenced.

type
  IGESDimenRadiusDimension* {.importcpp: "IGESDimen_RadiusDimension",
                             header: "IGESDimen_RadiusDimension.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESDimenRadiusDimension*(): IGESDimenRadiusDimension {.constructor,
    importcpp: "IGESDimen_RadiusDimension(@)",
    header: "IGESDimen_RadiusDimension.hxx".}
proc init*(this: var IGESDimenRadiusDimension; aNote: Handle[IGESDimenGeneralNote];
          anArrow: Handle[IGESDimenLeaderArrow]; arcCenter: Xy;
          anotherArrow: Handle[IGESDimenLeaderArrow]) {.importcpp: "Init",
    header: "IGESDimen_RadiusDimension.hxx".}
proc initForm*(this: var IGESDimenRadiusDimension; form: cint) {.
    importcpp: "InitForm", header: "IGESDimen_RadiusDimension.hxx".}
proc note*(this: IGESDimenRadiusDimension): Handle[IGESDimenGeneralNote] {.
    noSideEffect, importcpp: "Note", header: "IGESDimen_RadiusDimension.hxx".}
proc leader*(this: IGESDimenRadiusDimension): Handle[IGESDimenLeaderArrow] {.
    noSideEffect, importcpp: "Leader", header: "IGESDimen_RadiusDimension.hxx".}
proc center*(this: IGESDimenRadiusDimension): Pnt2d {.noSideEffect,
    importcpp: "Center", header: "IGESDimen_RadiusDimension.hxx".}
proc transformedCenter*(this: IGESDimenRadiusDimension): Pnt {.noSideEffect,
    importcpp: "TransformedCenter", header: "IGESDimen_RadiusDimension.hxx".}
proc hasLeader2*(this: IGESDimenRadiusDimension): bool {.noSideEffect,
    importcpp: "HasLeader2", header: "IGESDimen_RadiusDimension.hxx".}
proc leader2*(this: IGESDimenRadiusDimension): Handle[IGESDimenLeaderArrow] {.
    noSideEffect, importcpp: "Leader2", header: "IGESDimen_RadiusDimension.hxx".}
type
  IGESDimenRadiusDimensionbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESDimen_RadiusDimension::get_type_name(@)",
                            header: "IGESDimen_RadiusDimension.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDimen_RadiusDimension::get_type_descriptor(@)",
    header: "IGESDimen_RadiusDimension.hxx".}
proc dynamicType*(this: IGESDimenRadiusDimension): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDimen_RadiusDimension.hxx".}

























