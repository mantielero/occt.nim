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

discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Dir2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of Geom2d_Geometry"
discard "forward decl of Geom2d_AxisPlacement"
type
  HandleGeom2dAxisPlacement* = Handle[Geom2dAxisPlacement]

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
  Geom2dAxisPlacement* {.importcpp: "Geom2d_AxisPlacement",
                        header: "Geom2d_AxisPlacement.hxx", bycopy.} = object of Geom2dGeometry ##
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


proc newGeom2dAxisPlacement*(a: Ax2d): Geom2dAxisPlacement {.cdecl, constructor,
    importcpp: "Geom2d_AxisPlacement(@)", dynlib: tkg2d.}
proc newGeom2dAxisPlacement*(p: Pnt2d; v: Dir2d): Geom2dAxisPlacement {.cdecl,
    constructor, importcpp: "Geom2d_AxisPlacement(@)", dynlib: tkg2d.}
proc reverse*(this: var Geom2dAxisPlacement) {.cdecl, importcpp: "Reverse",
    dynlib: tkg2d.}
proc reversed*(this: Geom2dAxisPlacement): Handle[Geom2dAxisPlacement] {.
    noSideEffect, cdecl, importcpp: "Reversed", dynlib: tkg2d.}
proc setAxis*(this: var Geom2dAxisPlacement; a: Ax2d) {.cdecl, importcpp: "SetAxis",
    dynlib: tkg2d.}
proc setDirection*(this: var Geom2dAxisPlacement; v: Dir2d) {.cdecl,
    importcpp: "SetDirection", dynlib: tkg2d.}
proc setLocation*(this: var Geom2dAxisPlacement; p: Pnt2d) {.cdecl,
    importcpp: "SetLocation", dynlib: tkg2d.}
proc angle*(this: Geom2dAxisPlacement; other: Handle[Geom2dAxisPlacement]): cfloat {.
    noSideEffect, cdecl, importcpp: "Angle", dynlib: tkg2d.}
proc ax2d*(this: Geom2dAxisPlacement): Ax2d {.noSideEffect, cdecl, importcpp: "Ax2d",
    dynlib: tkg2d.}
proc direction*(this: Geom2dAxisPlacement): Dir2d {.noSideEffect, cdecl,
    importcpp: "Direction", dynlib: tkg2d.}
proc location*(this: Geom2dAxisPlacement): Pnt2d {.noSideEffect, cdecl,
    importcpp: "Location", dynlib: tkg2d.}
proc transform*(this: var Geom2dAxisPlacement; t: Trsf2d) {.cdecl,
    importcpp: "Transform", dynlib: tkg2d.}
proc copy*(this: Geom2dAxisPlacement): Handle[Geom2dGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", dynlib: tkg2d.}