##  Created on: 1993-03-09
##  Created by: JVC
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../Standard/Standard_Real

discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Trsf"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_Geometry"
type
  Handle_Geom_Geometry* = handle[Geom_Geometry]

## ! The abstract class Geometry for 3D space is the root
## ! class of all geometric objects from the Geom
## ! package. It describes the common behavior of these objects when:
## ! - applying geometric transformations to objects, and
## ! - constructing objects by geometric transformation (including copying).
## ! Warning
## ! Only transformations which do not modify the nature
## ! of the geometry can be applied to Geom objects: this
## ! is the case with translations, rotations, symmetries
## ! and scales; this is also the case with gp_Trsf
## ! composite transformations which are used to define
## ! the geometric transformations applied using the
## ! Transform or Transformed functions.
## ! Note: Geometry defines the "prototype" of the
## ! abstract method Transform which is defined for each
## ! concrete type of derived object. All other
## ! transformations are implemented using the Transform method.

type
  Geom_Geometry* {.importcpp: "Geom_Geometry", header: "Geom_Geometry.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                          ## !
                                                                                                          ## Performs
                                                                                                          ## the
                                                                                                          ## symmetrical
                                                                                                          ## transformation
                                                                                                          ## of
                                                                                                          ## a
                                                                                                          ## Geometry
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## with
                                                                                                          ## respect
                                                                                                          ## to
                                                                                                          ## the
                                                                                                          ## point
                                                                                                          ## P
                                                                                                          ## which
                                                                                                          ## is
                                                                                                          ## the
                                                                                                          ## center
                                                                                                          ## of
                                                                                                          ## the
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## symmetry.
    opencascade* {.importc: "opencascade".}: Standard_NODISCARD
    opencascade* {.importc: "opencascade".}: Standard_NODISCARD
    opencascade* {.importc: "opencascade".}: Standard_NODISCARD
    opencascade* {.importc: "opencascade".}: Standard_NODISCARD
    opencascade* {.importc: "opencascade".}: Standard_NODISCARD
    opencascade* {.importc: "opencascade".}: Standard_NODISCARD
    opencascade* {.importc: "opencascade".}: Standard_NODISCARD
    opencascade* {.importc: "opencascade".}: Standard_NODISCARD


proc Mirror*(this: var Geom_Geometry; P: gp_Pnt) {.importcpp: "Mirror",
    header: "Geom_Geometry.hxx".}
proc Mirror*(this: var Geom_Geometry; A1: gp_Ax1) {.importcpp: "Mirror",
    header: "Geom_Geometry.hxx".}
proc Mirror*(this: var Geom_Geometry; A2: gp_Ax2) {.importcpp: "Mirror",
    header: "Geom_Geometry.hxx".}
proc Rotate*(this: var Geom_Geometry; A1: gp_Ax1; Ang: Standard_Real) {.
    importcpp: "Rotate", header: "Geom_Geometry.hxx".}
proc Scale*(this: var Geom_Geometry; P: gp_Pnt; S: Standard_Real) {.importcpp: "Scale",
    header: "Geom_Geometry.hxx".}
proc Translate*(this: var Geom_Geometry; V: gp_Vec) {.importcpp: "Translate",
    header: "Geom_Geometry.hxx".}
proc Translate*(this: var Geom_Geometry; P1: gp_Pnt; P2: gp_Pnt) {.
    importcpp: "Translate", header: "Geom_Geometry.hxx".}
proc Transform*(this: var Geom_Geometry; T: gp_Trsf) {.importcpp: "Transform",
    header: "Geom_Geometry.hxx".}
## !!!Ignored construct:  :: handle < Geom_Geometry > [end of template] Mirrored ( const gp_Pnt & P ) const ;
## Error: identifier expected, but got: ::!!!

## !!!Ignored construct:  :: handle < Geom_Geometry > [end of template] Mirrored ( const gp_Ax1 & A1 ) const ;
## Error: identifier expected, but got: ::!!!

## !!!Ignored construct:  :: handle < Geom_Geometry > [end of template] Mirrored ( const gp_Ax2 & A2 ) const ;
## Error: identifier expected, but got: ::!!!

## !!!Ignored construct:  :: handle < Geom_Geometry > [end of template] Rotated ( const gp_Ax1 & A1 , const Standard_Real Ang ) const ;
## Error: identifier expected, but got: ::!!!

## !!!Ignored construct:  :: handle < Geom_Geometry > [end of template] Scaled ( const gp_Pnt & P , const Standard_Real S ) const ;
## Error: identifier expected, but got: ::!!!

## !!!Ignored construct:  :: handle < Geom_Geometry > [end of template] Transformed ( const gp_Trsf & T ) const ;
## Error: identifier expected, but got: ::!!!

## !!!Ignored construct:  :: handle < Geom_Geometry > [end of template] Translated ( const gp_Vec & V ) const ;
## Error: identifier expected, but got: ::!!!

## !!!Ignored construct:  :: handle < Geom_Geometry > [end of template] Translated ( const gp_Pnt & P1 , const gp_Pnt & P2 ) const ;
## Error: identifier expected, but got: ::!!!

proc Copy*(this: Geom_Geometry): handle[Geom_Geometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom_Geometry.hxx".}
proc DumpJson*(this: Geom_Geometry; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom_Geometry.hxx".}
type
  Geom_Geometrybase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Geom_Geometry::get_type_name(@)",
                              header: "Geom_Geometry.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom_Geometry::get_type_descriptor(@)",
    header: "Geom_Geometry.hxx".}
proc DynamicType*(this: Geom_Geometry): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_Geometry.hxx".}