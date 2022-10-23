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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of Geom2d_Geometry"
type
  HandleGeom2dGeometry* {.importcpp:"opencascade::handle<Geom2d_Geometry>", header:"Standard_Handle.hxx", bycopy, pure, inheritable.} = object

## ! The general abstract class Geometry in 2D space describes
## ! the common behaviour of all the geometric entities.
## !
## ! All the objects derived from this class can be move with a
## ! geometric transformation. Only the transformations which
## ! doesn't modify the nature of the geometry are available in
## ! this package.
## ! The method Transform which defines a general transformation
## ! is deferred. The other specifics transformations used the
## ! method Transform.
## ! All the following transformations modify the object itself.
## ! Warning
## ! Only transformations which do not modify the nature
## ! of the geometry can be applied to Geom2d objects:
## ! this is the case with translations, rotations,
## ! symmetries and scales; this is also the case with
## ! gp_Trsf2d composite transformations which are
## ! used to define the geometric transformations applied
## ! using the Transform or Transformed functions.
## ! Note: Geometry defines the "prototype" of the
## ! abstract method Transform which is defined for each
## ! concrete type of derived object. All other
## ! transformations are implemented using the Transform method.

type
  Geom2dGeometry* {.importcpp: "Geom2d_Geometry", header: "Geom2d_Geometry.hxx",
                   bycopy.} = object of StandardTransient ## ! Performs the symmetrical transformation of a Geometry
                                                     ## ! with respect to the point P which is the center of the
                                                     ## ! symmetry and assigns the result to this geometric object.


proc mirror*(this: var Geom2dGeometry; p: Pnt2dObj) {.cdecl, importcpp: "Mirror",
    header: "Geom2d_Geometry.hxx".}
proc mirror*(this: var Geom2dGeometry; a: Ax2dObj) {.cdecl, importcpp: "Mirror",
    header: "Geom2d_Geometry.hxx".}
proc rotate*(this: var Geom2dGeometry; p: Pnt2dObj; ang: cfloat) {.cdecl,
    importcpp: "Rotate", header: "Geom2d_Geometry.hxx".}
proc scale*(this: var Geom2dGeometry; p: Pnt2dObj; s: cfloat) {.cdecl, importcpp: "Scale",
    header: "Geom2d_Geometry.hxx".}
proc translate*(this: var Geom2dGeometry; v: Vec2dObj) {.cdecl, importcpp: "Translate",
    header: "Geom2d_Geometry.hxx".}
proc translate*(this: var Geom2dGeometry; p1: Pnt2dObj; p2: Pnt2dObj) {.cdecl,
    importcpp: "Translate", header: "Geom2d_Geometry.hxx".}
proc transform*(this: var Geom2dGeometry; t: Trsf2dObj) {.cdecl, importcpp: "Transform",
    header: "Geom2d_Geometry.hxx".}
proc mirrored*(this: Geom2dGeometry; p: Pnt2dObj): Handle[Geom2dGeometry] {.noSideEffect,
    cdecl, importcpp: "Mirrored", header: "Geom2d_Geometry.hxx".}
proc mirrored*(this: Geom2dGeometry; a: Ax2dObj): Handle[Geom2dGeometry] {.noSideEffect,
    cdecl, importcpp: "Mirrored", header: "Geom2d_Geometry.hxx".}
proc rotated*(this: Geom2dGeometry; p: Pnt2dObj; ang: cfloat): Handle[Geom2dGeometry] {.
    noSideEffect, cdecl, importcpp: "Rotated", header: "Geom2d_Geometry.hxx".}
proc scaled*(this: Geom2dGeometry; p: Pnt2dObj; s: cfloat): Handle[Geom2dGeometry] {.
    noSideEffect, cdecl, importcpp: "Scaled", header: "Geom2d_Geometry.hxx".}
proc transformed*(this: Geom2dGeometry; t: Trsf2dObj): Handle[Geom2dGeometry] {.
    noSideEffect, cdecl, importcpp: "Transformed", header: "Geom2d_Geometry.hxx".}
proc translated*(this: Geom2dGeometry; v: Vec2dObj): Handle[Geom2dGeometry] {.
    noSideEffect, cdecl, importcpp: "Translated", header: "Geom2d_Geometry.hxx".}
proc translated*(this: Geom2dGeometry; p1: Pnt2dObj; p2: Pnt2dObj): Handle[Geom2dGeometry] {.
    noSideEffect, cdecl, importcpp: "Translated", header: "Geom2d_Geometry.hxx".}
proc copy*(this: Geom2dGeometry): Handle[Geom2dGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom2d_Geometry.hxx".}
proc dumpJson*(this: Geom2dGeometry; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom2d_Geometry.hxx".}