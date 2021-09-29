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
                            header: "BRepBuilderAPI_MakeFace.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape


proc `new`*(this: var BRepBuilderAPI_MakeFace; theSize: csize_t): pointer {.
    importcpp: "BRepBuilderAPI_MakeFace::operator new",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc `delete`*(this: var BRepBuilderAPI_MakeFace; theAddress: pointer) {.
    importcpp: "BRepBuilderAPI_MakeFace::operator delete",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc `new[]`*(this: var BRepBuilderAPI_MakeFace; theSize: csize_t): pointer {.
    importcpp: "BRepBuilderAPI_MakeFace::operator new[]",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc `delete[]`*(this: var BRepBuilderAPI_MakeFace; theAddress: pointer) {.
    importcpp: "BRepBuilderAPI_MakeFace::operator delete[]",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc `new`*(this: var BRepBuilderAPI_MakeFace; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepBuilderAPI_MakeFace::operator new",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc `delete`*(this: var BRepBuilderAPI_MakeFace; a2: pointer; a3: pointer) {.
    importcpp: "BRepBuilderAPI_MakeFace::operator delete",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc makeFace*(): BRepBuilderAPI_MakeFace {.constructor,
    importcpp: "BRepBuilderAPI_MakeFace(@)", header: "BRepBuilderAPI_MakeFace.hxx".}
proc makeFace*(f: TopoDS_Face): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc makeFace*(p: Pln): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc makeFace*(c: Cylinder): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc makeFace*(c: Cone): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc makeFace*(s: Sphere): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc makeFace*(c: Torus): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc makeFace*(s: Handle[GeomSurface];
                                      tolDegen: StandardReal): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc makeFace*(p: Pln; uMin: StandardReal;
                                      uMax: StandardReal; vMin: StandardReal;
                                      vMax: StandardReal): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc makeFace*(c: Cylinder; uMin: StandardReal;
                                      uMax: StandardReal; vMin: StandardReal;
                                      vMax: StandardReal): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc makeFace*(c: Cone; uMin: StandardReal;
                                      uMax: StandardReal; vMin: StandardReal;
                                      vMax: StandardReal): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc makeFace*(s: Sphere; uMin: StandardReal;
                                      uMax: StandardReal; vMin: StandardReal;
                                      vMax: StandardReal): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc makeFace*(c: Torus; uMin: StandardReal;
                                      uMax: StandardReal; vMin: StandardReal;
                                      vMax: StandardReal): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc makeFace*(s: Handle[GeomSurface]; uMin: StandardReal;
                                      uMax: StandardReal; vMin: StandardReal;
                                      vMax: StandardReal; tolDegen: StandardReal): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc makeFace*(w: TopoDS_Wire;
                                      onlyPlane: StandardBoolean = false): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc makeFace*(p: Pln; w: TopoDS_Wire;
                                      inside: StandardBoolean = true): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc makeFace*(c: Cylinder; w: TopoDS_Wire;
                                      inside: StandardBoolean = true): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc makeFace*(c: Cone; w: TopoDS_Wire;
                                      inside: StandardBoolean = true): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc makeFace*(s: Sphere; w: TopoDS_Wire;
                                      inside: StandardBoolean = true): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc makeFace*(c: Torus; w: TopoDS_Wire;
                                      inside: StandardBoolean = true): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc makeFace*(s: Handle[GeomSurface]; w: TopoDS_Wire;
                                      inside: StandardBoolean = true): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc makeFace*(f: TopoDS_Face; w: TopoDS_Wire): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc init*(this: var BRepBuilderAPI_MakeFace; f: TopoDS_Face) {.importcpp: "Init",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc init*(this: var BRepBuilderAPI_MakeFace; s: Handle[GeomSurface];
          bound: StandardBoolean; tolDegen: StandardReal) {.importcpp: "Init",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc init*(this: var BRepBuilderAPI_MakeFace; s: Handle[GeomSurface];
          uMin: StandardReal; uMax: StandardReal; vMin: StandardReal;
          vMax: StandardReal; tolDegen: StandardReal) {.importcpp: "Init",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc add*(this: var BRepBuilderAPI_MakeFace; w: TopoDS_Wire) {.importcpp: "Add",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc isDone*(this: BRepBuilderAPI_MakeFace): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepBuilderAPI_MakeFace.hxx".}
proc error*(this: BRepBuilderAPI_MakeFace): BRepBuilderAPI_FaceError {.noSideEffect,
    importcpp: "Error", header: "BRepBuilderAPI_MakeFace.hxx".}
proc face*(this: BRepBuilderAPI_MakeFace): TopoDS_Face {.noSideEffect,
    importcpp: "Face", header: "BRepBuilderAPI_MakeFace.hxx".}
converter `topoDS_Face`*(this: BRepBuilderAPI_MakeFace): TopoDS_Face {.noSideEffect,
    importcpp: "BRepBuilderAPI_MakeFace::operator TopoDS_Face",
    header: "BRepBuilderAPI_MakeFace.hxx".}