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

import
  ../Standard/Standard, ../Standard/Standard_Type, Geom2d_Geometry,
  ../Standard/Standard_Real

discard "forward decl of gp_Pnt2d"
discard "forward decl of Geom2d_Point"
discard "forward decl of Geom2d_Point"
type
  Handle_Geom2d_Point* = handle[Geom2d_Point]

## ! The abstract class Point describes the common
## ! behavior of geometric points in 2D space.
## ! The Geom2d package also provides the concrete
## ! class Geom2d_CartesianPoint.

type
  Geom2d_Point* {.importcpp: "Geom2d_Point", header: "Geom2d_Point.hxx", bycopy.} = object of Geom2d_Geometry ##
                                                                                                    ## !
                                                                                                    ## returns
                                                                                                    ## the
                                                                                                    ## Coordinates
                                                                                                    ## of
                                                                                                    ## <me>.


proc Coord*(this: Geom2d_Point; X: var Standard_Real; Y: var Standard_Real) {.
    noSideEffect, importcpp: "Coord", header: "Geom2d_Point.hxx".}
proc Pnt2d*(this: Geom2d_Point): gp_Pnt2d {.noSideEffect, importcpp: "Pnt2d",
                                        header: "Geom2d_Point.hxx".}
proc X*(this: Geom2d_Point): Standard_Real {.noSideEffect, importcpp: "X",
    header: "Geom2d_Point.hxx".}
proc Y*(this: Geom2d_Point): Standard_Real {.noSideEffect, importcpp: "Y",
    header: "Geom2d_Point.hxx".}
proc Distance*(this: Geom2d_Point; Other: handle[Geom2d_Point]): Standard_Real {.
    noSideEffect, importcpp: "Distance", header: "Geom2d_Point.hxx".}
proc SquareDistance*(this: Geom2d_Point; Other: handle[Geom2d_Point]): Standard_Real {.
    noSideEffect, importcpp: "SquareDistance", header: "Geom2d_Point.hxx".}
proc DumpJson*(this: Geom2d_Point; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom2d_Point.hxx".}
type
  Geom2d_Pointbase_type* = Geom2d_Geometry

proc get_type_name*(): cstring {.importcpp: "Geom2d_Point::get_type_name(@)",
                              header: "Geom2d_Point.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom2d_Point::get_type_descriptor(@)", header: "Geom2d_Point.hxx".}
proc DynamicType*(this: Geom2d_Point): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom2d_Point.hxx".}