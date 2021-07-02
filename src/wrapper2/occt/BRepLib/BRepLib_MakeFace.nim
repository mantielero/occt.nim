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
discard "forward decl of Geom_Curve"
type
  BRepLibMakeFace* {.importcpp: "BRepLib_MakeFace", header: "BRepLib_MakeFace.hxx",
                    bycopy.} = object of BRepLibMakeShape ## ! Not done.
                                                     ## ! Reorient the current face if  the boundary  is not
                                                     ## ! finite.


proc constructBRepLibMakeFace*(): BRepLibMakeFace {.constructor,
    importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLibMakeFace*(f: TopoDS_Face): BRepLibMakeFace {.constructor,
    importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLibMakeFace*(p: GpPln): BRepLibMakeFace {.constructor,
    importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLibMakeFace*(c: GpCylinder): BRepLibMakeFace {.constructor,
    importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLibMakeFace*(c: GpCone): BRepLibMakeFace {.constructor,
    importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLibMakeFace*(s: GpSphere): BRepLibMakeFace {.constructor,
    importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLibMakeFace*(c: GpTorus): BRepLibMakeFace {.constructor,
    importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLibMakeFace*(s: Handle[GeomSurface]; tolDegen: StandardReal): BRepLibMakeFace {.
    constructor, importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLibMakeFace*(p: GpPln; uMin: StandardReal; uMax: StandardReal;
                              vMin: StandardReal; vMax: StandardReal): BRepLibMakeFace {.
    constructor, importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLibMakeFace*(c: GpCylinder; uMin: StandardReal; uMax: StandardReal;
                              vMin: StandardReal; vMax: StandardReal): BRepLibMakeFace {.
    constructor, importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLibMakeFace*(c: GpCone; uMin: StandardReal; uMax: StandardReal;
                              vMin: StandardReal; vMax: StandardReal): BRepLibMakeFace {.
    constructor, importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLibMakeFace*(s: GpSphere; uMin: StandardReal; uMax: StandardReal;
                              vMin: StandardReal; vMax: StandardReal): BRepLibMakeFace {.
    constructor, importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLibMakeFace*(c: GpTorus; uMin: StandardReal; uMax: StandardReal;
                              vMin: StandardReal; vMax: StandardReal): BRepLibMakeFace {.
    constructor, importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLibMakeFace*(s: Handle[GeomSurface]; uMin: StandardReal;
                              uMax: StandardReal; vMin: StandardReal;
                              vMax: StandardReal; tolDegen: StandardReal): BRepLibMakeFace {.
    constructor, importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLibMakeFace*(w: TopoDS_Wire;
                              onlyPlane: StandardBoolean = standardFalse): BRepLibMakeFace {.
    constructor, importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLibMakeFace*(p: GpPln; w: TopoDS_Wire;
                              inside: StandardBoolean = standardTrue): BRepLibMakeFace {.
    constructor, importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLibMakeFace*(c: GpCylinder; w: TopoDS_Wire;
                              inside: StandardBoolean = standardTrue): BRepLibMakeFace {.
    constructor, importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLibMakeFace*(c: GpCone; w: TopoDS_Wire;
                              inside: StandardBoolean = standardTrue): BRepLibMakeFace {.
    constructor, importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLibMakeFace*(s: GpSphere; w: TopoDS_Wire;
                              inside: StandardBoolean = standardTrue): BRepLibMakeFace {.
    constructor, importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLibMakeFace*(c: GpTorus; w: TopoDS_Wire;
                              inside: StandardBoolean = standardTrue): BRepLibMakeFace {.
    constructor, importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLibMakeFace*(s: Handle[GeomSurface]; w: TopoDS_Wire;
                              inside: StandardBoolean = standardTrue): BRepLibMakeFace {.
    constructor, importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLibMakeFace*(f: TopoDS_Face; w: TopoDS_Wire): BRepLibMakeFace {.
    constructor, importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc init*(this: var BRepLibMakeFace; f: TopoDS_Face) {.importcpp: "Init",
    header: "BRepLib_MakeFace.hxx".}
proc init*(this: var BRepLibMakeFace; s: Handle[GeomSurface]; bound: StandardBoolean;
          tolDegen: StandardReal) {.importcpp: "Init",
                                  header: "BRepLib_MakeFace.hxx".}
proc init*(this: var BRepLibMakeFace; s: Handle[GeomSurface]; uMin: StandardReal;
          uMax: StandardReal; vMin: StandardReal; vMax: StandardReal;
          tolDegen: StandardReal) {.importcpp: "Init",
                                  header: "BRepLib_MakeFace.hxx".}
proc add*(this: var BRepLibMakeFace; w: TopoDS_Wire) {.importcpp: "Add",
    header: "BRepLib_MakeFace.hxx".}
proc error*(this: BRepLibMakeFace): BRepLibFaceError {.noSideEffect,
    importcpp: "Error", header: "BRepLib_MakeFace.hxx".}
proc face*(this: BRepLibMakeFace): TopoDS_Face {.noSideEffect, importcpp: "Face",
    header: "BRepLib_MakeFace.hxx".}
converter `topoDS_Face`*(this: BRepLibMakeFace): TopoDS_Face {.noSideEffect,
    importcpp: "BRepLib_MakeFace::operator TopoDS_Face",
    header: "BRepLib_MakeFace.hxx".}
proc isDegenerated*(theCurve: Handle[GeomCurve]; theMaxTol: StandardReal;
                   theActTol: var StandardReal): StandardBoolean {.
    importcpp: "BRepLib_MakeFace::IsDegenerated(@)",
    header: "BRepLib_MakeFace.hxx".}

