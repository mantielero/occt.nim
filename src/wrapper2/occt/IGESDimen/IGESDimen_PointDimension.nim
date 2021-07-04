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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Integer

discard "forward decl of IGESDimen_GeneralNote"
discard "forward decl of IGESDimen_LeaderArrow"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESGeom_CircularArc"
discard "forward decl of IGESGeom_CompositeCurve"
discard "forward decl of IGESDimen_PointDimension"
discard "forward decl of IGESDimen_PointDimension"
type
  Handle_IGESDimen_PointDimension* = handle[IGESDimen_PointDimension]

## ! defines IGES Point Dimension, Type <220> Form <0>,
## ! in package IGESDimen
## ! A Point Dimension Entity consists of a leader, text, and
## ! an optional circle or hexagon enclosing the text
## ! IGES specs for this entity mention SimpleClosedPlanarCurve
## ! Entity(106/63)which is not listed in LIST.Text In the sequel
## ! we have ignored this & considered only the other two entity
## ! for representing the hexagon or circle enclosing the text.

type
  IGESDimen_PointDimension* {.importcpp: "IGESDimen_PointDimension",
                             header: "IGESDimen_PointDimension.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESDimen_PointDimension*(): IGESDimen_PointDimension {.constructor,
    importcpp: "IGESDimen_PointDimension(@)",
    header: "IGESDimen_PointDimension.hxx".}
proc Init*(this: var IGESDimen_PointDimension; aNote: handle[IGESDimen_GeneralNote];
          anArrow: handle[IGESDimen_LeaderArrow];
          aGeom: handle[IGESData_IGESEntity]) {.importcpp: "Init",
    header: "IGESDimen_PointDimension.hxx".}
proc Note*(this: IGESDimen_PointDimension): handle[IGESDimen_GeneralNote] {.
    noSideEffect, importcpp: "Note", header: "IGESDimen_PointDimension.hxx".}
proc LeaderArrow*(this: IGESDimen_PointDimension): handle[IGESDimen_LeaderArrow] {.
    noSideEffect, importcpp: "LeaderArrow", header: "IGESDimen_PointDimension.hxx".}
proc GeomCase*(this: IGESDimen_PointDimension): Standard_Integer {.noSideEffect,
    importcpp: "GeomCase", header: "IGESDimen_PointDimension.hxx".}
proc Geom*(this: IGESDimen_PointDimension): handle[IGESData_IGESEntity] {.
    noSideEffect, importcpp: "Geom", header: "IGESDimen_PointDimension.hxx".}
proc CircularArc*(this: IGESDimen_PointDimension): handle[IGESGeom_CircularArc] {.
    noSideEffect, importcpp: "CircularArc", header: "IGESDimen_PointDimension.hxx".}
proc CompositeCurve*(this: IGESDimen_PointDimension): handle[
    IGESGeom_CompositeCurve] {.noSideEffect, importcpp: "CompositeCurve",
                              header: "IGESDimen_PointDimension.hxx".}
type
  IGESDimen_PointDimensionbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESDimen_PointDimension::get_type_name(@)",
                              header: "IGESDimen_PointDimension.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDimen_PointDimension::get_type_descriptor(@)",
    header: "IGESDimen_PointDimension.hxx".}
proc DynamicType*(this: IGESDimen_PointDimension): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDimen_PointDimension.hxx".}