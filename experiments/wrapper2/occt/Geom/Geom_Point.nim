##  Created on: 1993-03-10
##  Created by: JCV
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

discard "forward decl of gp_Pnt"
discard "forward decl of Geom_Point"
discard "forward decl of Geom_Point"
type
  HandleGeomPoint* = Handle[GeomPoint]

## ! The abstract class Point describes the common
## ! behavior of geometric points in 3D space.
## ! The Geom package also provides the concrete class
## ! Geom_CartesianPoint.

type
  GeomPoint* {.importcpp: "Geom_Point", header: "Geom_Point.hxx", bycopy.} = object of GeomGeometry ##
                                                                                          ## !
                                                                                          ## returns
                                                                                          ## the
                                                                                          ## Coordinates
                                                                                          ## of
                                                                                          ## <me>.


proc coord*(this: GeomPoint; x: var float; y: var float; z: var float) {.noSideEffect,
    importcpp: "Coord", header: "Geom_Point.hxx".}
proc pnt*(this: GeomPoint): Pnt {.noSideEffect, importcpp: "Pnt",
                              header: "Geom_Point.hxx".}
proc x*(this: GeomPoint): float {.noSideEffect, importcpp: "X",
                              header: "Geom_Point.hxx".}
proc y*(this: GeomPoint): float {.noSideEffect, importcpp: "Y",
                              header: "Geom_Point.hxx".}
proc z*(this: GeomPoint): float {.noSideEffect, importcpp: "Z",
                              header: "Geom_Point.hxx".}
proc distance*(this: GeomPoint; other: Handle[GeomPoint]): float {.noSideEffect,
    importcpp: "Distance", header: "Geom_Point.hxx".}
proc squareDistance*(this: GeomPoint; other: Handle[GeomPoint]): float {.noSideEffect,
    importcpp: "SquareDistance", header: "Geom_Point.hxx".}
type
  GeomPointbaseType* = GeomGeometry

proc getTypeName*(): cstring {.importcpp: "Geom_Point::get_type_name(@)",
                            header: "Geom_Point.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom_Point::get_type_descriptor(@)", header: "Geom_Point.hxx".}
proc dynamicType*(this: GeomPoint): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_Point.hxx".}
