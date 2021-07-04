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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Vec, Geom_Geometry,
  ../Standard/Standard_Real

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_VectorWithNullMagnitude"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_Vector"
discard "forward decl of Geom_Vector"
type
  Handle_Geom_Vector* = handle[Geom_Vector]

## ! The abstract class Vector describes the common
## ! behavior of vectors in 3D space.
## ! The Geom package provides two concrete classes of
## ! vectors: Geom_Direction (unit vector) and Geom_VectorWithMagnitude.

type
  Geom_Vector* {.importcpp: "Geom_Vector", header: "Geom_Vector.hxx", bycopy.} = object of Geom_Geometry ##
                                                                                               ## !
                                                                                               ## Reverses
                                                                                               ## the
                                                                                               ## vector
                                                                                               ## <me>.
    opencascade* {.importc: "opencascade".}: Standard_NODISCARD


proc Reverse*(this: var Geom_Vector) {.importcpp: "Reverse", header: "Geom_Vector.hxx".}
## !!!Ignored construct:  :: handle < Geom_Vector > [end of template] Reversed ( ) const ;
## Error: identifier expected, but got: ::!!!

proc Angle*(this: Geom_Vector; Other: handle[Geom_Vector]): Standard_Real {.
    noSideEffect, importcpp: "Angle", header: "Geom_Vector.hxx".}
proc AngleWithRef*(this: Geom_Vector; Other: handle[Geom_Vector];
                  VRef: handle[Geom_Vector]): Standard_Real {.noSideEffect,
    importcpp: "AngleWithRef", header: "Geom_Vector.hxx".}
proc Coord*(this: Geom_Vector; X: var Standard_Real; Y: var Standard_Real;
           Z: var Standard_Real) {.noSideEffect, importcpp: "Coord",
                                header: "Geom_Vector.hxx".}
proc Magnitude*(this: Geom_Vector): Standard_Real {.noSideEffect,
    importcpp: "Magnitude", header: "Geom_Vector.hxx".}
proc SquareMagnitude*(this: Geom_Vector): Standard_Real {.noSideEffect,
    importcpp: "SquareMagnitude", header: "Geom_Vector.hxx".}
proc X*(this: Geom_Vector): Standard_Real {.noSideEffect, importcpp: "X",
                                        header: "Geom_Vector.hxx".}
proc Y*(this: Geom_Vector): Standard_Real {.noSideEffect, importcpp: "Y",
                                        header: "Geom_Vector.hxx".}
proc Z*(this: Geom_Vector): Standard_Real {.noSideEffect, importcpp: "Z",
                                        header: "Geom_Vector.hxx".}
proc Cross*(this: var Geom_Vector; Other: handle[Geom_Vector]) {.importcpp: "Cross",
    header: "Geom_Vector.hxx".}
proc Crossed*(this: Geom_Vector; Other: handle[Geom_Vector]): handle[Geom_Vector] {.
    noSideEffect, importcpp: "Crossed", header: "Geom_Vector.hxx".}
proc CrossCross*(this: var Geom_Vector; V1: handle[Geom_Vector];
                V2: handle[Geom_Vector]) {.importcpp: "CrossCross",
    header: "Geom_Vector.hxx".}
proc CrossCrossed*(this: Geom_Vector; V1: handle[Geom_Vector];
                  V2: handle[Geom_Vector]): handle[Geom_Vector] {.noSideEffect,
    importcpp: "CrossCrossed", header: "Geom_Vector.hxx".}
proc Dot*(this: Geom_Vector; Other: handle[Geom_Vector]): Standard_Real {.
    noSideEffect, importcpp: "Dot", header: "Geom_Vector.hxx".}
proc DotCross*(this: Geom_Vector; V1: handle[Geom_Vector]; V2: handle[Geom_Vector]): Standard_Real {.
    noSideEffect, importcpp: "DotCross", header: "Geom_Vector.hxx".}
proc Vec*(this: Geom_Vector): gp_Vec {.noSideEffect, importcpp: "Vec",
                                   header: "Geom_Vector.hxx".}
type
  Geom_Vectorbase_type* = Geom_Geometry

proc get_type_name*(): cstring {.importcpp: "Geom_Vector::get_type_name(@)",
                              header: "Geom_Vector.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom_Vector::get_type_descriptor(@)", header: "Geom_Vector.hxx".}
proc DynamicType*(this: Geom_Vector): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_Vector.hxx".}