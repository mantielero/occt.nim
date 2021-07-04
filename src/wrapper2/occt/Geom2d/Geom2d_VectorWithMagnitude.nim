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
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of Geom2d_Vector"
discard "forward decl of gp_Trsf2d"
discard "forward decl of Geom2d_Geometry"
discard "forward decl of Geom2d_VectorWithMagnitude"
discard "forward decl of Geom2d_VectorWithMagnitude"
type
  Handle_Geom2d_VectorWithMagnitude* = handle[Geom2d_VectorWithMagnitude]

## ! Defines a vector with magnitude.
## ! A vector with magnitude can have a zero length.

type
  Geom2d_VectorWithMagnitude* {.importcpp: "Geom2d_VectorWithMagnitude",
                               header: "Geom2d_VectorWithMagnitude.hxx", bycopy.} = object of Geom2d_Vector ##
                                                                                                     ## !
                                                                                                     ## Creates
                                                                                                     ## a
                                                                                                     ## persistent
                                                                                                     ## copy
                                                                                                     ## of
                                                                                                     ## V.
    opencascade* {.importc: "opencascade".}: Standard_NODISCARD
    opencascade* {.importc: "opencascade".}: Standard_NODISCARD
    opencascade* {.importc: "opencascade".}: Standard_NODISCARD
    opencascade* {.importc: "opencascade".}: Standard_NODISCARD
    opencascade* {.importc: "opencascade".}: Standard_NODISCARD
    opencascade* {.importc: "opencascade".}: Standard_NODISCARD
    opencascade* {.importc: "opencascade".}: Standard_NODISCARD


proc constructGeom2d_VectorWithMagnitude*(V: gp_Vec2d): Geom2d_VectorWithMagnitude {.
    constructor, importcpp: "Geom2d_VectorWithMagnitude(@)",
    header: "Geom2d_VectorWithMagnitude.hxx".}
proc constructGeom2d_VectorWithMagnitude*(X: Standard_Real; Y: Standard_Real): Geom2d_VectorWithMagnitude {.
    constructor, importcpp: "Geom2d_VectorWithMagnitude(@)",
    header: "Geom2d_VectorWithMagnitude.hxx".}
proc constructGeom2d_VectorWithMagnitude*(P1: gp_Pnt2d; P2: gp_Pnt2d): Geom2d_VectorWithMagnitude {.
    constructor, importcpp: "Geom2d_VectorWithMagnitude(@)",
    header: "Geom2d_VectorWithMagnitude.hxx".}
proc SetCoord*(this: var Geom2d_VectorWithMagnitude; X: Standard_Real;
              Y: Standard_Real) {.importcpp: "SetCoord",
                                header: "Geom2d_VectorWithMagnitude.hxx".}
proc SetVec2d*(this: var Geom2d_VectorWithMagnitude; V: gp_Vec2d) {.
    importcpp: "SetVec2d", header: "Geom2d_VectorWithMagnitude.hxx".}
proc SetX*(this: var Geom2d_VectorWithMagnitude; X: Standard_Real) {.
    importcpp: "SetX", header: "Geom2d_VectorWithMagnitude.hxx".}
proc SetY*(this: var Geom2d_VectorWithMagnitude; Y: Standard_Real) {.
    importcpp: "SetY", header: "Geom2d_VectorWithMagnitude.hxx".}
proc Magnitude*(this: Geom2d_VectorWithMagnitude): Standard_Real {.noSideEffect,
    importcpp: "Magnitude", header: "Geom2d_VectorWithMagnitude.hxx".}
proc SquareMagnitude*(this: Geom2d_VectorWithMagnitude): Standard_Real {.
    noSideEffect, importcpp: "SquareMagnitude",
    header: "Geom2d_VectorWithMagnitude.hxx".}
proc Add*(this: var Geom2d_VectorWithMagnitude; Other: handle[Geom2d_Vector]) {.
    importcpp: "Add", header: "Geom2d_VectorWithMagnitude.hxx".}
proc `+=`*(this: var Geom2d_VectorWithMagnitude; Other: handle[Geom2d_Vector]) {.
    importcpp: "(# += #)", header: "Geom2d_VectorWithMagnitude.hxx".}
## !!!Ignored construct:  :: handle < Geom2d_VectorWithMagnitude > [end of template] Added ( const opencascade :: handle < Geom2d_Vector > [end of template] & Other ) const ;
## Error: identifier expected, but got: ::!!!

## !!!Ignored construct:  :: handle < Geom2d_VectorWithMagnitude > [end of template] operator + ( const opencascade :: handle < Geom2d_Vector > [end of template] & Other ) const { return Added ( Other ) ; } ! Computes the cross product  between <me> and Other
## ! <me> ^ Other. A new vector is returned. Standard_Real Crossed ( const opencascade :: handle < Geom2d_Vector > [end of template] & Other ) const ;
## Error: identifier expected, but got: ::!!!

proc `^`*(this: Geom2d_VectorWithMagnitude; Other: handle[Geom2d_Vector]): Standard_Real {.
    noSideEffect, importcpp: "(# ^ #)", header: "Geom2d_VectorWithMagnitude.hxx".}
proc Divide*(this: var Geom2d_VectorWithMagnitude; Scalar: Standard_Real) {.
    importcpp: "Divide", header: "Geom2d_VectorWithMagnitude.hxx".}
proc `/=`*(this: var Geom2d_VectorWithMagnitude; Scalar: Standard_Real) {.
    importcpp: "(# /= #)", header: "Geom2d_VectorWithMagnitude.hxx".}
## !!!Ignored construct:  :: handle < Geom2d_VectorWithMagnitude > [end of template] Divided ( const Standard_Real Scalar ) const ;
## Error: identifier expected, but got: ::!!!

## !!!Ignored construct:  :: handle < Geom2d_VectorWithMagnitude > [end of template] operator / ( const Standard_Real Scalar ) const { return Divided ( Scalar ) ; } ! Computes the product of the vector <me> by a scalar.
## ! A new vector is returned.
## !
## ! -C++: alias operator *
## ! Collision with same operator defined for the class Vector! Standard_NODISCARD opencascade :: handle < Geom2d_VectorWithMagnitude > [end of template] Multiplied ( const Standard_Real Scalar ) const ;
## Error: identifier expected, but got: ::!!!

proc Multiply*(this: var Geom2d_VectorWithMagnitude; Scalar: Standard_Real) {.
    importcpp: "Multiply", header: "Geom2d_VectorWithMagnitude.hxx".}
proc `*=`*(this: var Geom2d_VectorWithMagnitude; Scalar: Standard_Real) {.
    importcpp: "(# *= #)", header: "Geom2d_VectorWithMagnitude.hxx".}
proc Normalize*(this: var Geom2d_VectorWithMagnitude) {.importcpp: "Normalize",
    header: "Geom2d_VectorWithMagnitude.hxx".}
## !!!Ignored construct:  :: handle < Geom2d_VectorWithMagnitude > [end of template] Normalized ( ) const ;
## Error: identifier expected, but got: ::!!!

proc Subtract*(this: var Geom2d_VectorWithMagnitude; Other: handle[Geom2d_Vector]) {.
    importcpp: "Subtract", header: "Geom2d_VectorWithMagnitude.hxx".}
proc `-=`*(this: var Geom2d_VectorWithMagnitude; Other: handle[Geom2d_Vector]) {.
    importcpp: "(# -= #)", header: "Geom2d_VectorWithMagnitude.hxx".}
## !!!Ignored construct:  :: handle < Geom2d_VectorWithMagnitude > [end of template] Subtracted ( const opencascade :: handle < Geom2d_Vector > [end of template] & Other ) const ;
## Error: identifier expected, but got: ::!!!

## !!!Ignored construct:  :: handle < Geom2d_VectorWithMagnitude > [end of template] operator - ( const opencascade :: handle < Geom2d_Vector > [end of template] & Other ) const { return Subtracted ( Other ) ; } ! Applies the transformation T to this vector. void Transform ( const gp_Trsf2d & T ) ;
## Error: identifier expected, but got: ::!!!

proc Copy*(this: Geom2d_VectorWithMagnitude): handle[Geom2d_Geometry] {.
    noSideEffect, importcpp: "Copy", header: "Geom2d_VectorWithMagnitude.hxx".}
type
  Geom2d_VectorWithMagnitudebase_type* = Geom2d_Vector

proc get_type_name*(): cstring {.importcpp: "Geom2d_VectorWithMagnitude::get_type_name(@)",
                              header: "Geom2d_VectorWithMagnitude.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom2d_VectorWithMagnitude::get_type_descriptor(@)",
    header: "Geom2d_VectorWithMagnitude.hxx".}
proc DynamicType*(this: Geom2d_VectorWithMagnitude): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Geom2d_VectorWithMagnitude.hxx".}