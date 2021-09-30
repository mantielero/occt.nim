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
discard "forward decl of Geom_CartesianPoint"
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
                                                                                  
type
  HandleGeomCartesianPoint* = Handle[GeomCartesianPoint]

## ! Describes a point in 3D space. A
## ! Geom_CartesianPoint is defined by a gp_Pnt point,
## ! with its three Cartesian coordinates X, Y and Z.

type
  GeomCartesianPointbaseType* = GeomPoint


proc constructGeomCartesianPoint*(p: Pnt): GeomCartesianPoint {.constructor,
    importcpp: "Geom_CartesianPoint(@)", header: "Geom_CartesianPoint.hxx".}
proc constructGeomCartesianPoint*(x: StandardReal; y: StandardReal; z: StandardReal): GeomCartesianPoint {.
    constructor, importcpp: "Geom_CartesianPoint(@)",
    header: "Geom_CartesianPoint.hxx".}
proc setCoord*(this: var GeomCartesianPoint; x: StandardReal; y: StandardReal;
              z: StandardReal) {.importcpp: "SetCoord",
                               header: "Geom_CartesianPoint.hxx".}
proc setPnt*(this: var GeomCartesianPoint; p: Pnt) {.importcpp: "SetPnt",
    header: "Geom_CartesianPoint.hxx".}
proc setX*(this: var GeomCartesianPoint; x: StandardReal) {.importcpp: "SetX",
    header: "Geom_CartesianPoint.hxx".}
proc setY*(this: var GeomCartesianPoint; y: StandardReal) {.importcpp: "SetY",
    header: "Geom_CartesianPoint.hxx".}
proc setZ*(this: var GeomCartesianPoint; z: StandardReal) {.importcpp: "SetZ",
    header: "Geom_CartesianPoint.hxx".}
proc coord*(this: GeomCartesianPoint; x: var StandardReal; y: var StandardReal;
           z: var StandardReal) {.noSideEffect, importcpp: "Coord",
                               header: "Geom_CartesianPoint.hxx".}
proc pnt*(this: GeomCartesianPoint): Pnt {.noSideEffect, importcpp: "Pnt",
                                       header: "Geom_CartesianPoint.hxx".}
proc x*(this: GeomCartesianPoint): StandardReal {.noSideEffect, importcpp: "X",
    header: "Geom_CartesianPoint.hxx".}
proc y*(this: GeomCartesianPoint): StandardReal {.noSideEffect, importcpp: "Y",
    header: "Geom_CartesianPoint.hxx".}
proc z*(this: GeomCartesianPoint): StandardReal {.noSideEffect, importcpp: "Z",
    header: "Geom_CartesianPoint.hxx".}
proc transform*(this: var GeomCartesianPoint; t: Trsf) {.importcpp: "Transform",
    header: "Geom_CartesianPoint.hxx".}
proc copy*(this: GeomCartesianPoint): Handle[GeomGeometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom_CartesianPoint.hxx".}


#[ proc getTypeName*(): cstring {.importcpp: "Geom_CartesianPoint::get_type_name(@)",
                            header: "Geom_CartesianPoint.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom_CartesianPoint::get_type_descriptor(@)",
    header: "Geom_CartesianPoint.hxx".}
proc dynamicType*(this: GeomCartesianPoint): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_CartesianPoint.hxx".} ]#