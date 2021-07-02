##  Created on: 1993-07-19
##  Created by: Remi LEQUETTE
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom_Surface"
type
  GeomToolsSurfaceSet* {.importcpp: "GeomTools_SurfaceSet",
                        header: "GeomTools_SurfaceSet.hxx", bycopy.} = object ## ! Returns an empty set of
                                                                         ## Surfaces.


proc constructGeomToolsSurfaceSet*(): GeomToolsSurfaceSet {.constructor,
    importcpp: "GeomTools_SurfaceSet(@)", header: "GeomTools_SurfaceSet.hxx".}
proc clear*(this: var GeomToolsSurfaceSet) {.importcpp: "Clear",
    header: "GeomTools_SurfaceSet.hxx".}
proc add*(this: var GeomToolsSurfaceSet; s: Handle[GeomSurface]): StandardInteger {.
    importcpp: "Add", header: "GeomTools_SurfaceSet.hxx".}
proc surface*(this: GeomToolsSurfaceSet; i: StandardInteger): Handle[GeomSurface] {.
    noSideEffect, importcpp: "Surface", header: "GeomTools_SurfaceSet.hxx".}
proc index*(this: GeomToolsSurfaceSet; s: Handle[GeomSurface]): StandardInteger {.
    noSideEffect, importcpp: "Index", header: "GeomTools_SurfaceSet.hxx".}
proc dump*(this: GeomToolsSurfaceSet; os: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "GeomTools_SurfaceSet.hxx".}
proc write*(this: GeomToolsSurfaceSet; os: var StandardOStream;
           theProgress: MessageProgressRange = messageProgressRange()) {.
    noSideEffect, importcpp: "Write", header: "GeomTools_SurfaceSet.hxx".}
proc read*(this: var GeomToolsSurfaceSet; `is`: var StandardIStream;
          theProgress: MessageProgressRange = messageProgressRange()) {.
    importcpp: "Read", header: "GeomTools_SurfaceSet.hxx".}
proc printSurface*(s: Handle[GeomSurface]; os: var StandardOStream;
                  compact: StandardBoolean = standardFalse) {.
    importcpp: "GeomTools_SurfaceSet::PrintSurface(@)",
    header: "GeomTools_SurfaceSet.hxx".}
proc readSurface*(`is`: var StandardIStream): Handle[GeomSurface] {.
    importcpp: "GeomTools_SurfaceSet::ReadSurface(@)",
    header: "GeomTools_SurfaceSet.hxx".}

