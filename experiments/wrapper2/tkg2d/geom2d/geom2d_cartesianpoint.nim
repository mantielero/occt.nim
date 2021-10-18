##  Created on: 1993-03-24
##  Created by: Philippe DAUTRY
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

discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of Geom2d_Geometry"
discard "forward decl of Geom2d_CartesianPoint"
type
  HandleGeom2dCartesianPoint* = Handle[Geom2dCartesianPoint]

## ! Describes a point in 2D space. A
## ! Geom2d_CartesianPoint is defined by a gp_Pnt2d
## ! point, with its two Cartesian coordinates X and Y.

type
  Geom2dCartesianPoint* {.importcpp: "Geom2d_CartesianPoint",
                         header: "Geom2d_CartesianPoint.hxx", bycopy.} = object of Geom2dPoint ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## a
                                                                                        ## persistent
                                                                                        ## copy
                                                                                        ## of
                                                                                        ## P.


proc newGeom2dCartesianPoint*(p: Pnt2d): Geom2dCartesianPoint {.cdecl, constructor,
    importcpp: "Geom2d_CartesianPoint(@)", dynlib: tkernel.}
proc newGeom2dCartesianPoint*(x: cfloat; y: cfloat): Geom2dCartesianPoint {.cdecl,
    constructor, importcpp: "Geom2d_CartesianPoint(@)", dynlib: tkernel.}
proc setCoord*(this: var Geom2dCartesianPoint; x: cfloat; y: cfloat) {.cdecl,
    importcpp: "SetCoord", dynlib: tkernel.}
proc setPnt2d*(this: var Geom2dCartesianPoint; p: Pnt2d) {.cdecl,
    importcpp: "SetPnt2d", dynlib: tkernel.}
proc setX*(this: var Geom2dCartesianPoint; x: cfloat) {.cdecl, importcpp: "SetX",
    dynlib: tkernel.}
proc setY*(this: var Geom2dCartesianPoint; y: cfloat) {.cdecl, importcpp: "SetY",
    dynlib: tkernel.}
proc coord*(this: Geom2dCartesianPoint; x: var cfloat; y: var cfloat) {.noSideEffect,
    cdecl, importcpp: "Coord", dynlib: tkernel.}
proc pnt2d*(this: Geom2dCartesianPoint): Pnt2d {.noSideEffect, cdecl,
    importcpp: "Pnt2d", dynlib: tkernel.}
proc x*(this: Geom2dCartesianPoint): cfloat {.noSideEffect, cdecl, importcpp: "X",
    dynlib: tkernel.}
proc y*(this: Geom2dCartesianPoint): cfloat {.noSideEffect, cdecl, importcpp: "Y",
    dynlib: tkernel.}
proc transform*(this: var Geom2dCartesianPoint; t: Trsf2d) {.cdecl,
    importcpp: "Transform", dynlib: tkernel.}
proc copy*(this: Geom2dCartesianPoint): Handle[Geom2dGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", dynlib: tkernel.}
proc dumpJson*(this: Geom2dCartesianPoint; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkernel.}