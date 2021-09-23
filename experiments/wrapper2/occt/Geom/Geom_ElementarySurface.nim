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
  ../gp/gp_Ax3, Geom_Surface

discard "forward decl of Geom_ElementarySurface"
discard "forward decl of Geom_ElementarySurface"
type
  Handle_Geom_ElementarySurface* = handle[Geom_ElementarySurface]

## ! Describes the common behavior of surfaces which
## ! have a simple parametric equation in a local
## ! coordinate system. The Geom package provides
## ! several implementations of concrete elementary surfaces:
## ! - the plane, and
## ! - four simple surfaces of revolution: the cylinder, the
## ! cone, the sphere and the torus.
## ! An elementary surface inherits the common behavior
## ! of Geom_Surface surfaces. Furthermore, it is located
## ! in 3D space by a coordinate system (a gp_Ax3
## ! object) which is also its local coordinate system.
## ! Any elementary surface is oriented, i.e. the normal
## ! vector is always defined, and gives the same
## ! orientation to the surface, at any point on the surface.
## ! In topology this property is referred to as the "outside
## ! region of the surface". This orientation is related to
## ! the two parametric directions of the surface.
## ! Rotation of a surface around the "main Axis" of its
## ! coordinate system, in the trigonometric sense given
## ! by the "X Direction" and the "Y Direction" of the
## ! coordinate system, defines the u parametric direction
## ! of that elementary surface of revolution. This is the
## ! default construction mode.
## ! It is also possible, however, to change the orientation
## ! of a surface by reversing one of the two parametric
## ! directions: use the UReverse or VReverse functions
## ! to change the orientation of the normal at any point on the surface.
## ! Warning
## ! The local coordinate system of an elementary surface
## ! is not necessarily direct:
## ! - if it is direct, the trigonometric sense defined by its
## ! "main Direction" is the same as the trigonometric
## ! sense defined by its two vectors "X Direction" and "Y Direction":
## ! "main Direction" = "X Direction" ^ "Y Direction"
## ! - if it is indirect, the two definitions of trigonometric
## ! sense are opposite:
## ! "main Direction" = - "X Direction" ^ "Y Direction"

type
  Geom_ElementarySurface* {.importcpp: "Geom_ElementarySurface",
                           header: "Geom_ElementarySurface.hxx", bycopy.} = object of Geom_Surface ##
                                                                                            ## !
                                                                                            ## Changes
                                                                                            ## the
                                                                                            ## main
                                                                                            ## axis
                                                                                            ## (ZAxis)
                                                                                            ## of
                                                                                            ## the
                                                                                            ## elementary
                                                                                            ## surface.
                                                                                            ##
                                                                                            ## !
                                                                                            ##
                                                                                            ## !
                                                                                            ## Raised
                                                                                            ## if
                                                                                            ## the
                                                                                            ## direction
                                                                                            ## of
                                                                                            ## A1
                                                                                            ## is
                                                                                            ## parallel
                                                                                            ## to
                                                                                            ## the
                                                                                            ## XAxis
                                                                                            ## of
                                                                                            ## the
                                                                                            ##
                                                                                            ## !
                                                                                            ## coordinate
                                                                                            ## system
                                                                                            ## of
                                                                                            ## the
                                                                                            ## surface.


proc SetAxis*(this: var Geom_ElementarySurface; theA1: gp_Ax1) {.importcpp: "SetAxis",
    header: "Geom_ElementarySurface.hxx".}
proc SetLocation*(this: var Geom_ElementarySurface; theLoc: gp_Pnt) {.
    importcpp: "SetLocation", header: "Geom_ElementarySurface.hxx".}
proc SetPosition*(this: var Geom_ElementarySurface; theAx3: gp_Ax3) {.
    importcpp: "SetPosition", header: "Geom_ElementarySurface.hxx".}
proc Axis*(this: Geom_ElementarySurface): gp_Ax1 {.noSideEffect, importcpp: "Axis",
    header: "Geom_ElementarySurface.hxx".}
proc Location*(this: Geom_ElementarySurface): gp_Pnt {.noSideEffect,
    importcpp: "Location", header: "Geom_ElementarySurface.hxx".}
proc Position*(this: Geom_ElementarySurface): gp_Ax3 {.noSideEffect,
    importcpp: "Position", header: "Geom_ElementarySurface.hxx".}
proc UReverse*(this: var Geom_ElementarySurface) {.importcpp: "UReverse",
    header: "Geom_ElementarySurface.hxx".}
proc UReversedParameter*(this: Geom_ElementarySurface; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "UReversedParameter",
    header: "Geom_ElementarySurface.hxx".}
proc VReverse*(this: var Geom_ElementarySurface) {.importcpp: "VReverse",
    header: "Geom_ElementarySurface.hxx".}
proc VReversedParameter*(this: Geom_ElementarySurface; V: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "VReversedParameter",
    header: "Geom_ElementarySurface.hxx".}
proc Continuity*(this: Geom_ElementarySurface): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "Geom_ElementarySurface.hxx".}
proc IsCNu*(this: Geom_ElementarySurface; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsCNu", header: "Geom_ElementarySurface.hxx".}
proc IsCNv*(this: Geom_ElementarySurface; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsCNv", header: "Geom_ElementarySurface.hxx".}
proc DumpJson*(this: Geom_ElementarySurface; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom_ElementarySurface.hxx".}
type
  Geom_ElementarySurfacebase_type* = Geom_Surface

proc get_type_name*(): cstring {.importcpp: "Geom_ElementarySurface::get_type_name(@)",
                              header: "Geom_ElementarySurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom_ElementarySurface::get_type_descriptor(@)",
    header: "Geom_ElementarySurface.hxx".}
proc DynamicType*(this: Geom_ElementarySurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Geom_ElementarySurface.hxx".}