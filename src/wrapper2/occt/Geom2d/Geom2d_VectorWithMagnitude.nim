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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of Geom2d_Vector"
discard "forward decl of gp_Trsf2d"
discard "forward decl of Geom2d_Geometry"
discard "forward decl of Geom2d_VectorWithMagnitude"
discard "forward decl of Geom2d_VectorWithMagnitude"
type
  HandleGeom2dVectorWithMagnitude* = Handle[Geom2dVectorWithMagnitude]

## ! Defines a vector with magnitude.
## ! A vector with magnitude can have a zero length.

type
  Geom2dVectorWithMagnitude* {.importcpp: "Geom2d_VectorWithMagnitude",
                              header: "Geom2d_VectorWithMagnitude.hxx", bycopy.} = object of Geom2dVector ##
                                                                                                   ## !
                                                                                                   ## Creates
                                                                                                   ## a
                                                                                                   ## persistent
                                                                                                   ## copy
                                                                                                   ## of
                                                                                                   ## V.
    opencascade* {.importc: "opencascade".}: StandardNODISCARD
    opencascade* {.importc: "opencascade".}: StandardNODISCARD
    opencascade* {.importc: "opencascade".}: StandardNODISCARD
    opencascade* {.importc: "opencascade".}: StandardNODISCARD
    opencascade* {.importc: "opencascade".}: StandardNODISCARD
    opencascade* {.importc: "opencascade".}: StandardNODISCARD
    opencascade* {.importc: "opencascade".}: StandardNODISCARD


proc constructGeom2dVectorWithMagnitude*(v: GpVec2d): Geom2dVectorWithMagnitude {.
    constructor, importcpp: "Geom2d_VectorWithMagnitude(@)",
    header: "Geom2d_VectorWithMagnitude.hxx".}
proc constructGeom2dVectorWithMagnitude*(x: StandardReal; y: StandardReal): Geom2dVectorWithMagnitude {.
    constructor, importcpp: "Geom2d_VectorWithMagnitude(@)",
    header: "Geom2d_VectorWithMagnitude.hxx".}
proc constructGeom2dVectorWithMagnitude*(p1: GpPnt2d; p2: GpPnt2d): Geom2dVectorWithMagnitude {.
    constructor, importcpp: "Geom2d_VectorWithMagnitude(@)",
    header: "Geom2d_VectorWithMagnitude.hxx".}
proc setCoord*(this: var Geom2dVectorWithMagnitude; x: StandardReal; y: StandardReal) {.
    importcpp: "SetCoord", header: "Geom2d_VectorWithMagnitude.hxx".}
proc setVec2d*(this: var Geom2dVectorWithMagnitude; v: GpVec2d) {.
    importcpp: "SetVec2d", header: "Geom2d_VectorWithMagnitude.hxx".}
proc setX*(this: var Geom2dVectorWithMagnitude; x: StandardReal) {.importcpp: "SetX",
    header: "Geom2d_VectorWithMagnitude.hxx".}
proc setY*(this: var Geom2dVectorWithMagnitude; y: StandardReal) {.importcpp: "SetY",
    header: "Geom2d_VectorWithMagnitude.hxx".}
proc magnitude*(this: Geom2dVectorWithMagnitude): StandardReal {.noSideEffect,
    importcpp: "Magnitude", header: "Geom2d_VectorWithMagnitude.hxx".}
proc squareMagnitude*(this: Geom2dVectorWithMagnitude): StandardReal {.noSideEffect,
    importcpp: "SquareMagnitude", header: "Geom2d_VectorWithMagnitude.hxx".}
proc add*(this: var Geom2dVectorWithMagnitude; other: Handle[Geom2dVector]) {.
    importcpp: "Add", header: "Geom2d_VectorWithMagnitude.hxx".}
proc `+=`*(this: var Geom2dVectorWithMagnitude; other: Handle[Geom2dVector]) {.
    importcpp: "(# += #)", header: "Geom2d_VectorWithMagnitude.hxx".}
## !!!Ignored construct:  :: handle < Geom2d_VectorWithMagnitude > [end of template] Added ( const opencascade :: handle < Geom2d_Vector > [end of template] & Other ) const ;
## Error: identifier expected, but got: ::!!!

## !!!Ignored construct:  :: handle < Geom2d_VectorWithMagnitude > [end of template] operator + ( const opencascade :: handle < Geom2d_Vector > [end of template] & Other ) const { return Added ( Other ) ; } ! Computes the cross product  between <me> and Other
## ! <me> ^ Other. A new vector is returned. Standard_Real Crossed ( const opencascade :: handle < Geom2d_Vector > [end of template] & Other ) const ;
## Error: identifier expected, but got: ::!!!

proc `^`*(this: Geom2dVectorWithMagnitude; other: Handle[Geom2dVector]): StandardReal {.
    noSideEffect, importcpp: "(# ^ #)", header: "Geom2d_VectorWithMagnitude.hxx".}
proc divide*(this: var Geom2dVectorWithMagnitude; scalar: StandardReal) {.
    importcpp: "Divide", header: "Geom2d_VectorWithMagnitude.hxx".}
proc `/=`*(this: var Geom2dVectorWithMagnitude; scalar: StandardReal) {.
    importcpp: "(# /= #)", header: "Geom2d_VectorWithMagnitude.hxx".}
## !!!Ignored construct:  :: handle < Geom2d_VectorWithMagnitude > [end of template] Divided ( const Standard_Real Scalar ) const ;
## Error: identifier expected, but got: ::!!!

## !!!Ignored construct:  :: handle < Geom2d_VectorWithMagnitude > [end of template] operator / ( const Standard_Real Scalar ) const { return Divided ( Scalar ) ; } ! Computes the product of the vector <me> by a scalar.
## ! A new vector is returned.
## !
## ! -C++: alias operator *
## ! Collision with same operator defined for the class Vector! Standard_NODISCARD opencascade :: handle < Geom2d_VectorWithMagnitude > [end of template] Multiplied ( const Standard_Real Scalar ) const ;
## Error: identifier expected, but got: ::!!!

proc multiply*(this: var Geom2dVectorWithMagnitude; scalar: StandardReal) {.
    importcpp: "Multiply", header: "Geom2d_VectorWithMagnitude.hxx".}
proc `*=`*(this: var Geom2dVectorWithMagnitude; scalar: StandardReal) {.
    importcpp: "(# *= #)", header: "Geom2d_VectorWithMagnitude.hxx".}
proc normalize*(this: var Geom2dVectorWithMagnitude) {.importcpp: "Normalize",
    header: "Geom2d_VectorWithMagnitude.hxx".}
## !!!Ignored construct:  :: handle < Geom2d_VectorWithMagnitude > [end of template] Normalized ( ) const ;
## Error: identifier expected, but got: ::!!!

proc subtract*(this: var Geom2dVectorWithMagnitude; other: Handle[Geom2dVector]) {.
    importcpp: "Subtract", header: "Geom2d_VectorWithMagnitude.hxx".}
proc `-=`*(this: var Geom2dVectorWithMagnitude; other: Handle[Geom2dVector]) {.
    importcpp: "(# -= #)", header: "Geom2d_VectorWithMagnitude.hxx".}
## !!!Ignored construct:  :: handle < Geom2d_VectorWithMagnitude > [end of template] Subtracted ( const opencascade :: handle < Geom2d_Vector > [end of template] & Other ) const ;
## Error: identifier expected, but got: ::!!!

## !!!Ignored construct:  :: handle < Geom2d_VectorWithMagnitude > [end of template] operator - ( const opencascade :: handle < Geom2d_Vector > [end of template] & Other ) const { return Subtracted ( Other ) ; } ! Applies the transformation T to this vector. void Transform ( const gp_Trsf2d & T ) ;
## Error: identifier expected, but got: ::!!!

proc copy*(this: Geom2dVectorWithMagnitude): Handle[Geom2dGeometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom2d_VectorWithMagnitude.hxx".}
type
  Geom2dVectorWithMagnitudebaseType* = Geom2dVector

proc getTypeName*(): cstring {.importcpp: "Geom2d_VectorWithMagnitude::get_type_name(@)",
                            header: "Geom2d_VectorWithMagnitude.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom2d_VectorWithMagnitude::get_type_descriptor(@)",
    header: "Geom2d_VectorWithMagnitude.hxx".}
proc dynamicType*(this: Geom2dVectorWithMagnitude): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Geom2d_VectorWithMagnitude.hxx".}

