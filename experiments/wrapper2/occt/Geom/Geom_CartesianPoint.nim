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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Pnt, Geom_Point,
  ../Standard/Standard_Real

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Trsf"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_CartesianPoint"
discard "forward decl of Geom_CartesianPoint"
type
  Handle_Geom_CartesianPoint* = handle[Geom_CartesianPoint]

## ! Describes a point in 3D space. A
## ! Geom_CartesianPoint is defined by a gp_Pnt point,
## ! with its three Cartesian coordinates X, Y and Z.

type
  Geom_CartesianPoint* {.importcpp: "Geom_CartesianPoint",
                        header: "Geom_CartesianPoint.hxx", bycopy.} = object of Geom_Point ##
                                                                                    ## !
                                                                                    ## Returns
                                                                                    ## a
                                                                                    ## transient
                                                                                    ## copy
                                                                                    ## of
                                                                                    ## P.


proc constructGeom_CartesianPoint*(P: gp_Pnt): Geom_CartesianPoint {.constructor,
    importcpp: "Geom_CartesianPoint(@)", header: "Geom_CartesianPoint.hxx".}
proc constructGeom_CartesianPoint*(X: Standard_Real; Y: Standard_Real;
                                  Z: Standard_Real): Geom_CartesianPoint {.
    constructor, importcpp: "Geom_CartesianPoint(@)",
    header: "Geom_CartesianPoint.hxx".}
proc SetCoord*(this: var Geom_CartesianPoint; X: Standard_Real; Y: Standard_Real;
              Z: Standard_Real) {.importcpp: "SetCoord",
                                header: "Geom_CartesianPoint.hxx".}
proc SetPnt*(this: var Geom_CartesianPoint; P: gp_Pnt) {.importcpp: "SetPnt",
    header: "Geom_CartesianPoint.hxx".}
proc SetX*(this: var Geom_CartesianPoint; X: Standard_Real) {.importcpp: "SetX",
    header: "Geom_CartesianPoint.hxx".}
proc SetY*(this: var Geom_CartesianPoint; Y: Standard_Real) {.importcpp: "SetY",
    header: "Geom_CartesianPoint.hxx".}
proc SetZ*(this: var Geom_CartesianPoint; Z: Standard_Real) {.importcpp: "SetZ",
    header: "Geom_CartesianPoint.hxx".}
proc Coord*(this: Geom_CartesianPoint; X: var Standard_Real; Y: var Standard_Real;
           Z: var Standard_Real) {.noSideEffect, importcpp: "Coord",
                                header: "Geom_CartesianPoint.hxx".}
proc Pnt*(this: Geom_CartesianPoint): gp_Pnt {.noSideEffect, importcpp: "Pnt",
    header: "Geom_CartesianPoint.hxx".}
proc X*(this: Geom_CartesianPoint): Standard_Real {.noSideEffect, importcpp: "X",
    header: "Geom_CartesianPoint.hxx".}
proc Y*(this: Geom_CartesianPoint): Standard_Real {.noSideEffect, importcpp: "Y",
    header: "Geom_CartesianPoint.hxx".}
proc Z*(this: Geom_CartesianPoint): Standard_Real {.noSideEffect, importcpp: "Z",
    header: "Geom_CartesianPoint.hxx".}
proc Transform*(this: var Geom_CartesianPoint; T: gp_Trsf) {.importcpp: "Transform",
    header: "Geom_CartesianPoint.hxx".}
proc Copy*(this: Geom_CartesianPoint): handle[Geom_Geometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom_CartesianPoint.hxx".}
type
  Geom_CartesianPointbase_type* = Geom_Point

proc get_type_name*(): cstring {.importcpp: "Geom_CartesianPoint::get_type_name(@)",
                              header: "Geom_CartesianPoint.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom_CartesianPoint::get_type_descriptor(@)",
    header: "Geom_CartesianPoint.hxx".}
proc DynamicType*(this: Geom_CartesianPoint): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_CartesianPoint.hxx".}