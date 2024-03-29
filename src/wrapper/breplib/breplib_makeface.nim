import breplib_types
import ../topods/topods_types
import ../gp/gp_types
import ../standard/standard_types
import ../geom/geom_types
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

discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pln"
discard "forward decl of gp_Cylinder"
discard "forward decl of gp_Cone"
discard "forward decl of gp_Sphere"
discard "forward decl of gp_Torus"
discard "forward decl of Geom_Surface"
discard "forward decl of TopoDS_Wire"
discard "forward decl of Geom_Curve"


proc newBRepLib_MakeFace*(): BRepLib_MakeFace {.cdecl, constructor,
    importcpp: "BRepLib_MakeFace(@)".}
proc newBRepLib_MakeFace*(F: TopoDS_Face): BRepLib_MakeFace {.cdecl, constructor,
    importcpp: "BRepLib_MakeFace(@)".}
proc newBRepLib_MakeFace*(P: gp_Pln): BRepLib_MakeFace {.cdecl, constructor,
    importcpp: "BRepLib_MakeFace(@)".}
proc newBRepLib_MakeFace*(C: gp_Cylinder): BRepLib_MakeFace {.cdecl, constructor,
    importcpp: "BRepLib_MakeFace(@)".}
proc newBRepLib_MakeFace*(C: gp_Cone): BRepLib_MakeFace {.cdecl, constructor,
    importcpp: "BRepLib_MakeFace(@)".}
proc newBRepLib_MakeFace*(S: gp_Sphere): BRepLib_MakeFace {.cdecl, constructor,
    importcpp: "BRepLib_MakeFace(@)".}
proc newBRepLib_MakeFace*(C: gp_Torus): BRepLib_MakeFace {.cdecl, constructor,
    importcpp: "BRepLib_MakeFace(@)".}
proc newBRepLib_MakeFace*(S: Handle[Geom_Surface]; TolDegen: cfloat): BRepLib_MakeFace {.
    cdecl, constructor, importcpp: "BRepLib_MakeFace(@)".}
proc newBRepLib_MakeFace*(P: gp_Pln; UMin: cfloat; UMax: cfloat; VMin: cfloat;
                         VMax: cfloat): BRepLib_MakeFace {.cdecl, constructor,
    importcpp: "BRepLib_MakeFace(@)".}
proc newBRepLib_MakeFace*(C: gp_Cylinder; UMin: cfloat; UMax: cfloat; VMin: cfloat;
                         VMax: cfloat): BRepLib_MakeFace {.cdecl, constructor,
    importcpp: "BRepLib_MakeFace(@)".}
proc newBRepLib_MakeFace*(C: gp_Cone; UMin: cfloat; UMax: cfloat; VMin: cfloat;
                         VMax: cfloat): BRepLib_MakeFace {.cdecl, constructor,
    importcpp: "BRepLib_MakeFace(@)".}
proc newBRepLib_MakeFace*(S: gp_Sphere; UMin: cfloat; UMax: cfloat; VMin: cfloat;
                         VMax: cfloat): BRepLib_MakeFace {.cdecl, constructor,
    importcpp: "BRepLib_MakeFace(@)".}
proc newBRepLib_MakeFace*(C: gp_Torus; UMin: cfloat; UMax: cfloat; VMin: cfloat;
                         VMax: cfloat): BRepLib_MakeFace {.cdecl, constructor,
    importcpp: "BRepLib_MakeFace(@)".}
proc newBRepLib_MakeFace*(S: Handle[Geom_Surface]; UMin: cfloat; UMax: cfloat;
                         VMin: cfloat; VMax: cfloat; TolDegen: cfloat): BRepLib_MakeFace {.
    cdecl, constructor, importcpp: "BRepLib_MakeFace(@)".}
proc newBRepLib_MakeFace*(W: TopoDS_Wire; OnlyPlane: bool = false): BRepLib_MakeFace {.
    cdecl, constructor, importcpp: "BRepLib_MakeFace(@)".}
proc newBRepLib_MakeFace*(P: gp_Pln; W: TopoDS_Wire; Inside: bool = true): BRepLib_MakeFace {.
    cdecl, constructor, importcpp: "BRepLib_MakeFace(@)".}
proc newBRepLib_MakeFace*(C: gp_Cylinder; W: TopoDS_Wire; Inside: bool = true): BRepLib_MakeFace {.
    cdecl, constructor, importcpp: "BRepLib_MakeFace(@)".}
proc newBRepLib_MakeFace*(C: gp_Cone; W: TopoDS_Wire; Inside: bool = true): BRepLib_MakeFace {.
    cdecl, constructor, importcpp: "BRepLib_MakeFace(@)".}
proc newBRepLib_MakeFace*(S: gp_Sphere; W: TopoDS_Wire; Inside: bool = true): BRepLib_MakeFace {.
    cdecl, constructor, importcpp: "BRepLib_MakeFace(@)".}
proc newBRepLib_MakeFace*(C: gp_Torus; W: TopoDS_Wire; Inside: bool = true): BRepLib_MakeFace {.
    cdecl, constructor, importcpp: "BRepLib_MakeFace(@)".}
proc newBRepLib_MakeFace*(S: Handle[Geom_Surface]; W: TopoDS_Wire;
                         Inside: bool = true): BRepLib_MakeFace {.cdecl, constructor,
    importcpp: "BRepLib_MakeFace(@)".}
proc newBRepLib_MakeFace*(F: TopoDS_Face; W: TopoDS_Wire): BRepLib_MakeFace {.cdecl,
    constructor, importcpp: "BRepLib_MakeFace(@)".}
proc Init*(this: var BRepLib_MakeFace; F: TopoDS_Face) {.cdecl, importcpp: "Init",
    .}
proc Init*(this: var BRepLib_MakeFace; S: Handle[Geom_Surface]; Bound: bool;
          TolDegen: cfloat) {.cdecl, importcpp: "Init".}
proc Init*(this: var BRepLib_MakeFace; S: Handle[Geom_Surface]; UMin: cfloat;
          UMax: cfloat; VMin: cfloat; VMax: cfloat; TolDegen: cfloat) {.cdecl,
    importcpp: "Init".}
proc Add*(this: var BRepLib_MakeFace; W: TopoDS_Wire) {.cdecl, importcpp: "Add",
    .}
proc Error*(this: BRepLib_MakeFace): BRepLib_FaceError {.noSideEffect, cdecl,
    importcpp: "Error".}
proc Face*(this: BRepLib_MakeFace): TopoDS_Face {.noSideEffect, cdecl,
    importcpp: "Face".}
converter `TopoDS_Face`*(this: BRepLib_MakeFace): TopoDS_Face {.noSideEffect, cdecl,
    importcpp: "BRepLib_MakeFace::operator TopoDS_Face".}
proc IsDegenerated*(theCurve: Handle[Geom_Curve]; theMaxTol: cfloat;
                   theActTol: var cfloat): bool {.cdecl,
    importcpp: "BRepLib_MakeFace::IsDegenerated(@)".}