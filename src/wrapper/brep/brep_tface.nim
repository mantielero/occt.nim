import brep_types
import ../../tkmath/toploc/toploc_types
import ../topods/topods_types
import ../../tkernel/standard/standard_types
import ../../tkg3d/geom/geom_types
import ../../tkmath/poly/poly_types





##  Created on: 1992-05-27
##  Created by: Remi LEQUETTE
##  Copyright (c) 1992-1999 Matra Datavision
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





proc newBRepTFace*(): BRepTFace {.cdecl, constructor, importcpp: "BRep_TFace(@)",
                               header: "BRep_TFace.hxx".}
proc surface*(this: BRepTFace): Handle[GeomSurface] {.noSideEffect, cdecl,
    importcpp: "Surface", header: "BRep_TFace.hxx".}
proc triangulation*(this: BRepTFace): Handle[PolyTriangulation] {.noSideEffect,
    cdecl, importcpp: "Triangulation", header: "BRep_TFace.hxx".}
proc location*(this: BRepTFace): TopLocLocation {.noSideEffect, cdecl,
    importcpp: "Location", header: "BRep_TFace.hxx".}
proc tolerance*(this: BRepTFace): cfloat {.noSideEffect, cdecl,
                                       importcpp: "Tolerance", header: "BRep_TFace.hxx".}
proc surface*(this: var BRepTFace; s: Handle[GeomSurface]) {.cdecl,
    importcpp: "Surface", header: "BRep_TFace.hxx".}
proc triangulation*(this: var BRepTFace; t: Handle[PolyTriangulation]) {.cdecl,
    importcpp: "Triangulation", header: "BRep_TFace.hxx".}
proc location*(this: var BRepTFace; L: TopLocLocation) {.cdecl, importcpp: "Location",
    header: "BRep_TFace.hxx".}
proc tolerance*(this: var BRepTFace; t: cfloat) {.cdecl, importcpp: "Tolerance",
    header: "BRep_TFace.hxx".}
proc naturalRestriction*(this: BRepTFace): bool {.noSideEffect, cdecl,
    importcpp: "NaturalRestriction", header: "BRep_TFace.hxx".}
proc naturalRestriction*(this: var BRepTFace; n: bool) {.cdecl,
    importcpp: "NaturalRestriction", header: "BRep_TFace.hxx".}
proc emptyCopy*(this: BRepTFace): Handle[TopoDS_TShape] {.noSideEffect, cdecl,
    importcpp: "EmptyCopy", header: "BRep_TFace.hxx".}
proc dumpJson*(this: BRepTFace; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "BRep_TFace.hxx".}


