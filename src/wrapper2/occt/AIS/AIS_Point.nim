##  Created on: 1995-08-09
##  Created by: Arnaud BOUZY
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Aspect/Aspect_TypeOfMarker, AIS_InteractiveObject

discard "forward decl of Geom_Point"
discard "forward decl of TopoDS_Vertex"
type
  AIS_Point* {.importcpp: "AIS_Point", header: "AIS_Point.hxx", bycopy.} = object of AIS_InteractiveObject ##
                                                                                                 ## !
                                                                                                 ## Initializes
                                                                                                 ## the
                                                                                                 ## point
                                                                                                 ## aComponent
                                                                                                 ## from
                                                                                                 ## which
                                                                                                 ## the
                                                                                                 ## point
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## datum
                                                                                                 ## will
                                                                                                 ## be
                                                                                                 ## built.

  AIS_Pointbase_type* = AIS_InteractiveObject

proc get_type_name*(): cstring {.importcpp: "AIS_Point::get_type_name(@)",
                              header: "AIS_Point.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AIS_Point::get_type_descriptor(@)", header: "AIS_Point.hxx".}
proc DynamicType*(this: AIS_Point): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_Point.hxx".}
proc constructAIS_Point*(aComponent: handle[Geom_Point]): AIS_Point {.constructor,
    importcpp: "AIS_Point(@)", header: "AIS_Point.hxx".}
proc Signature*(this: AIS_Point): Standard_Integer {.noSideEffect,
    importcpp: "Signature", header: "AIS_Point.hxx".}
proc Type*(this: AIS_Point): AIS_KindOfInteractive {.noSideEffect, importcpp: "Type",
    header: "AIS_Point.hxx".}
proc Component*(this: var AIS_Point): handle[Geom_Point] {.importcpp: "Component",
    header: "AIS_Point.hxx".}
proc SetComponent*(this: var AIS_Point; aComponent: handle[Geom_Point]) {.
    importcpp: "SetComponent", header: "AIS_Point.hxx".}
proc AcceptDisplayMode*(this: AIS_Point; aMode: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "AcceptDisplayMode", header: "AIS_Point.hxx".}
proc SetColor*(this: var AIS_Point; theColor: Quantity_Color) {.importcpp: "SetColor",
    header: "AIS_Point.hxx".}
proc UnsetColor*(this: var AIS_Point) {.importcpp: "UnsetColor",
                                    header: "AIS_Point.hxx".}
proc SetMarker*(this: var AIS_Point; aType: Aspect_TypeOfMarker) {.
    importcpp: "SetMarker", header: "AIS_Point.hxx".}
proc UnsetMarker*(this: var AIS_Point) {.importcpp: "UnsetMarker",
                                     header: "AIS_Point.hxx".}
proc HasMarker*(this: AIS_Point): Standard_Boolean {.noSideEffect,
    importcpp: "HasMarker", header: "AIS_Point.hxx".}
proc Vertex*(this: AIS_Point): TopoDS_Vertex {.noSideEffect, importcpp: "Vertex",
    header: "AIS_Point.hxx".}
discard "forward decl of AIS_Point"
type
  Handle_AIS_Point* = handle[AIS_Point]
