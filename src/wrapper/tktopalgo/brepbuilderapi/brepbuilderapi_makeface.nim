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

discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pln"
discard "forward decl of gp_Cylinder"
discard "forward decl of gp_Cone"
discard "forward decl of gp_Sphere"
discard "forward decl of gp_Torus"
discard "forward decl of Geom_Surface"
discard "forward decl of TopoDS_Wire"
type
  BRepBuilderAPI_MakeFace* {.importcpp: "BRepBuilderAPI_MakeFace",
                            header: "BRepBuilderAPI_MakeFace.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                          ## !
                                                                                                          ## Not
                                                                                                          ## done.


proc newFace*(): BRepBuilderAPI_MakeFace {.cdecl, constructor,
    importcpp: "BRepBuilderAPI_MakeFace(@)", dynlib: tktopalgo.}
proc newFace*(f: TopoDS_Face): BRepBuilderAPI_MakeFace {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", dynlib: tktopalgo.}
proc newFace*(p: Pln): BRepBuilderAPI_MakeFace {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", dynlib: tktopalgo.}
proc newFace*(c: Cylinder): BRepBuilderAPI_MakeFace {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", dynlib: tktopalgo.}
proc newFace*(c: Cone): BRepBuilderAPI_MakeFace {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", dynlib: tktopalgo.}
proc newFace*(s: Sphere): BRepBuilderAPI_MakeFace {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", dynlib: tktopalgo.}
proc newFace*(c: Torus): BRepBuilderAPI_MakeFace {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", dynlib: tktopalgo.}
proc newFace*(s: Handle[GeomSurface]; tolDegen: cfloat): BRepBuilderAPI_MakeFace {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", dynlib: tktopalgo.}
proc newFace*(p: Pln; uMin: cfloat; uMax: cfloat; vMin: cfloat;
                                vMax: cfloat): BRepBuilderAPI_MakeFace {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", dynlib: tktopalgo.}
proc newFace*(c: Cylinder; uMin: cfloat; uMax: cfloat; vMin: cfloat;
                                vMax: cfloat): BRepBuilderAPI_MakeFace {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", dynlib: tktopalgo.}
proc newFace*(c: Cone; uMin: cfloat; uMax: cfloat; vMin: cfloat;
                                vMax: cfloat): BRepBuilderAPI_MakeFace {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", dynlib: tktopalgo.}
proc newFace*(s: Sphere; uMin: cfloat; uMax: cfloat; vMin: cfloat;
                                vMax: cfloat): BRepBuilderAPI_MakeFace {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", dynlib: tktopalgo.}
proc newFace*(c: Torus; uMin: cfloat; uMax: cfloat; vMin: cfloat;
                                vMax: cfloat): BRepBuilderAPI_MakeFace {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", dynlib: tktopalgo.}
proc newFace*(s: Handle[GeomSurface]; uMin: cfloat; uMax: cfloat;
                                vMin: cfloat; vMax: cfloat; tolDegen: cfloat): BRepBuilderAPI_MakeFace {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", dynlib: tktopalgo.}
proc newFace*(w: TopoDS_Wire; onlyPlane: bool = false): BRepBuilderAPI_MakeFace {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", dynlib: tktopalgo.}
proc newFace*(p: Pln; w: TopoDS_Wire; inside: bool = true): BRepBuilderAPI_MakeFace {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", dynlib: tktopalgo.}
proc newFace*(c: Cylinder; w: TopoDS_Wire; inside: bool = true): BRepBuilderAPI_MakeFace {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", dynlib: tktopalgo.}
proc newFace*(c: Cone; w: TopoDS_Wire; inside: bool = true): BRepBuilderAPI_MakeFace {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", dynlib: tktopalgo.}
proc newFace*(s: Sphere; w: TopoDS_Wire; inside: bool = true): BRepBuilderAPI_MakeFace {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", dynlib: tktopalgo.}
proc newFace*(c: Torus; w: TopoDS_Wire; inside: bool = true): BRepBuilderAPI_MakeFace {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", dynlib: tktopalgo.}
proc newFace*(s: Handle[GeomSurface]; w: TopoDS_Wire;
                                inside: bool = true): BRepBuilderAPI_MakeFace {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", dynlib: tktopalgo.}
proc newFace*(f: TopoDS_Face; w: TopoDS_Wire): BRepBuilderAPI_MakeFace {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeFace(@)", dynlib: tktopalgo.}
proc init*(this: var BRepBuilderAPI_MakeFace; f: TopoDS_Face) {.cdecl,
    importcpp: "Init", dynlib: tktopalgo.}
proc init*(this: var BRepBuilderAPI_MakeFace; s: Handle[GeomSurface]; bound: bool;
          tolDegen: cfloat) {.cdecl, importcpp: "Init", dynlib: tktopalgo.}
proc init*(this: var BRepBuilderAPI_MakeFace; s: Handle[GeomSurface]; uMin: cfloat;
          uMax: cfloat; vMin: cfloat; vMax: cfloat; tolDegen: cfloat) {.cdecl,
    importcpp: "Init", dynlib: tktopalgo.}
proc add*(this: var BRepBuilderAPI_MakeFace; w: TopoDS_Wire) {.cdecl, importcpp: "Add",
    dynlib: tktopalgo.}
proc isDone*(this: BRepBuilderAPI_MakeFace): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", dynlib: tktopalgo.}
proc error*(this: BRepBuilderAPI_MakeFace): BRepBuilderAPI_FaceError {.noSideEffect,
    cdecl, importcpp: "Error", dynlib: tktopalgo.}
proc face*(this: BRepBuilderAPI_MakeFace): TopoDS_Face {.noSideEffect, cdecl,
    importcpp: "Face", dynlib: tktopalgo.}
converter `topoDS_Face`*(this: BRepBuilderAPI_MakeFace): TopoDS_Face {.noSideEffect,
    cdecl, importcpp: "BRepBuilderAPI_MakeFace::operator TopoDS_Face",
    dynlib: tktopalgo.}