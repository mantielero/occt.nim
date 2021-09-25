##  Created on: 1994-07-22
##  Created by: Remi LEQUETTE
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of Geom_Surface"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopLoc_Location"
type
  BRepLibFindSurface* {.importcpp: "BRepLib_FindSurface",
                       header: "BRepLib_FindSurface.hxx", bycopy.} = object


proc constructBRepLibFindSurface*(): BRepLibFindSurface {.constructor,
    importcpp: "BRepLib_FindSurface(@)", header: "BRepLib_FindSurface.hxx".}
proc constructBRepLibFindSurface*(s: TopoDS_Shape; tol: float = -1;
                                 onlyPlane: bool = false; onlyClosed: bool = false): BRepLibFindSurface {.
    constructor, importcpp: "BRepLib_FindSurface(@)",
    header: "BRepLib_FindSurface.hxx".}
proc init*(this: var BRepLibFindSurface; s: TopoDS_Shape; tol: float = -1;
          onlyPlane: bool = false; onlyClosed: bool = false) {.importcpp: "Init",
    header: "BRepLib_FindSurface.hxx".}
proc found*(this: BRepLibFindSurface): bool {.noSideEffect, importcpp: "Found",
    header: "BRepLib_FindSurface.hxx".}
proc surface*(this: BRepLibFindSurface): Handle[GeomSurface] {.noSideEffect,
    importcpp: "Surface", header: "BRepLib_FindSurface.hxx".}
proc tolerance*(this: BRepLibFindSurface): float {.noSideEffect,
    importcpp: "Tolerance", header: "BRepLib_FindSurface.hxx".}
proc toleranceReached*(this: BRepLibFindSurface): float {.noSideEffect,
    importcpp: "ToleranceReached", header: "BRepLib_FindSurface.hxx".}
proc existed*(this: BRepLibFindSurface): bool {.noSideEffect, importcpp: "Existed",
    header: "BRepLib_FindSurface.hxx".}
proc location*(this: BRepLibFindSurface): TopLocLocation {.noSideEffect,
    importcpp: "Location", header: "BRepLib_FindSurface.hxx".}
