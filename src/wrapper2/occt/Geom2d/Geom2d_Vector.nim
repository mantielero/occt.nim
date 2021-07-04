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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Vec2d, Geom2d_Geometry,
  ../Standard/Standard_Real

discard "forward decl of Standard_DomainError"
discard "forward decl of gp_VectorWithNullMagnitude"
discard "forward decl of gp_Vec2d"
discard "forward decl of Geom2d_Vector"
discard "forward decl of Geom2d_Vector"
type
  Handle_Geom2d_Vector* = handle[Geom2d_Vector]

## ! The abstract class Vector describes the common
## ! behavior of vectors in 2D space.
## ! The Geom2d package provides two concrete
## ! classes of vectors: Geom2d_Direction (unit vector)
## ! and Geom2d_VectorWithMagnitude.

type
  Geom2d_Vector* {.importcpp: "Geom2d_Vector", header: "Geom2d_Vector.hxx", bycopy.} = object of Geom2d_Geometry ##
                                                                                                       ## !
                                                                                                       ## Reverses
                                                                                                       ## the
                                                                                                       ## vector
                                                                                                       ## <me>.
    opencascade* {.importc: "opencascade".}: Standard_NODISCARD


proc Reverse*(this: var Geom2d_Vector) {.importcpp: "Reverse",
                                     header: "Geom2d_Vector.hxx".}
## !!!Ignored construct:  :: handle < Geom2d_Vector > [end of template] Reversed ( ) const ;
## Error: identifier expected, but got: ::!!!

proc Angle*(this: Geom2d_Vector; Other: handle[Geom2d_Vector]): Standard_Real {.
    noSideEffect, importcpp: "Angle", header: "Geom2d_Vector.hxx".}
proc Coord*(this: Geom2d_Vector; X: var Standard_Real; Y: var Standard_Real) {.
    noSideEffect, importcpp: "Coord", header: "Geom2d_Vector.hxx".}
proc Magnitude*(this: Geom2d_Vector): Standard_Real {.noSideEffect,
    importcpp: "Magnitude", header: "Geom2d_Vector.hxx".}
proc SquareMagnitude*(this: Geom2d_Vector): Standard_Real {.noSideEffect,
    importcpp: "SquareMagnitude", header: "Geom2d_Vector.hxx".}
proc X*(this: Geom2d_Vector): Standard_Real {.noSideEffect, importcpp: "X",
    header: "Geom2d_Vector.hxx".}
proc Y*(this: Geom2d_Vector): Standard_Real {.noSideEffect, importcpp: "Y",
    header: "Geom2d_Vector.hxx".}
proc Crossed*(this: Geom2d_Vector; Other: handle[Geom2d_Vector]): Standard_Real {.
    noSideEffect, importcpp: "Crossed", header: "Geom2d_Vector.hxx".}
proc Dot*(this: Geom2d_Vector; Other: handle[Geom2d_Vector]): Standard_Real {.
    noSideEffect, importcpp: "Dot", header: "Geom2d_Vector.hxx".}
proc Vec2d*(this: Geom2d_Vector): gp_Vec2d {.noSideEffect, importcpp: "Vec2d",
    header: "Geom2d_Vector.hxx".}
type
  Geom2d_Vectorbase_type* = Geom2d_Geometry

proc get_type_name*(): cstring {.importcpp: "Geom2d_Vector::get_type_name(@)",
                              header: "Geom2d_Vector.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom2d_Vector::get_type_descriptor(@)",
    header: "Geom2d_Vector.hxx".}
proc DynamicType*(this: Geom2d_Vector): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom2d_Vector.hxx".}