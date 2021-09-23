##  Created on: 1993-03-24
##  Created by: Philippe DAUTRY
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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Pnt2d, Geom2d_Point,
  ../Standard/Standard_Real

discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of Geom2d_Geometry"
discard "forward decl of Geom2d_CartesianPoint"
discard "forward decl of Geom2d_CartesianPoint"
type
  Handle_Geom2d_CartesianPoint* = handle[Geom2d_CartesianPoint]

## ! Describes a point in 2D space. A
## ! Geom2d_CartesianPoint is defined by a gp_Pnt2d
## ! point, with its two Cartesian coordinates X and Y.

type
  Geom2d_CartesianPoint* {.importcpp: "Geom2d_CartesianPoint",
                          header: "Geom2d_CartesianPoint.hxx", bycopy.} = object of Geom2d_Point ##
                                                                                          ## !
                                                                                          ## Returns
                                                                                          ## a
                                                                                          ## persistent
                                                                                          ## copy
                                                                                          ## of
                                                                                          ## P.


proc constructGeom2d_CartesianPoint*(P: gp_Pnt2d): Geom2d_CartesianPoint {.
    constructor, importcpp: "Geom2d_CartesianPoint(@)",
    header: "Geom2d_CartesianPoint.hxx".}
proc constructGeom2d_CartesianPoint*(X: Standard_Real; Y: Standard_Real): Geom2d_CartesianPoint {.
    constructor, importcpp: "Geom2d_CartesianPoint(@)",
    header: "Geom2d_CartesianPoint.hxx".}
proc SetCoord*(this: var Geom2d_CartesianPoint; X: Standard_Real; Y: Standard_Real) {.
    importcpp: "SetCoord", header: "Geom2d_CartesianPoint.hxx".}
proc SetPnt2d*(this: var Geom2d_CartesianPoint; P: gp_Pnt2d) {.importcpp: "SetPnt2d",
    header: "Geom2d_CartesianPoint.hxx".}
proc SetX*(this: var Geom2d_CartesianPoint; X: Standard_Real) {.importcpp: "SetX",
    header: "Geom2d_CartesianPoint.hxx".}
proc SetY*(this: var Geom2d_CartesianPoint; Y: Standard_Real) {.importcpp: "SetY",
    header: "Geom2d_CartesianPoint.hxx".}
proc Coord*(this: Geom2d_CartesianPoint; X: var Standard_Real; Y: var Standard_Real) {.
    noSideEffect, importcpp: "Coord", header: "Geom2d_CartesianPoint.hxx".}
proc Pnt2d*(this: Geom2d_CartesianPoint): gp_Pnt2d {.noSideEffect,
    importcpp: "Pnt2d", header: "Geom2d_CartesianPoint.hxx".}
proc X*(this: Geom2d_CartesianPoint): Standard_Real {.noSideEffect, importcpp: "X",
    header: "Geom2d_CartesianPoint.hxx".}
proc Y*(this: Geom2d_CartesianPoint): Standard_Real {.noSideEffect, importcpp: "Y",
    header: "Geom2d_CartesianPoint.hxx".}
proc Transform*(this: var Geom2d_CartesianPoint; T: gp_Trsf2d) {.
    importcpp: "Transform", header: "Geom2d_CartesianPoint.hxx".}
proc Copy*(this: Geom2d_CartesianPoint): handle[Geom2d_Geometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom2d_CartesianPoint.hxx".}
proc DumpJson*(this: Geom2d_CartesianPoint; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom2d_CartesianPoint.hxx".}
type
  Geom2d_CartesianPointbase_type* = Geom2d_Point

proc get_type_name*(): cstring {.importcpp: "Geom2d_CartesianPoint::get_type_name(@)",
                              header: "Geom2d_CartesianPoint.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom2d_CartesianPoint::get_type_descriptor(@)",
    header: "Geom2d_CartesianPoint.hxx".}
proc DynamicType*(this: Geom2d_CartesianPoint): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Geom2d_CartesianPoint.hxx".}