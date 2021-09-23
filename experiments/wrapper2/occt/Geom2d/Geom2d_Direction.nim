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
  ../Standard/Standard, ../Standard/Standard_Type, Geom2d_Vector,
  ../Standard/Standard_Real

discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Dir2d"
discard "forward decl of Geom2d_Vector"
discard "forward decl of gp_Trsf2d"
discard "forward decl of Geom2d_Geometry"
discard "forward decl of Geom2d_Direction"
discard "forward decl of Geom2d_Direction"
type
  Handle_Geom2d_Direction* = handle[Geom2d_Direction]

## ! The class Direction specifies a vector that is never null.
## ! It is a unit vector.

type
  Geom2d_Direction* {.importcpp: "Geom2d_Direction",
                     header: "Geom2d_Direction.hxx", bycopy.} = object of Geom2d_Vector ##
                                                                                 ## !
                                                                                 ## Creates
                                                                                 ## a
                                                                                 ## unit
                                                                                 ## vector
                                                                                 ## with
                                                                                 ## it
                                                                                 ## 2
                                                                                 ## cartesian
                                                                                 ## coordinates.
                                                                                 ##
                                                                                 ## !
                                                                                 ##
                                                                                 ## !
                                                                                 ## Raised
                                                                                 ## if
                                                                                 ## Sqrt(
                                                                                 ## X*X
                                                                                 ## +
                                                                                 ## Y*Y)
                                                                                 ## <=
                                                                                 ## Resolution
                                                                                 ## from
                                                                                 ## gp.


proc constructGeom2d_Direction*(X: Standard_Real; Y: Standard_Real): Geom2d_Direction {.
    constructor, importcpp: "Geom2d_Direction(@)", header: "Geom2d_Direction.hxx".}
proc constructGeom2d_Direction*(V: gp_Dir2d): Geom2d_Direction {.constructor,
    importcpp: "Geom2d_Direction(@)", header: "Geom2d_Direction.hxx".}
proc SetCoord*(this: var Geom2d_Direction; X: Standard_Real; Y: Standard_Real) {.
    importcpp: "SetCoord", header: "Geom2d_Direction.hxx".}
proc SetDir2d*(this: var Geom2d_Direction; V: gp_Dir2d) {.importcpp: "SetDir2d",
    header: "Geom2d_Direction.hxx".}
proc SetX*(this: var Geom2d_Direction; X: Standard_Real) {.importcpp: "SetX",
    header: "Geom2d_Direction.hxx".}
proc SetY*(this: var Geom2d_Direction; Y: Standard_Real) {.importcpp: "SetY",
    header: "Geom2d_Direction.hxx".}
proc Dir2d*(this: Geom2d_Direction): gp_Dir2d {.noSideEffect, importcpp: "Dir2d",
    header: "Geom2d_Direction.hxx".}
proc Magnitude*(this: Geom2d_Direction): Standard_Real {.noSideEffect,
    importcpp: "Magnitude", header: "Geom2d_Direction.hxx".}
proc SquareMagnitude*(this: Geom2d_Direction): Standard_Real {.noSideEffect,
    importcpp: "SquareMagnitude", header: "Geom2d_Direction.hxx".}
proc Crossed*(this: Geom2d_Direction; Other: handle[Geom2d_Vector]): Standard_Real {.
    noSideEffect, importcpp: "Crossed", header: "Geom2d_Direction.hxx".}
proc `^`*(this: Geom2d_Direction; Other: handle[Geom2d_Vector]): Standard_Real {.
    noSideEffect, importcpp: "(# ^ #)", header: "Geom2d_Direction.hxx".}
proc Transform*(this: var Geom2d_Direction; T: gp_Trsf2d) {.importcpp: "Transform",
    header: "Geom2d_Direction.hxx".}
proc Copy*(this: Geom2d_Direction): handle[Geom2d_Geometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom2d_Direction.hxx".}
type
  Geom2d_Directionbase_type* = Geom2d_Vector

proc get_type_name*(): cstring {.importcpp: "Geom2d_Direction::get_type_name(@)",
                              header: "Geom2d_Direction.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom2d_Direction::get_type_descriptor(@)",
    header: "Geom2d_Direction.hxx".}
proc DynamicType*(this: Geom2d_Direction): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom2d_Direction.hxx".}