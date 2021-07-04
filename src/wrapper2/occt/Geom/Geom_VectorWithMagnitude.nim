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
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt"
discard "forward decl of Geom_Vector"
discard "forward decl of gp_Trsf"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_VectorWithMagnitude"
discard "forward decl of Geom_VectorWithMagnitude"
type
  Handle_Geom_VectorWithMagnitude* = handle[Geom_VectorWithMagnitude]

## ! Defines a vector with magnitude.
## ! A vector with magnitude can have a zero length.

type
  Geom_VectorWithMagnitude* {.importcpp: "Geom_VectorWithMagnitude",
                             header: "Geom_VectorWithMagnitude.hxx", bycopy.} = object of Geom_Vector ##
                                                                                               ## !
                                                                                               ## Creates
                                                                                               ## a
                                                                                               ## transient
                                                                                               ## copy
                                                                                               ## of
                                                                                               ## V.
    opencascade* {.importc: "opencascade".}: Standard_NODISCARD
    opencascade* {.importc: "opencascade".}: Standard_NODISCARD
    opencascade* {.importc: "opencascade".}: Standard_NODISCARD
    opencascade* {.importc: "opencascade".}: Standard_NODISCARD
    opencascade* {.importc: "opencascade".}: Standard_NODISCARD


proc constructGeom_VectorWithMagnitude*(V: gp_Vec): Geom_VectorWithMagnitude {.
    constructor, importcpp: "Geom_VectorWithMagnitude(@)",
    header: "Geom_VectorWithMagnitude.hxx".}
proc constructGeom_VectorWithMagnitude*(X: Standard_Real; Y: Standard_Real;
                                       Z: Standard_Real): Geom_VectorWithMagnitude {.
    constructor, importcpp: "Geom_VectorWithMagnitude(@)",
    header: "Geom_VectorWithMagnitude.hxx".}
proc constructGeom_VectorWithMagnitude*(P1: gp_Pnt; P2: gp_Pnt): Geom_VectorWithMagnitude {.
    constructor, importcpp: "Geom_VectorWithMagnitude(@)",
    header: "Geom_VectorWithMagnitude.hxx".}
proc SetCoord*(this: var Geom_VectorWithMagnitude; X: Standard_Real; Y: Standard_Real;
              Z: Standard_Real) {.importcpp: "SetCoord",
                                header: "Geom_VectorWithMagnitude.hxx".}
proc SetVec*(this: var Geom_VectorWithMagnitude; V: gp_Vec) {.importcpp: "SetVec",
    header: "Geom_VectorWithMagnitude.hxx".}
proc SetX*(this: var Geom_VectorWithMagnitude; X: Standard_Real) {.importcpp: "SetX",
    header: "Geom_VectorWithMagnitude.hxx".}
proc SetY*(this: var Geom_VectorWithMagnitude; Y: Standard_Real) {.importcpp: "SetY",
    header: "Geom_VectorWithMagnitude.hxx".}
proc SetZ*(this: var Geom_VectorWithMagnitude; Z: Standard_Real) {.importcpp: "SetZ",
    header: "Geom_VectorWithMagnitude.hxx".}
proc Magnitude*(this: Geom_VectorWithMagnitude): Standard_Real {.noSideEffect,
    importcpp: "Magnitude", header: "Geom_VectorWithMagnitude.hxx".}
proc SquareMagnitude*(this: Geom_VectorWithMagnitude): Standard_Real {.noSideEffect,
    importcpp: "SquareMagnitude", header: "Geom_VectorWithMagnitude.hxx".}
proc Add*(this: var Geom_VectorWithMagnitude; Other: handle[Geom_Vector]) {.
    importcpp: "Add", header: "Geom_VectorWithMagnitude.hxx".}
## !!!Ignored construct:  :: handle < Geom_VectorWithMagnitude > [end of template] Added ( const opencascade :: handle < Geom_Vector > [end of template] & Other ) const ;
## Error: identifier expected, but got: ::!!!

proc Cross*(this: var Geom_VectorWithMagnitude; Other: handle[Geom_Vector]) {.
    importcpp: "Cross", header: "Geom_VectorWithMagnitude.hxx".}
proc Crossed*(this: Geom_VectorWithMagnitude; Other: handle[Geom_Vector]): handle[
    Geom_Vector] {.noSideEffect, importcpp: "Crossed",
                  header: "Geom_VectorWithMagnitude.hxx".}
proc CrossCross*(this: var Geom_VectorWithMagnitude; V1: handle[Geom_Vector];
                V2: handle[Geom_Vector]) {.importcpp: "CrossCross",
    header: "Geom_VectorWithMagnitude.hxx".}
proc CrossCrossed*(this: Geom_VectorWithMagnitude; V1: handle[Geom_Vector];
                  V2: handle[Geom_Vector]): handle[Geom_Vector] {.noSideEffect,
    importcpp: "CrossCrossed", header: "Geom_VectorWithMagnitude.hxx".}
proc Divide*(this: var Geom_VectorWithMagnitude; Scalar: Standard_Real) {.
    importcpp: "Divide", header: "Geom_VectorWithMagnitude.hxx".}
## !!!Ignored construct:  :: handle < Geom_VectorWithMagnitude > [end of template] Divided ( const Standard_Real Scalar ) const ;
## Error: identifier expected, but got: ::!!!

## !!!Ignored construct:  :: handle < Geom_VectorWithMagnitude > [end of template] Multiplied ( const Standard_Real Scalar ) const ;
## Error: identifier expected, but got: ::!!!

proc Multiply*(this: var Geom_VectorWithMagnitude; Scalar: Standard_Real) {.
    importcpp: "Multiply", header: "Geom_VectorWithMagnitude.hxx".}
proc Normalize*(this: var Geom_VectorWithMagnitude) {.importcpp: "Normalize",
    header: "Geom_VectorWithMagnitude.hxx".}
## !!!Ignored construct:  :: handle < Geom_VectorWithMagnitude > [end of template] Normalized ( ) const ;
## Error: identifier expected, but got: ::!!!

proc Subtract*(this: var Geom_VectorWithMagnitude; Other: handle[Geom_Vector]) {.
    importcpp: "Subtract", header: "Geom_VectorWithMagnitude.hxx".}
## !!!Ignored construct:  :: handle < Geom_VectorWithMagnitude > [end of template] Subtracted ( const opencascade :: handle < Geom_Vector > [end of template] & Other ) const ;
## Error: identifier expected, but got: ::!!!

proc Transform*(this: var Geom_VectorWithMagnitude; T: gp_Trsf) {.
    importcpp: "Transform", header: "Geom_VectorWithMagnitude.hxx".}
proc Copy*(this: Geom_VectorWithMagnitude): handle[Geom_Geometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom_VectorWithMagnitude.hxx".}
type
  Geom_VectorWithMagnitudebase_type* = Geom_Vector

proc get_type_name*(): cstring {.importcpp: "Geom_VectorWithMagnitude::get_type_name(@)",
                              header: "Geom_VectorWithMagnitude.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom_VectorWithMagnitude::get_type_descriptor(@)",
    header: "Geom_VectorWithMagnitude.hxx".}
proc DynamicType*(this: Geom_VectorWithMagnitude): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Geom_VectorWithMagnitude.hxx".}