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
discard "forward decl of gp_Dir2d"
discard "forward decl of Geom2d_Vector"
discard "forward decl of gp_Trsf2d"
discard "forward decl of Geom2d_Geometry"
discard "forward decl of Geom2d_Direction"
type
  HandleGeom2dDirection* = Handle[Geom2dDirection]

## ! The class Direction specifies a vector that is never null.
## ! It is a unit vector.

type
  Geom2dDirection* {.importcpp: "Geom2d_Direction", header: "Geom2d_Direction.hxx",
                    bycopy.} = object of Geom2dVector ## ! Creates a unit vector with it 2 cartesian coordinates.
                                                 ## !
                                                 ## ! Raised if Sqrt( X*X + Y*Y) <= Resolution from gp.


proc newGeom2dDirection*(x: cfloat; y: cfloat): Geom2dDirection {.cdecl, constructor,
    importcpp: "Geom2d_Direction(@)", dynlib: tkernel.}
proc newGeom2dDirection*(v: Dir2d): Geom2dDirection {.cdecl, constructor,
    importcpp: "Geom2d_Direction(@)", dynlib: tkernel.}
proc setCoord*(this: var Geom2dDirection; x: cfloat; y: cfloat) {.cdecl,
    importcpp: "SetCoord", dynlib: tkernel.}
proc setDir2d*(this: var Geom2dDirection; v: Dir2d) {.cdecl, importcpp: "SetDir2d",
    dynlib: tkernel.}
proc setX*(this: var Geom2dDirection; x: cfloat) {.cdecl, importcpp: "SetX",
    dynlib: tkernel.}
proc setY*(this: var Geom2dDirection; y: cfloat) {.cdecl, importcpp: "SetY",
    dynlib: tkernel.}
proc dir2d*(this: Geom2dDirection): Dir2d {.noSideEffect, cdecl, importcpp: "Dir2d",
                                        dynlib: tkernel.}
proc magnitude*(this: Geom2dDirection): cfloat {.noSideEffect, cdecl,
    importcpp: "Magnitude", dynlib: tkernel.}
proc squareMagnitude*(this: Geom2dDirection): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareMagnitude", dynlib: tkernel.}
proc crossed*(this: Geom2dDirection; other: Handle[Geom2dVector]): cfloat {.
    noSideEffect, cdecl, importcpp: "Crossed", dynlib: tkernel.}
proc `^`*(this: Geom2dDirection; other: Handle[Geom2dVector]): cfloat {.noSideEffect,
    cdecl, importcpp: "(# ^ #)", dynlib: tkernel.}
proc transform*(this: var Geom2dDirection; t: Trsf2d) {.cdecl, importcpp: "Transform",
    dynlib: tkernel.}
proc copy*(this: Geom2dDirection): Handle[Geom2dGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", dynlib: tkernel.}