import breplib_types
import ../../tkbrep/topods/topods_types
import ../../tkernel/standard/standard_types
import ../../tkg3d/geom/geom_types
import ../../tkmath/toploc/toploc_types
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
discard "forward decl of TopoDS_Shape"

proc newBRepLib_FindSurface*(): BRepLib_FindSurface {.cdecl, constructor,
    importcpp: "BRepLib_FindSurface(@)".}
proc newBRepLib_FindSurface*(S: TopoDS_Shape; Tol: cfloat = -1;
                            OnlyPlane: bool = false; OnlyClosed: bool = false): BRepLib_FindSurface {.
    cdecl, constructor, importcpp: "BRepLib_FindSurface(@)".}
proc Init*(this: var BRepLib_FindSurface; S: TopoDS_Shape; Tol: cfloat = -1;
          OnlyPlane: bool = false; OnlyClosed: bool = false) {.cdecl, importcpp: "Init",
    .}
proc Found*(this: BRepLib_FindSurface): bool {.noSideEffect, cdecl,
    importcpp: "Found".}
proc Surface*(this: BRepLib_FindSurface): Handle[Geom_Surface] {.noSideEffect, cdecl,
    importcpp: "Surface".}
proc Tolerance*(this: BRepLib_FindSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "Tolerance".}
proc ToleranceReached*(this: BRepLib_FindSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "ToleranceReached".}
proc Existed*(this: BRepLib_FindSurface): bool {.noSideEffect, cdecl,
    importcpp: "Existed".}
proc Location*(this: BRepLib_FindSurface): TopLoc_Location {.noSideEffect, cdecl,
    importcpp: "Location".}