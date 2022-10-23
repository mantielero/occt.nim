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

discard "forward decl of Geom2d_Conic"
type
  HandleGeom2dConic* = Handle[Geom2dConic]

## ! The abstract class Conic describes the common
## ! behavior of conic curves in 2D space and, in
## ! particular, their general characteristics. The Geom2d
## ! package provides four specific classes of conics:
## ! Geom2d_Circle, Geom2d_Ellipse,
## ! Geom2d_Hyperbola and Geom2d_Parabola.
## ! A conic is positioned in the plane with a coordinate
## ! system (gp_Ax22d object), where the origin is the
## ! center of the conic (or the apex in case of a parabola).
## ! This coordinate system is the local coordinate
## ! system of the conic. It gives the conic an explicit
## ! orientation, determining the direction in which the
## ! parameter increases along the conic. The "X Axis" of
## ! the local coordinate system also defines the origin of
## ! the parameter of the conic.

type
  Geom2dConic* {.importcpp: "Geom2d_Conic", header: "Geom2d_Conic.hxx", bycopy.} = object of Geom2dCurve ##
                                                                                               ## !
                                                                                               ## Modifies
                                                                                               ## this
                                                                                               ## conic,
                                                                                               ## redefining
                                                                                               ## its
                                                                                               ## local
                                                                                               ## coordinate
                                                                                               ## system
                                                                                               ##
                                                                                               ## !
                                                                                               ## partially,
                                                                                               ## by
                                                                                               ## assigning
                                                                                               ## theA
                                                                                               ## as
                                                                                               ## its
                                                                                               ## axis


proc setAxis*(this: var Geom2dConic; theA: Ax22dObj) {.cdecl, importcpp: "SetAxis",
    header: "Geom2d_Conic.hxx".}
proc setXAxis*(this: var Geom2dConic; theAX: Ax2dObj) {.cdecl, importcpp: "SetXAxis",
    header: "Geom2d_Conic.hxx".}
proc setYAxis*(this: var Geom2dConic; theAY: Ax2dObj) {.cdecl, importcpp: "SetYAxis",
    header: "Geom2d_Conic.hxx".}
proc setLocation*(this: var Geom2dConic; theP: Pnt2dObj) {.cdecl,
    importcpp: "SetLocation", header: "Geom2d_Conic.hxx".}
proc xAxis*(this: Geom2dConic): Ax2dObj {.noSideEffect, cdecl, importcpp: "XAxis",
                                   header: "Geom2d_Conic.hxx".}
proc yAxis*(this: Geom2dConic): Ax2dObj {.noSideEffect, cdecl, importcpp: "YAxis",
                                   header: "Geom2d_Conic.hxx".}
proc eccentricity*(this: Geom2dConic): cfloat {.noSideEffect, cdecl,
    importcpp: "Eccentricity", header: "Geom2d_Conic.hxx".}
proc location*(this: Geom2dConic): Pnt2dObj {.noSideEffect, cdecl, importcpp: "Location",
                                       header: "Geom2d_Conic.hxx".}
proc position*(this: Geom2dConic): Ax22dObj {.noSideEffect, cdecl, importcpp: "Position",
                                       header: "Geom2d_Conic.hxx".}
proc reverse*(this: var Geom2dConic) {.cdecl, importcpp: "Reverse", header: "Geom2d_Conic.hxx".}
proc reversedParameter*(this: Geom2dConic; u: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "ReversedParameter", header: "Geom2d_Conic.hxx".}
proc continuity*(this: Geom2dConic): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "Geom2d_Conic.hxx".}
proc isCN*(this: Geom2dConic; n: cint): bool {.noSideEffect, cdecl, importcpp: "IsCN",
    header: "Geom2d_Conic.hxx".}
proc dumpJson*(this: Geom2dConic; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom2d_Conic.hxx".}