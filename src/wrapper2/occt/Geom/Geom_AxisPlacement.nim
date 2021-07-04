##  Created on: 1993-03-09
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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Ax1, Geom_Geometry,
  ../Standard/Standard_Real

discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Pnt"
discard "forward decl of Geom_AxisPlacement"
discard "forward decl of Geom_AxisPlacement"
type
  Handle_Geom_AxisPlacement* = handle[Geom_AxisPlacement]

## ! The abstract class AxisPlacement describes the
## ! common behavior of positioning systems in 3D space,
## ! such as axis or coordinate systems.
## ! The Geom package provides two implementations of
## ! 3D positioning systems:
## ! - the axis (Geom_Axis1Placement class), which is defined by:
## ! - its origin, also termed the "Location point" of the  axis,
## ! - its unit vector, termed the "Direction" or "main
## ! Direction" of the axis;
## ! - the right-handed coordinate system
## ! (Geom_Axis2Placement class), which is defined by:
## ! - its origin, also termed the "Location point" of the coordinate system,
## ! - three orthogonal unit vectors, termed
## ! respectively the "X Direction", the "Y Direction"
## ! and the "Direction" of the coordinate system. As
## ! the coordinate system is right-handed, these
## ! unit vectors have the following relation:
## ! "Direction" = "X Direction" ^
## ! "Y Direction". The "Direction" is also
## ! called the "main Direction" because, when the
## ! unit vector is modified, the "X Direction" and "Y
## ! Direction" are recomputed, whereas when the "X
## ! Direction" or "Y Direction" is modified, the "main Direction" does not change.
## ! The axis whose origin is the origin of the positioning
## ! system and whose unit vector is its "main Direction" is
## ! also called the "Axis" or "main Axis" of the positioning system.

type
  Geom_AxisPlacement* {.importcpp: "Geom_AxisPlacement",
                       header: "Geom_AxisPlacement.hxx", bycopy.} = object of Geom_Geometry ##
                                                                                     ## !
                                                                                     ## Assigns
                                                                                     ## A1
                                                                                     ## as
                                                                                     ## the
                                                                                     ## "main
                                                                                     ## Axis"
                                                                                     ## of
                                                                                     ## this
                                                                                     ## positioning
                                                                                     ## system.
                                                                                     ## This
                                                                                     ## modifies
                                                                                     ##
                                                                                     ## !
                                                                                     ## -
                                                                                     ## its
                                                                                     ## origin,
                                                                                     ## and
                                                                                     ##
                                                                                     ## !
                                                                                     ## -
                                                                                     ## its
                                                                                     ## "main
                                                                                     ## Direction".
                                                                                     ##
                                                                                     ## !
                                                                                     ## If
                                                                                     ## this
                                                                                     ## positioning
                                                                                     ## system
                                                                                     ## is
                                                                                     ## a
                                                                                     ##
                                                                                     ## !
                                                                                     ## Geom_Axis2Placement,
                                                                                     ## then
                                                                                     ## its
                                                                                     ## "X
                                                                                     ## Direction"
                                                                                     ## and
                                                                                     ##
                                                                                     ## !
                                                                                     ## "Y
                                                                                     ## Direction"
                                                                                     ## are
                                                                                     ## recomputed.
                                                                                     ##
                                                                                     ## !
                                                                                     ## Exceptions
                                                                                     ##
                                                                                     ## !
                                                                                     ## For
                                                                                     ## a
                                                                                     ## Geom_Axis2Placement:
                                                                                     ##
                                                                                     ## !
                                                                                     ## Standard_ConstructionError
                                                                                     ## if
                                                                                     ## A1
                                                                                     ## and
                                                                                     ## the
                                                                                     ##
                                                                                     ## !
                                                                                     ## previous
                                                                                     ## "X
                                                                                     ## Direction"
                                                                                     ## of
                                                                                     ## the
                                                                                     ## coordinate
                                                                                     ## system
                                                                                     ## are
                                                                                     ## parallel.


proc SetAxis*(this: var Geom_AxisPlacement; A1: gp_Ax1) {.importcpp: "SetAxis",
    header: "Geom_AxisPlacement.hxx".}
proc SetDirection*(this: var Geom_AxisPlacement; V: gp_Dir) {.
    importcpp: "SetDirection", header: "Geom_AxisPlacement.hxx".}
proc SetLocation*(this: var Geom_AxisPlacement; P: gp_Pnt) {.importcpp: "SetLocation",
    header: "Geom_AxisPlacement.hxx".}
proc Angle*(this: Geom_AxisPlacement; Other: handle[Geom_AxisPlacement]): Standard_Real {.
    noSideEffect, importcpp: "Angle", header: "Geom_AxisPlacement.hxx".}
proc Axis*(this: Geom_AxisPlacement): gp_Ax1 {.noSideEffect, importcpp: "Axis",
    header: "Geom_AxisPlacement.hxx".}
proc Direction*(this: Geom_AxisPlacement): gp_Dir {.noSideEffect,
    importcpp: "Direction", header: "Geom_AxisPlacement.hxx".}
proc Location*(this: Geom_AxisPlacement): gp_Pnt {.noSideEffect,
    importcpp: "Location", header: "Geom_AxisPlacement.hxx".}
type
  Geom_AxisPlacementbase_type* = Geom_Geometry

proc get_type_name*(): cstring {.importcpp: "Geom_AxisPlacement::get_type_name(@)",
                              header: "Geom_AxisPlacement.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom_AxisPlacement::get_type_descriptor(@)",
    header: "Geom_AxisPlacement.hxx".}
proc DynamicType*(this: Geom_AxisPlacement): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_AxisPlacement.hxx".}