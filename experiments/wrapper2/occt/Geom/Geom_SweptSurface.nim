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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Dir,
  ../GeomAbs/GeomAbs_Shape, Geom_Surface

discard "forward decl of Geom_Curve"
discard "forward decl of gp_Dir"
discard "forward decl of Geom_SweptSurface"
discard "forward decl of Geom_SweptSurface"
type
  Handle_Geom_SweptSurface* = handle[Geom_SweptSurface]

## ! Describes the common behavior for surfaces
## ! constructed by sweeping a curve with another curve.
## ! The Geom package provides two concrete derived
## ! surfaces: surface of revolution (a revolved surface),
## ! and surface of linear extrusion (an extruded surface).

type
  Geom_SweptSurface* {.importcpp: "Geom_SweptSurface",
                      header: "Geom_SweptSurface.hxx", bycopy.} = object of Geom_Surface ##
                                                                                  ## !
                                                                                  ## returns
                                                                                  ## the
                                                                                  ## continuity
                                                                                  ## of
                                                                                  ## the
                                                                                  ## surface
                                                                                  ## :
                                                                                  ##
                                                                                  ## !
                                                                                  ## C0
                                                                                  ## :
                                                                                  ## only
                                                                                  ## geometric
                                                                                  ## continuity,
                                                                                  ##
                                                                                  ## !
                                                                                  ## C1
                                                                                  ## :
                                                                                  ## continuity
                                                                                  ## of
                                                                                  ## the
                                                                                  ## first
                                                                                  ## derivative
                                                                                  ## all
                                                                                  ## along
                                                                                  ## the
                                                                                  ## surface,
                                                                                  ##
                                                                                  ## !
                                                                                  ## C2
                                                                                  ## :
                                                                                  ## continuity
                                                                                  ## of
                                                                                  ## the
                                                                                  ## second
                                                                                  ## derivative
                                                                                  ## all
                                                                                  ## along
                                                                                  ## the
                                                                                  ## surface,
                                                                                  ##
                                                                                  ## !
                                                                                  ## C3
                                                                                  ## :
                                                                                  ## continuity
                                                                                  ## of
                                                                                  ## the
                                                                                  ## third
                                                                                  ## derivative
                                                                                  ## all
                                                                                  ## along
                                                                                  ## the
                                                                                  ## surface,
                                                                                  ##
                                                                                  ## !
                                                                                  ## G1
                                                                                  ## :
                                                                                  ## tangency
                                                                                  ## continuity
                                                                                  ## all
                                                                                  ## along
                                                                                  ## the
                                                                                  ## surface,
                                                                                  ##
                                                                                  ## !
                                                                                  ## G2
                                                                                  ## :
                                                                                  ## curvature
                                                                                  ## continuity
                                                                                  ## all
                                                                                  ## along
                                                                                  ## the
                                                                                  ## surface,
                                                                                  ##
                                                                                  ## !
                                                                                  ## CN
                                                                                  ## :
                                                                                  ## the
                                                                                  ## order
                                                                                  ## of
                                                                                  ## continuity
                                                                                  ## is
                                                                                  ## infinite.


proc Continuity*(this: Geom_SweptSurface): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "Geom_SweptSurface.hxx".}
proc Direction*(this: Geom_SweptSurface): gp_Dir {.noSideEffect,
    importcpp: "Direction", header: "Geom_SweptSurface.hxx".}
proc BasisCurve*(this: Geom_SweptSurface): handle[Geom_Curve] {.noSideEffect,
    importcpp: "BasisCurve", header: "Geom_SweptSurface.hxx".}
proc DumpJson*(this: Geom_SweptSurface; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom_SweptSurface.hxx".}
type
  Geom_SweptSurfacebase_type* = Geom_Surface

proc get_type_name*(): cstring {.importcpp: "Geom_SweptSurface::get_type_name(@)",
                              header: "Geom_SweptSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom_SweptSurface::get_type_descriptor(@)",
    header: "Geom_SweptSurface.hxx".}
proc DynamicType*(this: Geom_SweptSurface): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_SweptSurface.hxx".}