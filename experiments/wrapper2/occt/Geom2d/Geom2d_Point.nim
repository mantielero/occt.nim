##  Created on: 1993-03-24
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

discard "forward decl of gp_Pnt2d"
discard "forward decl of Geom2d_Point"
discard "forward decl of Geom2d_Point"
type
  HandleC1C1* = Handle[Geom2dPoint]

## ! The abstract class Point describes the common
## ! behavior of geometric points in 2D space.
## ! The Geom2d package also provides the concrete
## ! class Geom2d_CartesianPoint.

type
  Geom2dPoint* {.importcpp: "Geom2d_Point", header: "Geom2d_Point.hxx", bycopy.} = object of Geom2dGeometry ##
                                                                                                  ## !
                                                                                                  ## returns
                                                                                                  ## the
                                                                                                  ## Coordinates
                                                                                                  ## of
                                                                                                  ## <me>.


proc coord*(this: Geom2dPoint; x: var StandardReal; y: var StandardReal) {.noSideEffect,
    importcpp: "Coord", header: "Geom2d_Point.hxx".}
proc pnt2d*(this: Geom2dPoint): Pnt2d {.noSideEffect, importcpp: "Pnt2d",
                                    header: "Geom2d_Point.hxx".}
proc x*(this: Geom2dPoint): StandardReal {.noSideEffect, importcpp: "X",
                                       header: "Geom2d_Point.hxx".}
proc y*(this: Geom2dPoint): StandardReal {.noSideEffect, importcpp: "Y",
                                       header: "Geom2d_Point.hxx".}
proc distance*(this: Geom2dPoint; other: Handle[Geom2dPoint]): StandardReal {.
    noSideEffect, importcpp: "Distance", header: "Geom2d_Point.hxx".}
proc squareDistance*(this: Geom2dPoint; other: Handle[Geom2dPoint]): StandardReal {.
    noSideEffect, importcpp: "SquareDistance", header: "Geom2d_Point.hxx".}
proc dumpJson*(this: Geom2dPoint; theOStream: var StandardOStream; theDepth: int = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "Geom2d_Point.hxx".}
type
  Geom2dPointbaseType* = Geom2dGeometry

proc getTypeName*(): cstring {.importcpp: "Geom2d_Point::get_type_name(@)",
                            header: "Geom2d_Point.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom2d_Point::get_type_descriptor(@)", header: "Geom2d_Point.hxx".}
proc dynamicType*(this: Geom2dPoint): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom2d_Point.hxx".}