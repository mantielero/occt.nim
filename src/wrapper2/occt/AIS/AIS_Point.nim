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

  AIS_PointbaseType* = AIS_InteractiveObject

proc getTypeName*(): cstring {.importcpp: "AIS_Point::get_type_name(@)",
                            header: "AIS_Point.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AIS_Point::get_type_descriptor(@)", header: "AIS_Point.hxx".}
proc dynamicType*(this: AIS_Point): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_Point.hxx".}
proc constructAIS_Point*(aComponent: Handle[GeomPoint]): AIS_Point {.constructor,
    importcpp: "AIS_Point(@)", header: "AIS_Point.hxx".}
proc signature*(this: AIS_Point): StandardInteger {.noSideEffect,
    importcpp: "Signature", header: "AIS_Point.hxx".}
proc `type`*(this: AIS_Point): AIS_KindOfInteractive {.noSideEffect,
    importcpp: "Type", header: "AIS_Point.hxx".}
proc component*(this: var AIS_Point): Handle[GeomPoint] {.importcpp: "Component",
    header: "AIS_Point.hxx".}
proc setComponent*(this: var AIS_Point; aComponent: Handle[GeomPoint]) {.
    importcpp: "SetComponent", header: "AIS_Point.hxx".}
proc acceptDisplayMode*(this: AIS_Point; aMode: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "AcceptDisplayMode", header: "AIS_Point.hxx".}
proc setColor*(this: var AIS_Point; theColor: QuantityColor) {.importcpp: "SetColor",
    header: "AIS_Point.hxx".}
proc unsetColor*(this: var AIS_Point) {.importcpp: "UnsetColor",
                                    header: "AIS_Point.hxx".}
proc setMarker*(this: var AIS_Point; aType: AspectTypeOfMarker) {.
    importcpp: "SetMarker", header: "AIS_Point.hxx".}
proc unsetMarker*(this: var AIS_Point) {.importcpp: "UnsetMarker",
                                     header: "AIS_Point.hxx".}
proc hasMarker*(this: AIS_Point): StandardBoolean {.noSideEffect,
    importcpp: "HasMarker", header: "AIS_Point.hxx".}
proc vertex*(this: AIS_Point): TopoDS_Vertex {.noSideEffect, importcpp: "Vertex",
    header: "AIS_Point.hxx".}
discard "forward decl of AIS_Point"
type
  HandleAIS_Point* = Handle[AIS_Point]


