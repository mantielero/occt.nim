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
discard "forward decl of gp_Dir"
discard "forward decl of Geom_Vector"
discard "forward decl of gp_Trsf"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_Direction"
type
  HandleGeomDirection* = Handle[GeomDirection]

## ! The class Direction specifies a vector that is never null.
## ! It is a unit vector.

type
  GeomDirection* {.importcpp: "Geom_Direction", header: "Geom_Direction.hxx", bycopy.} = object of GeomVector ##
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


proc newGeomDirection*(x: cfloat; y: cfloat; z: cfloat): GeomDirection {.cdecl,
    constructor, importcpp: "Geom_Direction(@)", dynlib: tkmath.}
proc newGeomDirection*(v: Dir): GeomDirection {.cdecl, constructor,
    importcpp: "Geom_Direction(@)", dynlib: tkmath.}
proc setCoord*(this: var GeomDirection; x: cfloat; y: cfloat; z: cfloat) {.cdecl,
    importcpp: "SetCoord", dynlib: tkmath.}
proc setDir*(this: var GeomDirection; v: Dir) {.cdecl, importcpp: "SetDir",
    dynlib: tkmath.}
proc setX*(this: var GeomDirection; x: cfloat) {.cdecl, importcpp: "SetX", dynlib: tkmath.}
proc setY*(this: var GeomDirection; y: cfloat) {.cdecl, importcpp: "SetY", dynlib: tkmath.}
proc setZ*(this: var GeomDirection; z: cfloat) {.cdecl, importcpp: "SetZ", dynlib: tkmath.}
proc dir*(this: GeomDirection): Dir {.noSideEffect, cdecl, importcpp: "Dir",
                                  dynlib: tkmath.}
proc magnitude*(this: GeomDirection): cfloat {.noSideEffect, cdecl,
    importcpp: "Magnitude", dynlib: tkmath.}
proc squareMagnitude*(this: GeomDirection): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareMagnitude", dynlib: tkmath.}
proc cross*(this: var GeomDirection; other: Handle[GeomVector]) {.cdecl,
    importcpp: "Cross", dynlib: tkmath.}
proc crossCross*(this: var GeomDirection; v1: Handle[GeomVector];
                v2: Handle[GeomVector]) {.cdecl, importcpp: "CrossCross",
                                        dynlib: tkmath.}
proc crossed*(this: GeomDirection; other: Handle[GeomVector]): Handle[GeomVector] {.
    noSideEffect, cdecl, importcpp: "Crossed", dynlib: tkmath.}
proc crossCrossed*(this: GeomDirection; v1: Handle[GeomVector];
                  v2: Handle[GeomVector]): Handle[GeomVector] {.noSideEffect, cdecl,
    importcpp: "CrossCrossed", dynlib: tkmath.}
proc transform*(this: var GeomDirection; t: Trsf) {.cdecl, importcpp: "Transform",
    dynlib: tkmath.}
proc copy*(this: GeomDirection): Handle[GeomGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", dynlib: tkmath.}