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
  ../Standard/Standard, ../Standard/Standard_Type, Geom_AxisPlacement

discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Trsf"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_Axis1Placement"
discard "forward decl of Geom_Axis1Placement"
type
  Handle_Geom_Axis1Placement* = handle[Geom_Axis1Placement]

## ! Describes an axis in 3D space.
## ! An axis is defined by:
## ! - its origin, also termed the "Location point" of the axis,
## ! - its unit vector, termed the "Direction" of the axis.
## ! Note: Geom_Axis1Placement axes provide the
## ! same kind of "geometric" services as gp_Ax1 axes
## ! but have more complex data structures. The
## ! geometric objects provided by the Geom package
## ! use gp_Ax1 objects to include axes in their data
## ! structures, or to define an axis of symmetry or axis of rotation.
## ! Geom_Axis1Placement axes are used in a context
## ! where they can be shared by several objects
## ! contained inside a common data structure.

type
  Geom_Axis1Placement* {.importcpp: "Geom_Axis1Placement",
                        header: "Geom_Axis1Placement.hxx", bycopy.} = object of Geom_AxisPlacement ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## a
                                                                                            ## transient
                                                                                            ## copy
                                                                                            ## of
                                                                                            ## A1.
    opencascade* {.importc: "opencascade".}: Standard_NODISCARD


proc constructGeom_Axis1Placement*(A1: gp_Ax1): Geom_Axis1Placement {.constructor,
    importcpp: "Geom_Axis1Placement(@)", header: "Geom_Axis1Placement.hxx".}
proc constructGeom_Axis1Placement*(P: gp_Pnt; V: gp_Dir): Geom_Axis1Placement {.
    constructor, importcpp: "Geom_Axis1Placement(@)",
    header: "Geom_Axis1Placement.hxx".}
proc Ax1*(this: Geom_Axis1Placement): gp_Ax1 {.noSideEffect, importcpp: "Ax1",
    header: "Geom_Axis1Placement.hxx".}
proc Reverse*(this: var Geom_Axis1Placement) {.importcpp: "Reverse",
    header: "Geom_Axis1Placement.hxx".}
## !!!Ignored construct:  :: handle < Geom_Axis1Placement > [end of template] Reversed ( ) const ;
## Error: identifier expected, but got: ::!!!

proc SetDirection*(this: var Geom_Axis1Placement; V: gp_Dir) {.
    importcpp: "SetDirection", header: "Geom_Axis1Placement.hxx".}
proc Transform*(this: var Geom_Axis1Placement; T: gp_Trsf) {.importcpp: "Transform",
    header: "Geom_Axis1Placement.hxx".}
proc Copy*(this: Geom_Axis1Placement): handle[Geom_Geometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom_Axis1Placement.hxx".}
type
  Geom_Axis1Placementbase_type* = Geom_AxisPlacement

proc get_type_name*(): cstring {.importcpp: "Geom_Axis1Placement::get_type_name(@)",
                              header: "Geom_Axis1Placement.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom_Axis1Placement::get_type_descriptor(@)",
    header: "Geom_Axis1Placement.hxx".}
proc DynamicType*(this: Geom_Axis1Placement): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_Axis1Placement.hxx".}