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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, BRepLib_FaceError, BRepLib_MakeShape,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean

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
  BRepLib_MakeFace* {.importcpp: "BRepLib_MakeFace",
                     header: "BRepLib_MakeFace.hxx", bycopy.} = object of BRepLib_MakeShape ##
                                                                                     ## !
                                                                                     ## Not
                                                                                     ## done.
                                                                                     ##
                                                                                     ## !
                                                                                     ## Reorient
                                                                                     ## the
                                                                                     ## current
                                                                                     ## face
                                                                                     ## if
                                                                                     ## the
                                                                                     ## boundary
                                                                                     ## is
                                                                                     ## not
                                                                                     ##
                                                                                     ## !
                                                                                     ## finite.


proc constructBRepLib_MakeFace*(): BRepLib_MakeFace {.constructor,
    importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLib_MakeFace*(F: TopoDS_Face): BRepLib_MakeFace {.constructor,
    importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLib_MakeFace*(P: gp_Pln): BRepLib_MakeFace {.constructor,
    importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLib_MakeFace*(C: gp_Cylinder): BRepLib_MakeFace {.constructor,
    importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLib_MakeFace*(C: gp_Cone): BRepLib_MakeFace {.constructor,
    importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLib_MakeFace*(S: gp_Sphere): BRepLib_MakeFace {.constructor,
    importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLib_MakeFace*(C: gp_Torus): BRepLib_MakeFace {.constructor,
    importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLib_MakeFace*(S: handle[Geom_Surface]; TolDegen: Standard_Real): BRepLib_MakeFace {.
    constructor, importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLib_MakeFace*(P: gp_Pln; UMin: Standard_Real; UMax: Standard_Real;
                               VMin: Standard_Real; VMax: Standard_Real): BRepLib_MakeFace {.
    constructor, importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLib_MakeFace*(C: gp_Cylinder; UMin: Standard_Real;
                               UMax: Standard_Real; VMin: Standard_Real;
                               VMax: Standard_Real): BRepLib_MakeFace {.
    constructor, importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLib_MakeFace*(C: gp_Cone; UMin: Standard_Real; UMax: Standard_Real;
                               VMin: Standard_Real; VMax: Standard_Real): BRepLib_MakeFace {.
    constructor, importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLib_MakeFace*(S: gp_Sphere; UMin: Standard_Real;
                               UMax: Standard_Real; VMin: Standard_Real;
                               VMax: Standard_Real): BRepLib_MakeFace {.
    constructor, importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLib_MakeFace*(C: gp_Torus; UMin: Standard_Real;
                               UMax: Standard_Real; VMin: Standard_Real;
                               VMax: Standard_Real): BRepLib_MakeFace {.
    constructor, importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLib_MakeFace*(S: handle[Geom_Surface]; UMin: Standard_Real;
                               UMax: Standard_Real; VMin: Standard_Real;
                               VMax: Standard_Real; TolDegen: Standard_Real): BRepLib_MakeFace {.
    constructor, importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLib_MakeFace*(W: TopoDS_Wire;
                               OnlyPlane: Standard_Boolean = Standard_False): BRepLib_MakeFace {.
    constructor, importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLib_MakeFace*(P: gp_Pln; W: TopoDS_Wire;
                               Inside: Standard_Boolean = Standard_True): BRepLib_MakeFace {.
    constructor, importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLib_MakeFace*(C: gp_Cylinder; W: TopoDS_Wire;
                               Inside: Standard_Boolean = Standard_True): BRepLib_MakeFace {.
    constructor, importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLib_MakeFace*(C: gp_Cone; W: TopoDS_Wire;
                               Inside: Standard_Boolean = Standard_True): BRepLib_MakeFace {.
    constructor, importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLib_MakeFace*(S: gp_Sphere; W: TopoDS_Wire;
                               Inside: Standard_Boolean = Standard_True): BRepLib_MakeFace {.
    constructor, importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLib_MakeFace*(C: gp_Torus; W: TopoDS_Wire;
                               Inside: Standard_Boolean = Standard_True): BRepLib_MakeFace {.
    constructor, importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLib_MakeFace*(S: handle[Geom_Surface]; W: TopoDS_Wire;
                               Inside: Standard_Boolean = Standard_True): BRepLib_MakeFace {.
    constructor, importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc constructBRepLib_MakeFace*(F: TopoDS_Face; W: TopoDS_Wire): BRepLib_MakeFace {.
    constructor, importcpp: "BRepLib_MakeFace(@)", header: "BRepLib_MakeFace.hxx".}
proc Init*(this: var BRepLib_MakeFace; F: TopoDS_Face) {.importcpp: "Init",
    header: "BRepLib_MakeFace.hxx".}
proc Init*(this: var BRepLib_MakeFace; S: handle[Geom_Surface];
          Bound: Standard_Boolean; TolDegen: Standard_Real) {.importcpp: "Init",
    header: "BRepLib_MakeFace.hxx".}
proc Init*(this: var BRepLib_MakeFace; S: handle[Geom_Surface]; UMin: Standard_Real;
          UMax: Standard_Real; VMin: Standard_Real; VMax: Standard_Real;
          TolDegen: Standard_Real) {.importcpp: "Init",
                                   header: "BRepLib_MakeFace.hxx".}
proc Add*(this: var BRepLib_MakeFace; W: TopoDS_Wire) {.importcpp: "Add",
    header: "BRepLib_MakeFace.hxx".}
proc Error*(this: BRepLib_MakeFace): BRepLib_FaceError {.noSideEffect,
    importcpp: "Error", header: "BRepLib_MakeFace.hxx".}
proc Face*(this: BRepLib_MakeFace): TopoDS_Face {.noSideEffect, importcpp: "Face",
    header: "BRepLib_MakeFace.hxx".}
converter `TopoDS_Face`*(this: BRepLib_MakeFace): TopoDS_Face {.noSideEffect,
    importcpp: "BRepLib_MakeFace::operator TopoDS_Face",
    header: "BRepLib_MakeFace.hxx".}
proc IsDegenerated*(theCurve: handle[Geom_Curve]; theMaxTol: Standard_Real;
                   theActTol: var Standard_Real): Standard_Boolean {.
    importcpp: "BRepLib_MakeFace::IsDegenerated(@)",
    header: "BRepLib_MakeFace.hxx".}