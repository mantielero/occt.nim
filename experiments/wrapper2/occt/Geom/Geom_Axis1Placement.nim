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

discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Trsf"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_Axis1Placement"
discard "forward decl of Geom_Axis1Placement"
type
  HandleGeomAxis1Placement* = Handle[GeomAxis1Placement]

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
  GeomAxis1Placement* {.importcpp: "Geom_Axis1Placement",
                       header: "Geom_Axis1Placement.hxx", bycopy.} = object of GeomAxisPlacement ##
                                                                                          ## !
                                                                                          ## Returns
                                                                                          ## a
                                                                                          ## transient
                                                                                          ## copy
                                                                                          ## of
                                                                                          ## A1.


proc constructGeomAxis1Placement*(a1: Ax1): GeomAxis1Placement {.constructor,
    importcpp: "Geom_Axis1Placement(@)", header: "Geom_Axis1Placement.hxx".}
proc constructGeomAxis1Placement*(p: Pnt; v: Dir): GeomAxis1Placement {.constructor,
    importcpp: "Geom_Axis1Placement(@)", header: "Geom_Axis1Placement.hxx".}
proc ax1*(this: GeomAxis1Placement): Ax1 {.noSideEffect, importcpp: "Ax1",
                                       header: "Geom_Axis1Placement.hxx".}
proc reverse*(this: var GeomAxis1Placement) {.importcpp: "Reverse",
    header: "Geom_Axis1Placement.hxx".}
proc reversed*(this: GeomAxis1Placement): Handle[GeomAxis1Placement] {.noSideEffect,
    importcpp: "Reversed", header: "Geom_Axis1Placement.hxx".}
proc setDirection*(this: var GeomAxis1Placement; v: Dir) {.importcpp: "SetDirection",
    header: "Geom_Axis1Placement.hxx".}
proc transform*(this: var GeomAxis1Placement; t: Trsf) {.importcpp: "Transform",
    header: "Geom_Axis1Placement.hxx".}
proc copy*(this: GeomAxis1Placement): Handle[GeomGeometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom_Axis1Placement.hxx".}
type
  GeomAxis1PlacementbaseType* = GeomAxisPlacement

proc getTypeName*(): cstring {.importcpp: "Geom_Axis1Placement::get_type_name(@)",
                            header: "Geom_Axis1Placement.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom_Axis1Placement::get_type_descriptor(@)",
    header: "Geom_Axis1Placement.hxx".}
proc dynamicType*(this: GeomAxis1Placement): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_Axis1Placement.hxx".}
