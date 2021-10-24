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


proc newGeom2dVectorWithMagnitude*(v: Vec2d): Geom2dVectorWithMagnitude {.cdecl,
    constructor, importcpp: "Geom2d_VectorWithMagnitude(@)", dynlib: tkg2d.}
proc newGeom2dVectorWithMagnitude*(x: cfloat; y: cfloat): Geom2dVectorWithMagnitude {.
    cdecl, constructor, importcpp: "Geom2d_VectorWithMagnitude(@)", dynlib: tkg2d.}
proc newGeom2dVectorWithMagnitude*(p1: Pnt2d; p2: Pnt2d): Geom2dVectorWithMagnitude {.
    cdecl, constructor, importcpp: "Geom2d_VectorWithMagnitude(@)", dynlib: tkg2d.}
proc setCoord*(this: var Geom2dVectorWithMagnitude; x: cfloat; y: cfloat) {.cdecl,
    importcpp: "SetCoord", dynlib: tkg2d.}
proc setVec2d*(this: var Geom2dVectorWithMagnitude; v: Vec2d) {.cdecl,
    importcpp: "SetVec2d", dynlib: tkg2d.}
proc setX*(this: var Geom2dVectorWithMagnitude; x: cfloat) {.cdecl, importcpp: "SetX",
    dynlib: tkg2d.}
proc setY*(this: var Geom2dVectorWithMagnitude; y: cfloat) {.cdecl, importcpp: "SetY",
    dynlib: tkg2d.}
proc magnitude*(this: Geom2dVectorWithMagnitude): cfloat {.noSideEffect, cdecl,
    importcpp: "Magnitude", dynlib: tkg2d.}
proc squareMagnitude*(this: Geom2dVectorWithMagnitude): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareMagnitude", dynlib: tkg2d.}
proc add*(this: var Geom2dVectorWithMagnitude; other: Handle[Geom2dVector]) {.cdecl,
    importcpp: "Add", dynlib: tkg2d.}
proc `+=`*(this: var Geom2dVectorWithMagnitude; other: Handle[Geom2dVector]) {.cdecl,
    importcpp: "(# += #)", dynlib: tkg2d.}
proc added*(this: Geom2dVectorWithMagnitude; other: Handle[Geom2dVector]): Handle[
    Geom2dVectorWithMagnitude] {.noSideEffect, cdecl, importcpp: "Added",
                                dynlib: tkg2d.}
proc `+`*(this: Geom2dVectorWithMagnitude; other: Handle[Geom2dVector]): Handle[
    Geom2dVectorWithMagnitude] {.noSideEffect, cdecl, importcpp: "(# + #)",
                                dynlib: tkg2d.}
proc crossed*(this: Geom2dVectorWithMagnitude; other: Handle[Geom2dVector]): cfloat {.
    noSideEffect, cdecl, importcpp: "Crossed", dynlib: tkg2d.}
proc `^`*(this: Geom2dVectorWithMagnitude; other: Handle[Geom2dVector]): cfloat {.
    noSideEffect, cdecl, importcpp: "(# ^ #)", dynlib: tkg2d.}
proc divide*(this: var Geom2dVectorWithMagnitude; scalar: cfloat) {.cdecl,
    importcpp: "Divide", dynlib: tkg2d.}
proc `/=`*(this: var Geom2dVectorWithMagnitude; scalar: cfloat) {.cdecl,
    importcpp: "(# /= #)", dynlib: tkg2d.}
proc divided*(this: Geom2dVectorWithMagnitude; scalar: cfloat): Handle[
    Geom2dVectorWithMagnitude] {.noSideEffect, cdecl, importcpp: "Divided",
                                dynlib: tkg2d.}
proc `/`*(this: Geom2dVectorWithMagnitude; scalar: cfloat): Handle[
    Geom2dVectorWithMagnitude] {.noSideEffect, cdecl, importcpp: "(# / #)",
                                dynlib: tkg2d.}
proc multiplied*(this: Geom2dVectorWithMagnitude; scalar: cfloat): Handle[
    Geom2dVectorWithMagnitude] {.noSideEffect, cdecl, importcpp: "Multiplied",
                                dynlib: tkg2d.}
proc multiply*(this: var Geom2dVectorWithMagnitude; scalar: cfloat) {.cdecl,
    importcpp: "Multiply", dynlib: tkg2d.}
proc `*=`*(this: var Geom2dVectorWithMagnitude; scalar: cfloat) {.cdecl,
    importcpp: "(# *= #)", dynlib: tkg2d.}
proc normalize*(this: var Geom2dVectorWithMagnitude) {.cdecl, importcpp: "Normalize",
    dynlib: tkg2d.}
proc normalized*(this: Geom2dVectorWithMagnitude): Handle[Geom2dVectorWithMagnitude] {.
    noSideEffect, cdecl, importcpp: "Normalized", dynlib: tkg2d.}
proc subtract*(this: var Geom2dVectorWithMagnitude; other: Handle[Geom2dVector]) {.
    cdecl, importcpp: "Subtract", dynlib: tkg2d.}
proc `-=`*(this: var Geom2dVectorWithMagnitude; other: Handle[Geom2dVector]) {.cdecl,
    importcpp: "(# -= #)", dynlib: tkg2d.}
proc subtracted*(this: Geom2dVectorWithMagnitude; other: Handle[Geom2dVector]): Handle[
    Geom2dVectorWithMagnitude] {.noSideEffect, cdecl, importcpp: "Subtracted",
                                dynlib: tkg2d.}
proc `-`*(this: Geom2dVectorWithMagnitude; other: Handle[Geom2dVector]): Handle[
    Geom2dVectorWithMagnitude] {.noSideEffect, cdecl, importcpp: "(# - #)",
                                dynlib: tkg2d.}
proc transform*(this: var Geom2dVectorWithMagnitude; t: Trsf2d) {.cdecl,
    importcpp: "Transform", dynlib: tkg2d.}
proc copy*(this: Geom2dVectorWithMagnitude): Handle[Geom2dGeometry] {.noSideEffect,
    cdecl, importcpp: "Copy", dynlib: tkg2d.}