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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_VectorWithNullMagnitude"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_Vector"
type
  HandleGeomVector* = Handle[GeomVector]

## ! The abstract class Vector describes the common
## ! behavior of vectors in 3D space.
## ! The Geom package provides two concrete classes of
## ! vectors: Geom_Direction (unit vector) and Geom_VectorWithMagnitude.

type
  GeomVector* {.importcpp: "Geom_Vector", header: "Geom_Vector.hxx", bycopy.} = object of GeomGeometry ##
                                                                                             ## !
                                                                                             ## Reverses
                                                                                             ## the
                                                                                             ## vector
                                                                                             ## <me>.


proc reverse*(this: var GeomVector) {.cdecl, importcpp: "Reverse", dynlib: tkmath.}
proc reversed*(this: GeomVector): Handle[GeomVector] {.noSideEffect, cdecl,
    importcpp: "Reversed", dynlib: tkmath.}
proc angle*(this: GeomVector; other: Handle[GeomVector]): cfloat {.noSideEffect, cdecl,
    importcpp: "Angle", dynlib: tkmath.}
proc angleWithRef*(this: GeomVector; other: Handle[GeomVector];
                  vRef: Handle[GeomVector]): cfloat {.noSideEffect, cdecl,
    importcpp: "AngleWithRef", dynlib: tkmath.}
proc coord*(this: GeomVector; x: var cfloat; y: var cfloat; z: var cfloat) {.noSideEffect,
    cdecl, importcpp: "Coord", dynlib: tkmath.}
proc magnitude*(this: GeomVector): cfloat {.noSideEffect, cdecl,
                                        importcpp: "Magnitude", dynlib: tkmath.}
proc squareMagnitude*(this: GeomVector): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareMagnitude", dynlib: tkmath.}
proc x*(this: GeomVector): cfloat {.noSideEffect, cdecl, importcpp: "X", dynlib: tkmath.}
proc y*(this: GeomVector): cfloat {.noSideEffect, cdecl, importcpp: "Y", dynlib: tkmath.}
proc z*(this: GeomVector): cfloat {.noSideEffect, cdecl, importcpp: "Z", dynlib: tkmath.}
proc cross*(this: var GeomVector; other: Handle[GeomVector]) {.cdecl,
    importcpp: "Cross", dynlib: tkmath.}
proc crossed*(this: GeomVector; other: Handle[GeomVector]): Handle[GeomVector] {.
    noSideEffect, cdecl, importcpp: "Crossed", dynlib: tkmath.}
proc crossCross*(this: var GeomVector; v1: Handle[GeomVector]; v2: Handle[GeomVector]) {.
    cdecl, importcpp: "CrossCross", dynlib: tkmath.}
proc crossCrossed*(this: GeomVector; v1: Handle[GeomVector]; v2: Handle[GeomVector]): Handle[
    GeomVector] {.noSideEffect, cdecl, importcpp: "CrossCrossed", dynlib: tkmath.}
proc dot*(this: GeomVector; other: Handle[GeomVector]): cfloat {.noSideEffect, cdecl,
    importcpp: "Dot", dynlib: tkmath.}
proc dotCross*(this: GeomVector; v1: Handle[GeomVector]; v2: Handle[GeomVector]): cfloat {.
    noSideEffect, cdecl, importcpp: "DotCross", dynlib: tkmath.}
proc vec*(this: GeomVector): Vec {.noSideEffect, cdecl, importcpp: "Vec", dynlib: tkmath.}