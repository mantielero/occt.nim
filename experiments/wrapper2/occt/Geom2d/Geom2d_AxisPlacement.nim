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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Ax2d, Geom2d_Geometry,
  ../Standard/Standard_Real

discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Dir2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of Geom2d_Geometry"
discard "forward decl of Geom2d_AxisPlacement"
discard "forward decl of Geom2d_AxisPlacement"
type
  Handle_Geom2d_AxisPlacement* = handle[Geom2d_AxisPlacement]

## ! Describes an axis in 2D space.
## ! An axis is defined by:
## ! - its origin, also termed the "Location point" of the axis,
## ! - its unit vector, termed the "Direction" of the axis.
## ! Note: Geom2d_AxisPlacement axes provide the
## ! same kind of "geometric" services as gp_Ax2d axes
## ! but have more complex data structures. The
## ! geometric objects provided by the Geom2d package
## ! use gp_Ax2d objects to include axes in their data
## ! structures, or to define an axis of symmetry or axis of rotation.
## ! Geom2d_AxisPlacement axes are used in a context
## ! where they can be shared by several objects
## ! contained inside a common data structure.

type
  Geom2d_AxisPlacement* {.importcpp: "Geom2d_AxisPlacement",
                         header: "Geom2d_AxisPlacement.hxx", bycopy.} = object of Geom2d_Geometry ##
                                                                                           ## !
                                                                                           ## Constructs
                                                                                           ## an
                                                                                           ## axis
                                                                                           ## by
                                                                                           ## conversion
                                                                                           ## of
                                                                                           ## the
                                                                                           ## gp_Ax2d
                                                                                           ## axis
                                                                                           ## A.
    opencascade* {.importc: "opencascade".}: Standard_NODISCARD


proc constructGeom2d_AxisPlacement*(A: gp_Ax2d): Geom2d_AxisPlacement {.constructor,
    importcpp: "Geom2d_AxisPlacement(@)", header: "Geom2d_AxisPlacement.hxx".}
proc constructGeom2d_AxisPlacement*(P: gp_Pnt2d; V: gp_Dir2d): Geom2d_AxisPlacement {.
    constructor, importcpp: "Geom2d_AxisPlacement(@)",
    header: "Geom2d_AxisPlacement.hxx".}
proc Reverse*(this: var Geom2d_AxisPlacement) {.importcpp: "Reverse",
    header: "Geom2d_AxisPlacement.hxx".}
## !!!Ignored construct:  :: handle < Geom2d_AxisPlacement > [end of template] Reversed ( ) const ;
## Error: identifier expected, but got: ::!!!

proc SetAxis*(this: var Geom2d_AxisPlacement; A: gp_Ax2d) {.importcpp: "SetAxis",
    header: "Geom2d_AxisPlacement.hxx".}
proc SetDirection*(this: var Geom2d_AxisPlacement; V: gp_Dir2d) {.
    importcpp: "SetDirection", header: "Geom2d_AxisPlacement.hxx".}
proc SetLocation*(this: var Geom2d_AxisPlacement; P: gp_Pnt2d) {.
    importcpp: "SetLocation", header: "Geom2d_AxisPlacement.hxx".}
proc Angle*(this: Geom2d_AxisPlacement; Other: handle[Geom2d_AxisPlacement]): Standard_Real {.
    noSideEffect, importcpp: "Angle", header: "Geom2d_AxisPlacement.hxx".}
proc Ax2d*(this: Geom2d_AxisPlacement): gp_Ax2d {.noSideEffect, importcpp: "Ax2d",
    header: "Geom2d_AxisPlacement.hxx".}
proc Direction*(this: Geom2d_AxisPlacement): gp_Dir2d {.noSideEffect,
    importcpp: "Direction", header: "Geom2d_AxisPlacement.hxx".}
proc Location*(this: Geom2d_AxisPlacement): gp_Pnt2d {.noSideEffect,
    importcpp: "Location", header: "Geom2d_AxisPlacement.hxx".}
proc Transform*(this: var Geom2d_AxisPlacement; T: gp_Trsf2d) {.
    importcpp: "Transform", header: "Geom2d_AxisPlacement.hxx".}
proc Copy*(this: Geom2d_AxisPlacement): handle[Geom2d_Geometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom2d_AxisPlacement.hxx".}
type
  Geom2d_AxisPlacementbase_type* = Geom2d_Geometry

proc get_type_name*(): cstring {.importcpp: "Geom2d_AxisPlacement::get_type_name(@)",
                              header: "Geom2d_AxisPlacement.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom2d_AxisPlacement::get_type_descriptor(@)",
    header: "Geom2d_AxisPlacement.hxx".}
proc DynamicType*(this: Geom2d_AxisPlacement): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom2d_AxisPlacement.hxx".}