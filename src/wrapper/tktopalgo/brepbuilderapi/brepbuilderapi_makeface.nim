import ../../tkmath/gp/gp_types
import brepbuilderapi_types
import ../../tkernel/standard/standard_types
import ../../tkbrep/topods/topods_types
import ../../tkg3d/geom/geom_types





##  Created on: 1993-07-12
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



proc face*(): BRepBuilderAPI_MakeFace {.cdecl, constructor,
    importcpp: "BRepBuilderAPI_MakeFace(@)", header: "BRepBuilderAPI_MakeFace.hxx".}
proc face*(f: TopoDS_Face): BRepBuilderAPI_MakeFace {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", header: "BRepBuilderAPI_MakeFace.hxx".}
proc face*(p: PlnObj): BRepBuilderAPI_MakeFace {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", header: "BRepBuilderAPI_MakeFace.hxx".}
proc face*(c: CylinderObj): BRepBuilderAPI_MakeFace {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", header: "BRepBuilderAPI_MakeFace.hxx".}
proc face*(c: ConeObj): BRepBuilderAPI_MakeFace {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", header: "BRepBuilderAPI_MakeFace.hxx".}
proc face*(s: SphereObj): BRepBuilderAPI_MakeFace {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", header: "BRepBuilderAPI_MakeFace.hxx".}
proc face*(c: TorusObj): BRepBuilderAPI_MakeFace {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", header: "BRepBuilderAPI_MakeFace.hxx".}
proc face*(s: Handle[GeomSurface]; tolDegen: cfloat): BRepBuilderAPI_MakeFace {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", header: "BRepBuilderAPI_MakeFace.hxx".}
proc face*(p: PlnObj; uMin: cfloat; uMax: cfloat; vMin: cfloat;
                                vMax: cfloat): BRepBuilderAPI_MakeFace {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", header: "BRepBuilderAPI_MakeFace.hxx".}
proc face*(c: CylinderObj; uMin: cfloat; uMax: cfloat; vMin: cfloat;
                                vMax: cfloat): BRepBuilderAPI_MakeFace {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", header: "BRepBuilderAPI_MakeFace.hxx".}
proc face*(c: ConeObj; uMin: cfloat; uMax: cfloat; vMin: cfloat;
                                vMax: cfloat): BRepBuilderAPI_MakeFace {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", header: "BRepBuilderAPI_MakeFace.hxx".}
proc face*(s: SphereObj; uMin: cfloat; uMax: cfloat; vMin: cfloat;
                                vMax: cfloat): BRepBuilderAPI_MakeFace {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", header: "BRepBuilderAPI_MakeFace.hxx".}
proc face*(c: TorusObj; uMin: cfloat; uMax: cfloat; vMin: cfloat;
                                vMax: cfloat): BRepBuilderAPI_MakeFace {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", header: "BRepBuilderAPI_MakeFace.hxx".}
proc face*(s: Handle[GeomSurface]; uMin: cfloat; uMax: cfloat;
                                vMin: cfloat; vMax: cfloat; tolDegen: cfloat): BRepBuilderAPI_MakeFace {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", header: "BRepBuilderAPI_MakeFace.hxx".}
proc face*(w: TopoDS_Wire; onlyPlane: bool = false): BRepBuilderAPI_MakeFace {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", header: "BRepBuilderAPI_MakeFace.hxx".}
proc face*(p: PlnObj; w: TopoDS_Wire; inside: bool = true): BRepBuilderAPI_MakeFace {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", header: "BRepBuilderAPI_MakeFace.hxx".}
proc face*(c: CylinderObj; w: TopoDS_Wire; inside: bool = true): BRepBuilderAPI_MakeFace {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", header: "BRepBuilderAPI_MakeFace.hxx".}
proc face*(c: ConeObj; w: TopoDS_Wire; inside: bool = true): BRepBuilderAPI_MakeFace {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", header: "BRepBuilderAPI_MakeFace.hxx".}
proc face*(s: SphereObj; w: TopoDS_Wire; inside: bool = true): BRepBuilderAPI_MakeFace {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", header: "BRepBuilderAPI_MakeFace.hxx".}
proc face*(c: TorusObj; w: TopoDS_Wire; inside: bool = true): BRepBuilderAPI_MakeFace {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", header: "BRepBuilderAPI_MakeFace.hxx".}
proc face*(s: Handle[GeomSurface]; w: TopoDS_Wire;
                                inside: bool = true): BRepBuilderAPI_MakeFace {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", header: "BRepBuilderAPI_MakeFace.hxx".}
proc face*(f: TopoDS_Face; w: TopoDS_Wire): BRepBuilderAPI_MakeFace {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", header: "BRepBuilderAPI_MakeFace.hxx".}
proc init*(this: var BRepBuilderAPI_MakeFace; f: TopoDS_Face) {.cdecl,
    importcpp: "Init", header: "BRepBuilderAPI_MakeFace.hxx".}
proc init*(this: var BRepBuilderAPI_MakeFace; s: Handle[GeomSurface]; bound: bool;
          tolDegen: cfloat) {.cdecl, importcpp: "Init", header: "BRepBuilderAPI_MakeFace.hxx".}
proc init*(this: var BRepBuilderAPI_MakeFace; s: Handle[GeomSurface]; uMin: cfloat;
          uMax: cfloat; vMin: cfloat; vMax: cfloat; tolDegen: cfloat) {.cdecl,
    importcpp: "Init", header: "BRepBuilderAPI_MakeFace.hxx".}
proc add*(this: var BRepBuilderAPI_MakeFace; w: TopoDS_Wire) {.cdecl, importcpp: "Add",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc isDone*(this: BRepBuilderAPI_MakeFace): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "BRepBuilderAPI_MakeFace.hxx".}
proc error*(this: BRepBuilderAPI_MakeFace): BRepBuilderAPI_FaceError {.noSideEffect,
    cdecl, importcpp: "Error", header: "BRepBuilderAPI_MakeFace.hxx".}
proc face*(this: BRepBuilderAPI_MakeFace): TopoDS_Face {.noSideEffect, cdecl,
    importcpp: "Face", header: "BRepBuilderAPI_MakeFace.hxx".}
converter `topoDS_Face`*(this: BRepBuilderAPI_MakeFace): TopoDS_Face {.noSideEffect,
    cdecl, importcpp: "BRepBuilderAPI_MakeFace::operator TopoDS_Face",
    header: "BRepBuilderAPI_MakeFace.hxx".}


