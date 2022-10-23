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

discard "forward decl of Geom_Curve"
discard "forward decl of gp_Dir"
discard "forward decl of Geom_SweptSurface"
type
  HandleGeomSweptSurface* = Handle[GeomSweptSurface]

## ! Describes the common behavior for surfaces
## ! constructed by sweeping a curve with another curve.
## ! The Geom package provides two concrete derived
## ! surfaces: surface of revolution (a revolved surface),
## ! and surface of linear extrusion (an extruded surface).

type
  GeomSweptSurface* {.importcpp: "Geom_SweptSurface",
                     header: "Geom_SweptSurface.hxx", bycopy.} = object of GeomSurface ##
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


proc continuity*(this: GeomSweptSurface): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "Geom_SweptSurface.hxx".}
proc direction*(this: GeomSweptSurface): DirObj {.noSideEffect, cdecl,
    importcpp: "Direction", header: "Geom_SweptSurface.hxx".}
proc basisCurve*(this: GeomSweptSurface): Handle[GeomCurve] {.noSideEffect, cdecl,
    importcpp: "BasisCurve", header: "Geom_SweptSurface.hxx".}
proc dumpJson*(this: GeomSweptSurface; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom_SweptSurface.hxx".}