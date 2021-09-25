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


proc constructGeom2dCartesianPoint*(p: Pnt2d): Geom2dCartesianPoint {.constructor,
    importcpp: "Geom2d_CartesianPoint(@)", header: "Geom2d_CartesianPoint.hxx".}
proc constructGeom2dCartesianPoint*(x: float; y: float): Geom2dCartesianPoint {.
    constructor, importcpp: "Geom2d_CartesianPoint(@)",
    header: "Geom2d_CartesianPoint.hxx".}
proc setCoord*(this: var Geom2dCartesianPoint; x: float; y: float) {.
    importcpp: "SetCoord", header: "Geom2d_CartesianPoint.hxx".}
proc setPnt2d*(this: var Geom2dCartesianPoint; p: Pnt2d) {.importcpp: "SetPnt2d",
    header: "Geom2d_CartesianPoint.hxx".}
proc setX*(this: var Geom2dCartesianPoint; x: float) {.importcpp: "SetX",
    header: "Geom2d_CartesianPoint.hxx".}
proc setY*(this: var Geom2dCartesianPoint; y: float) {.importcpp: "SetY",
    header: "Geom2d_CartesianPoint.hxx".}
proc coord*(this: Geom2dCartesianPoint; x: var float; y: var float) {.noSideEffect,
    importcpp: "Coord", header: "Geom2d_CartesianPoint.hxx".}
proc pnt2d*(this: Geom2dCartesianPoint): Pnt2d {.noSideEffect, importcpp: "Pnt2d",
    header: "Geom2d_CartesianPoint.hxx".}
proc x*(this: Geom2dCartesianPoint): float {.noSideEffect, importcpp: "X",
    header: "Geom2d_CartesianPoint.hxx".}
proc y*(this: Geom2dCartesianPoint): float {.noSideEffect, importcpp: "Y",
    header: "Geom2d_CartesianPoint.hxx".}
proc transform*(this: var Geom2dCartesianPoint; t: Trsf2d) {.importcpp: "Transform",
    header: "Geom2d_CartesianPoint.hxx".}
proc copy*(this: Geom2dCartesianPoint): Handle[Geom2dGeometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom2d_CartesianPoint.hxx".}
proc dumpJson*(this: Geom2dCartesianPoint; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "Geom2d_CartesianPoint.hxx".}
type
  Geom2dCartesianPointbaseType* = Geom2dPoint

proc getTypeName*(): cstring {.importcpp: "Geom2d_CartesianPoint::get_type_name(@)",
                            header: "Geom2d_CartesianPoint.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom2d_CartesianPoint::get_type_descriptor(@)",
    header: "Geom2d_CartesianPoint.hxx".}
proc dynamicType*(this: Geom2dCartesianPoint): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom2d_CartesianPoint.hxx".}
