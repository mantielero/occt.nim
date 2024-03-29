import brepbuilderapi_types
import ../standard/standard_types
import ../topods/topods_types
import ../geom/geom_types





##  Created on: 1995-11-02
##  Created by: Jing Cheng MEI
##  Copyright (c) 1995-1999 Matra Datavision
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



proc findPlane*(): BRepBuilderAPI_FindPlane {.cdecl, constructor,
    importcpp: "BRepBuilderAPI_FindPlane(@)", header: "BRepBuilderAPI_FindPlane.hxx".}
proc findPlane*(s: TopoDS_Shape; tol: cfloat = -1): BRepBuilderAPI_FindPlane {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_FindPlane(@)", header: "BRepBuilderAPI_FindPlane.hxx".}
proc init*(this: var BRepBuilderAPI_FindPlane; s: TopoDS_Shape; tol: cfloat = -1) {.cdecl,
    importcpp: "Init", header: "BRepBuilderAPI_FindPlane.hxx".}
proc found*(this: BRepBuilderAPI_FindPlane): bool {.noSideEffect, cdecl,
    importcpp: "Found", header: "BRepBuilderAPI_FindPlane.hxx".}
proc plane*(this: BRepBuilderAPI_FindPlane): Handle[GeomPlane] {.noSideEffect, cdecl,
    importcpp: "Plane", header: "BRepBuilderAPI_FindPlane.hxx".}


