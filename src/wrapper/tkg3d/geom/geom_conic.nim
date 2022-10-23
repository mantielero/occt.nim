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

discard "forward decl of Geom_Conic"
type
  HandleGeomConic* = Handle[GeomConic]

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
  GeomConic* {.importcpp: "Geom_Conic", header: "Geom_Conic.hxx", bycopy.} = object of GeomCurve ##
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


proc setAxis*(this: var GeomConic; theA1: Ax1Obj) {.cdecl, importcpp: "SetAxis",
    header: "Geom_Conic.hxx".}
proc setLocation*(this: var GeomConic; theP: PntObj) {.cdecl, importcpp: "SetLocation",
    header: "Geom_Conic.hxx".}
proc setPosition*(this: var GeomConic; theA2: Ax2Obj) {.cdecl, importcpp: "SetPosition",
    header: "Geom_Conic.hxx".}
proc axis*(this: GeomConic): Ax1Obj {.noSideEffect, cdecl, importcpp: "Axis", header: "Geom_Conic.hxx".}
proc location*(this: GeomConic): PntObj {.noSideEffect, cdecl, importcpp: "Location",
                                   header: "Geom_Conic.hxx".}
proc position*(this: GeomConic): Ax2Obj {.noSideEffect, cdecl, importcpp: "Position",
                                   header: "Geom_Conic.hxx".}
proc eccentricity*(this: GeomConic): cfloat {.noSideEffect, cdecl,
    importcpp: "Eccentricity", header: "Geom_Conic.hxx".}
proc xAxis*(this: GeomConic): Ax1Obj {.noSideEffect, cdecl, importcpp: "XAxis",
                                header: "Geom_Conic.hxx".}
proc yAxis*(this: GeomConic): Ax1Obj {.noSideEffect, cdecl, importcpp: "YAxis",
                                header: "Geom_Conic.hxx".}
proc reverse*(this: var GeomConic) {.cdecl, importcpp: "Reverse", header: "Geom_Conic.hxx".}
proc reversedParameter*(this: GeomConic; u: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "ReversedParameter", header: "Geom_Conic.hxx".}
proc continuity*(this: GeomConic): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "Geom_Conic.hxx".}
proc isCN*(this: GeomConic; n: cint): bool {.noSideEffect, cdecl, importcpp: "IsCN",
                                       header: "Geom_Conic.hxx".}
proc dumpJson*(this: GeomConic; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "Geom_Conic.hxx".}