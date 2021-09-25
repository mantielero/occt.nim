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
discard "forward decl of IGESDimen_LeaderArrow"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESGeom_CircularArc"
discard "forward decl of IGESGeom_CompositeCurve"
discard "forward decl of IGESDimen_PointDimension"
discard "forward decl of IGESDimen_PointDimension"
type
  HandleIGESDimenPointDimension* = Handle[IGESDimenPointDimension]

## ! defines IGES Point Dimension, Type <220> Form <0>,
## ! in package IGESDimen
## ! A Point Dimension Entity consists of a leader, text, and
## ! an optional circle or hexagon enclosing the text
## ! IGES specs for this entity mention SimpleClosedPlanarCurve
## ! Entity(106/63)which is not listed in LIST.Text In the sequel
## ! we have ignored this & considered only the other two entity
## ! for representing the hexagon or circle enclosing the text.

type
  IGESDimenPointDimension* {.importcpp: "IGESDimen_PointDimension",
                            header: "IGESDimen_PointDimension.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESDimenPointDimension*(): IGESDimenPointDimension {.constructor,
    importcpp: "IGESDimen_PointDimension(@)",
    header: "IGESDimen_PointDimension.hxx".}
proc init*(this: var IGESDimenPointDimension; aNote: Handle[IGESDimenGeneralNote];
          anArrow: Handle[IGESDimenLeaderArrow]; aGeom: Handle[IGESDataIGESEntity]) {.
    importcpp: "Init", header: "IGESDimen_PointDimension.hxx".}
proc note*(this: IGESDimenPointDimension): Handle[IGESDimenGeneralNote] {.
    noSideEffect, importcpp: "Note", header: "IGESDimen_PointDimension.hxx".}
proc leaderArrow*(this: IGESDimenPointDimension): Handle[IGESDimenLeaderArrow] {.
    noSideEffect, importcpp: "LeaderArrow", header: "IGESDimen_PointDimension.hxx".}
proc geomCase*(this: IGESDimenPointDimension): int {.noSideEffect,
    importcpp: "GeomCase", header: "IGESDimen_PointDimension.hxx".}
proc geom*(this: IGESDimenPointDimension): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "Geom", header: "IGESDimen_PointDimension.hxx".}
proc circularArc*(this: IGESDimenPointDimension): Handle[IGESGeomCircularArc] {.
    noSideEffect, importcpp: "CircularArc", header: "IGESDimen_PointDimension.hxx".}
proc compositeCurve*(this: IGESDimenPointDimension): Handle[IGESGeomCompositeCurve] {.
    noSideEffect, importcpp: "CompositeCurve",
    header: "IGESDimen_PointDimension.hxx".}
type
  IGESDimenPointDimensionbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESDimen_PointDimension::get_type_name(@)",
                            header: "IGESDimen_PointDimension.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDimen_PointDimension::get_type_descriptor(@)",
    header: "IGESDimen_PointDimension.hxx".}
proc dynamicType*(this: IGESDimenPointDimension): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDimen_PointDimension.hxx".}
