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
  ../Standard/Standard, ../Standard/Standard_Type, Geom_Vector,
  ../Standard/Standard_Real

discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Dir"
discard "forward decl of Geom_Vector"
discard "forward decl of gp_Trsf"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_Direction"
discard "forward decl of Geom_Direction"
type
  Handle_Geom_Direction* = handle[Geom_Direction]

## ! The class Direction specifies a vector that is never null.
## ! It is a unit vector.

type
  Geom_Direction* {.importcpp: "Geom_Direction", header: "Geom_Direction.hxx", bycopy.} = object of Geom_Vector ##
                                                                                                      ## !
                                                                                                      ## Creates
                                                                                                      ## a
                                                                                                      ## unit
                                                                                                      ## vector
                                                                                                      ## with
                                                                                                      ## it
                                                                                                      ## 3
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
                                                                                                      ## Y*Y
                                                                                                      ## +
                                                                                                      ## Z*Z)
                                                                                                      ## <=
                                                                                                      ## Resolution
                                                                                                      ## from
                                                                                                      ## gp.


proc constructGeom_Direction*(X: Standard_Real; Y: Standard_Real; Z: Standard_Real): Geom_Direction {.
    constructor, importcpp: "Geom_Direction(@)", header: "Geom_Direction.hxx".}
proc constructGeom_Direction*(V: gp_Dir): Geom_Direction {.constructor,
    importcpp: "Geom_Direction(@)", header: "Geom_Direction.hxx".}
proc SetCoord*(this: var Geom_Direction; X: Standard_Real; Y: Standard_Real;
              Z: Standard_Real) {.importcpp: "SetCoord",
                                header: "Geom_Direction.hxx".}
proc SetDir*(this: var Geom_Direction; V: gp_Dir) {.importcpp: "SetDir",
    header: "Geom_Direction.hxx".}
proc SetX*(this: var Geom_Direction; X: Standard_Real) {.importcpp: "SetX",
    header: "Geom_Direction.hxx".}
proc SetY*(this: var Geom_Direction; Y: Standard_Real) {.importcpp: "SetY",
    header: "Geom_Direction.hxx".}
proc SetZ*(this: var Geom_Direction; Z: Standard_Real) {.importcpp: "SetZ",
    header: "Geom_Direction.hxx".}
proc Dir*(this: Geom_Direction): gp_Dir {.noSideEffect, importcpp: "Dir",
                                      header: "Geom_Direction.hxx".}
proc Magnitude*(this: Geom_Direction): Standard_Real {.noSideEffect,
    importcpp: "Magnitude", header: "Geom_Direction.hxx".}
proc SquareMagnitude*(this: Geom_Direction): Standard_Real {.noSideEffect,
    importcpp: "SquareMagnitude", header: "Geom_Direction.hxx".}
proc Cross*(this: var Geom_Direction; Other: handle[Geom_Vector]) {.
    importcpp: "Cross", header: "Geom_Direction.hxx".}
proc CrossCross*(this: var Geom_Direction; V1: handle[Geom_Vector];
                V2: handle[Geom_Vector]) {.importcpp: "CrossCross",
    header: "Geom_Direction.hxx".}
proc Crossed*(this: Geom_Direction; Other: handle[Geom_Vector]): handle[Geom_Vector] {.
    noSideEffect, importcpp: "Crossed", header: "Geom_Direction.hxx".}
proc CrossCrossed*(this: Geom_Direction; V1: handle[Geom_Vector];
                  V2: handle[Geom_Vector]): handle[Geom_Vector] {.noSideEffect,
    importcpp: "CrossCrossed", header: "Geom_Direction.hxx".}
proc Transform*(this: var Geom_Direction; T: gp_Trsf) {.importcpp: "Transform",
    header: "Geom_Direction.hxx".}
proc Copy*(this: Geom_Direction): handle[Geom_Geometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom_Direction.hxx".}
type
  Geom_Directionbase_type* = Geom_Vector

proc get_type_name*(): cstring {.importcpp: "Geom_Direction::get_type_name(@)",
                              header: "Geom_Direction.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom_Direction::get_type_descriptor(@)",
    header: "Geom_Direction.hxx".}
proc DynamicType*(this: Geom_Direction): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_Direction.hxx".}