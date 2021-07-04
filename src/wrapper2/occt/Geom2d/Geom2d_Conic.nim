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

import
  ../gp/gp_Ax22d, Geom2d_Curve

discard "forward decl of Geom2d_Conic"
discard "forward decl of Geom2d_Conic"
type
  Handle_Geom2d_Conic* = handle[Geom2d_Conic]

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
  Geom2d_Conic* {.importcpp: "Geom2d_Conic", header: "Geom2d_Conic.hxx", bycopy.} = object of Geom2d_Curve ##
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


proc SetAxis*(this: var Geom2d_Conic; theA: gp_Ax22d) {.importcpp: "SetAxis",
    header: "Geom2d_Conic.hxx".}
proc SetXAxis*(this: var Geom2d_Conic; theAX: gp_Ax2d) {.importcpp: "SetXAxis",
    header: "Geom2d_Conic.hxx".}
proc SetYAxis*(this: var Geom2d_Conic; theAY: gp_Ax2d) {.importcpp: "SetYAxis",
    header: "Geom2d_Conic.hxx".}
proc SetLocation*(this: var Geom2d_Conic; theP: gp_Pnt2d) {.importcpp: "SetLocation",
    header: "Geom2d_Conic.hxx".}
proc XAxis*(this: Geom2d_Conic): gp_Ax2d {.noSideEffect, importcpp: "XAxis",
                                       header: "Geom2d_Conic.hxx".}
proc YAxis*(this: Geom2d_Conic): gp_Ax2d {.noSideEffect, importcpp: "YAxis",
                                       header: "Geom2d_Conic.hxx".}
proc Eccentricity*(this: Geom2d_Conic): Standard_Real {.noSideEffect,
    importcpp: "Eccentricity", header: "Geom2d_Conic.hxx".}
proc Location*(this: Geom2d_Conic): gp_Pnt2d {.noSideEffect, importcpp: "Location",
    header: "Geom2d_Conic.hxx".}
proc Position*(this: Geom2d_Conic): gp_Ax22d {.noSideEffect, importcpp: "Position",
    header: "Geom2d_Conic.hxx".}
proc Reverse*(this: var Geom2d_Conic) {.importcpp: "Reverse",
                                    header: "Geom2d_Conic.hxx".}
proc ReversedParameter*(this: Geom2d_Conic; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "ReversedParameter", header: "Geom2d_Conic.hxx".}
proc Continuity*(this: Geom2d_Conic): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "Geom2d_Conic.hxx".}
proc IsCN*(this: Geom2d_Conic; N: Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "IsCN", header: "Geom2d_Conic.hxx".}
proc DumpJson*(this: Geom2d_Conic; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom2d_Conic.hxx".}
type
  Geom2d_Conicbase_type* = Geom2d_Curve

proc get_type_name*(): cstring {.importcpp: "Geom2d_Conic::get_type_name(@)",
                              header: "Geom2d_Conic.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom2d_Conic::get_type_descriptor(@)", header: "Geom2d_Conic.hxx".}
proc DynamicType*(this: Geom2d_Conic): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom2d_Conic.hxx".}