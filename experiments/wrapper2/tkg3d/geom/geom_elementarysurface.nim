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

discard "forward decl of Geom_ElementarySurface"
type
  HandleGeomElementarySurface* = Handle[GeomElementarySurface]

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
  GeomElementarySurface* {.importcpp: "Geom_ElementarySurface",
                          header: "Geom_ElementarySurface.hxx", bycopy.} = object of GeomSurface ##
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


proc setAxis*(this: var GeomElementarySurface; theA1: Ax1) {.cdecl,
    importcpp: "SetAxis", dynlib: tkmath.}
proc setLocation*(this: var GeomElementarySurface; theLoc: Pnt) {.cdecl,
    importcpp: "SetLocation", dynlib: tkmath.}
proc setPosition*(this: var GeomElementarySurface; theAx3: Ax3) {.cdecl,
    importcpp: "SetPosition", dynlib: tkmath.}
proc axis*(this: GeomElementarySurface): Ax1 {.noSideEffect, cdecl, importcpp: "Axis",
    dynlib: tkmath.}
proc location*(this: GeomElementarySurface): Pnt {.noSideEffect, cdecl,
    importcpp: "Location", dynlib: tkmath.}
proc position*(this: GeomElementarySurface): Ax3 {.noSideEffect, cdecl,
    importcpp: "Position", dynlib: tkmath.}
proc uReverse*(this: var GeomElementarySurface) {.cdecl, importcpp: "UReverse",
    dynlib: tkmath.}
proc uReversedParameter*(this: GeomElementarySurface; u: cfloat): cfloat {.
    noSideEffect, cdecl, importcpp: "UReversedParameter", dynlib: tkmath.}
proc vReverse*(this: var GeomElementarySurface) {.cdecl, importcpp: "VReverse",
    dynlib: tkmath.}
proc vReversedParameter*(this: GeomElementarySurface; v: cfloat): cfloat {.
    noSideEffect, cdecl, importcpp: "VReversedParameter", dynlib: tkmath.}
proc continuity*(this: GeomElementarySurface): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", dynlib: tkmath.}
proc isCNu*(this: GeomElementarySurface; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsCNu", dynlib: tkmath.}
proc isCNv*(this: GeomElementarySurface; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsCNv", dynlib: tkmath.}
proc dumpJson*(this: GeomElementarySurface; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkmath.}