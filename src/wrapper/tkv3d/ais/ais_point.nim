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


proc newAIS_Point*(aComponent: Handle[GeomPoint]): AIS_Point {.cdecl, constructor,
    importcpp: "AIS_Point(@)", header: "AIS_Point.hxx".}
proc signature*(this: AIS_Point): cint {.noSideEffect, cdecl, importcpp: "Signature",
                                     header: "AIS_Point.hxx".}
proc `type`*(this: AIS_Point): AIS_KindOfInteractive {.noSideEffect, cdecl,
    importcpp: "Type", header: "AIS_Point.hxx".}
proc component*(this: var AIS_Point): Handle[GeomPoint] {.cdecl,
    importcpp: "Component", header: "AIS_Point.hxx".}
proc setComponent*(this: var AIS_Point; aComponent: Handle[GeomPoint]) {.cdecl,
    importcpp: "SetComponent", header: "AIS_Point.hxx".}
proc acceptDisplayMode*(this: AIS_Point; aMode: cint): bool {.noSideEffect, cdecl,
    importcpp: "AcceptDisplayMode", header: "AIS_Point.hxx".}
proc setColor*(this: var AIS_Point; theColor: QuantityColor) {.cdecl,
    importcpp: "SetColor", header: "AIS_Point.hxx".}
proc unsetColor*(this: var AIS_Point) {.cdecl, importcpp: "UnsetColor", header: "AIS_Point.hxx".}
proc setMarker*(this: var AIS_Point; aType: AspectTypeOfMarker) {.cdecl,
    importcpp: "SetMarker", header: "AIS_Point.hxx".}
proc unsetMarker*(this: var AIS_Point) {.cdecl, importcpp: "UnsetMarker", header: "AIS_Point.hxx".}
proc hasMarker*(this: AIS_Point): bool {.noSideEffect, cdecl, importcpp: "HasMarker",
                                     header: "AIS_Point.hxx".}
proc vertex*(this: AIS_Point): TopoDS_Vertex {.noSideEffect, cdecl,
    importcpp: "Vertex", header: "AIS_Point.hxx".}
type
  HandleAIS_Point* = Handle[AIS_Point]
