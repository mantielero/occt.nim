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

import
  ../Standard/Standard, ../Standard/Standard_Type, Geom_Geometry,
  ../Standard/Standard_Real

discard "forward decl of gp_Pnt"
discard "forward decl of Geom_Point"
discard "forward decl of Geom_Point"
type
  Handle_Geom_Point* = handle[Geom_Point]

## ! The abstract class Point describes the common
## ! behavior of geometric points in 3D space.
## ! The Geom package also provides the concrete class
## ! Geom_CartesianPoint.

type
  Geom_Point* {.importcpp: "Geom_Point", header: "Geom_Point.hxx", bycopy.} = object of Geom_Geometry ##
                                                                                            ## !
                                                                                            ## returns
                                                                                            ## the
                                                                                            ## Coordinates
                                                                                            ## of
                                                                                            ## <me>.


proc Coord*(this: Geom_Point; X: var Standard_Real; Y: var Standard_Real;
           Z: var Standard_Real) {.noSideEffect, importcpp: "Coord",
                                header: "Geom_Point.hxx".}
proc Pnt*(this: Geom_Point): gp_Pnt {.noSideEffect, importcpp: "Pnt",
                                  header: "Geom_Point.hxx".}
proc X*(this: Geom_Point): Standard_Real {.noSideEffect, importcpp: "X",
                                       header: "Geom_Point.hxx".}
proc Y*(this: Geom_Point): Standard_Real {.noSideEffect, importcpp: "Y",
                                       header: "Geom_Point.hxx".}
proc Z*(this: Geom_Point): Standard_Real {.noSideEffect, importcpp: "Z",
                                       header: "Geom_Point.hxx".}
proc Distance*(this: Geom_Point; Other: handle[Geom_Point]): Standard_Real {.
    noSideEffect, importcpp: "Distance", header: "Geom_Point.hxx".}
proc SquareDistance*(this: Geom_Point; Other: handle[Geom_Point]): Standard_Real {.
    noSideEffect, importcpp: "SquareDistance", header: "Geom_Point.hxx".}
type
  Geom_Pointbase_type* = Geom_Geometry

proc get_type_name*(): cstring {.importcpp: "Geom_Point::get_type_name(@)",
                              header: "Geom_Point.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom_Point::get_type_descriptor(@)", header: "Geom_Point.hxx".}
proc DynamicType*(this: Geom_Point): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_Point.hxx".}