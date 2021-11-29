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

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Trsf"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_CartesianPoint"
type
  HandleGeomCartesianPoint* = Handle[GeomCartesianPoint]

## ! Describes a point in 3D space. A
## ! Geom_CartesianPoint is defined by a gp_Pnt point,
## ! with its three Cartesian coordinates X, Y and Z.

type
  GeomCartesianPoint* {.importcpp: "Geom_CartesianPoint",
                       header: "Geom_CartesianPoint.hxx", bycopy.} = object of GeomPoint ##
                                                                                  ## !
                                                                                  ## Returns
                                                                                  ## a
                                                                                  ## transient
                                                                                  ## copy
                                                                                  ## of
                                                                                  ## P.


proc newGeomCartesianPoint*(p: Pnt): GeomCartesianPoint {.cdecl, constructor,
    importcpp: "Geom_CartesianPoint(@)", header: "Geom_CartesianPoint.hxx".}
proc newGeomCartesianPoint*(x: cfloat; y: cfloat; z: cfloat): GeomCartesianPoint {.
    cdecl, constructor, importcpp: "Geom_CartesianPoint(@)", header: "Geom_CartesianPoint.hxx".}
proc setCoord*(this: var GeomCartesianPoint; x: cfloat; y: cfloat; z: cfloat) {.cdecl,
    importcpp: "SetCoord", header: "Geom_CartesianPoint.hxx".}
proc setPnt*(this: var GeomCartesianPoint; p: Pnt) {.cdecl, importcpp: "SetPnt",
    header: "Geom_CartesianPoint.hxx".}
proc setX*(this: var GeomCartesianPoint; x: cfloat) {.cdecl, importcpp: "SetX",
    header: "Geom_CartesianPoint.hxx".}
proc setY*(this: var GeomCartesianPoint; y: cfloat) {.cdecl, importcpp: "SetY",
    header: "Geom_CartesianPoint.hxx".}
proc setZ*(this: var GeomCartesianPoint; z: cfloat) {.cdecl, importcpp: "SetZ",
    header: "Geom_CartesianPoint.hxx".}
proc coord*(this: GeomCartesianPoint; x: var cfloat; y: var cfloat; z: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Coord", header: "Geom_CartesianPoint.hxx".}
proc pnt*(this: GeomCartesianPoint): Pnt {.noSideEffect, cdecl, importcpp: "Pnt",
                                       header: "Geom_CartesianPoint.hxx".}
proc x*(this: GeomCartesianPoint): cfloat {.noSideEffect, cdecl, importcpp: "X",
                                        header: "Geom_CartesianPoint.hxx".}
proc y*(this: GeomCartesianPoint): cfloat {.noSideEffect, cdecl, importcpp: "Y",
                                        header: "Geom_CartesianPoint.hxx".}
proc z*(this: GeomCartesianPoint): cfloat {.noSideEffect, cdecl, importcpp: "Z",
                                        header: "Geom_CartesianPoint.hxx".}
proc transform*(this: var GeomCartesianPoint; t: Trsf) {.cdecl, importcpp: "Transform",
    header: "Geom_CartesianPoint.hxx".}
proc copy*(this: GeomCartesianPoint): Handle[GeomGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom_CartesianPoint.hxx".}