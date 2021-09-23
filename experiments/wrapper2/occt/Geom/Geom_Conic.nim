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
  ../gp/gp_Ax2, Geom_Curve

discard "forward decl of Geom_Conic"
discard "forward decl of Geom_Conic"
type
  Handle_Geom_Conic* = handle[Geom_Conic]

## ! The abstract class Conic describes the common
## ! behavior of conic curves in 3D space and, in
## ! particular, their general characteristics. The Geom
## ! package provides four concrete classes of conics:
## ! Geom_Circle, Geom_Ellipse, Geom_Hyperbola and Geom_Parabola.
## ! A conic is positioned in space with a right-handed
## ! coordinate system (gp_Ax2 object), where:
## ! - the origin is the center of the conic (or the apex in
## ! the case of a parabola),
## ! - the origin, "X Direction" and "Y Direction" define the
## ! plane of the conic.
## ! This coordinate system is the local coordinate
## ! system of the conic.
## ! The "main Direction" of this coordinate system is the
## ! vector normal to the plane of the conic. The axis, of
## ! which the origin and unit vector are respectively the
## ! origin and "main Direction" of the local coordinate
## ! system, is termed the "Axis" or "main Axis" of the conic.
## ! The "main Direction" of the local coordinate system
## ! gives an explicit orientation to the conic, determining
## ! the direction in which the parameter increases along
## ! the conic. The "X Axis" of the local coordinate system
## ! also defines the origin of the parameter of the conic.

type
  Geom_Conic* {.importcpp: "Geom_Conic", header: "Geom_Conic.hxx", bycopy.} = object of Geom_Curve ##
                                                                                         ## !
                                                                                         ## Changes
                                                                                         ## the
                                                                                         ## orientation
                                                                                         ## of
                                                                                         ## the
                                                                                         ## conic's
                                                                                         ## plane.
                                                                                         ## The
                                                                                         ## normal
                                                                                         ##
                                                                                         ## !
                                                                                         ## axis
                                                                                         ## to
                                                                                         ## the
                                                                                         ## plane
                                                                                         ## is
                                                                                         ## A1.
                                                                                         ## The
                                                                                         ## XAxis
                                                                                         ## and
                                                                                         ## the
                                                                                         ## YAxis
                                                                                         ## are
                                                                                         ## recomputed.
                                                                                         ##
                                                                                         ## !
                                                                                         ##
                                                                                         ## !
                                                                                         ## raised
                                                                                         ## if
                                                                                         ## the
                                                                                         ## A1
                                                                                         ## is
                                                                                         ## parallel
                                                                                         ## to
                                                                                         ## the
                                                                                         ## XAxis
                                                                                         ## of
                                                                                         ## the
                                                                                         ## conic.


proc SetAxis*(this: var Geom_Conic; theA1: gp_Ax1) {.importcpp: "SetAxis",
    header: "Geom_Conic.hxx".}
proc SetLocation*(this: var Geom_Conic; theP: gp_Pnt) {.importcpp: "SetLocation",
    header: "Geom_Conic.hxx".}
proc SetPosition*(this: var Geom_Conic; theA2: gp_Ax2) {.importcpp: "SetPosition",
    header: "Geom_Conic.hxx".}
proc Axis*(this: Geom_Conic): gp_Ax1 {.noSideEffect, importcpp: "Axis",
                                   header: "Geom_Conic.hxx".}
proc Location*(this: Geom_Conic): gp_Pnt {.noSideEffect, importcpp: "Location",
                                       header: "Geom_Conic.hxx".}
proc Position*(this: Geom_Conic): gp_Ax2 {.noSideEffect, importcpp: "Position",
                                       header: "Geom_Conic.hxx".}
proc Eccentricity*(this: Geom_Conic): Standard_Real {.noSideEffect,
    importcpp: "Eccentricity", header: "Geom_Conic.hxx".}
proc XAxis*(this: Geom_Conic): gp_Ax1 {.noSideEffect, importcpp: "XAxis",
                                    header: "Geom_Conic.hxx".}
proc YAxis*(this: Geom_Conic): gp_Ax1 {.noSideEffect, importcpp: "YAxis",
                                    header: "Geom_Conic.hxx".}
proc Reverse*(this: var Geom_Conic) {.importcpp: "Reverse", header: "Geom_Conic.hxx".}
proc ReversedParameter*(this: Geom_Conic; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "ReversedParameter", header: "Geom_Conic.hxx".}
proc Continuity*(this: Geom_Conic): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "Geom_Conic.hxx".}
proc IsCN*(this: Geom_Conic; N: Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "IsCN", header: "Geom_Conic.hxx".}
proc DumpJson*(this: Geom_Conic; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom_Conic.hxx".}
type
  Geom_Conicbase_type* = Geom_Curve

proc get_type_name*(): cstring {.importcpp: "Geom_Conic::get_type_name(@)",
                              header: "Geom_Conic.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom_Conic::get_type_descriptor(@)", header: "Geom_Conic.hxx".}
proc DynamicType*(this: Geom_Conic): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_Conic.hxx".}