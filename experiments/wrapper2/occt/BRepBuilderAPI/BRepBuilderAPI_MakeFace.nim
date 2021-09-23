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
  ../Standard/Standard_Handle, ../BRepLib/BRepLib_MakeFace,
  BRepBuilderAPI_MakeShape, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, BRepBuilderAPI_FaceError

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


proc constructBRepBuilderAPI_MakeFace*(): BRepBuilderAPI_MakeFace {.constructor,
    importcpp: "BRepBuilderAPI_MakeFace(@)", header: "BRepBuilderAPI_MakeFace.hxx".}
proc constructBRepBuilderAPI_MakeFace*(F: TopoDS_Face): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc constructBRepBuilderAPI_MakeFace*(P: gp_Pln): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc constructBRepBuilderAPI_MakeFace*(C: gp_Cylinder): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc constructBRepBuilderAPI_MakeFace*(C: gp_Cone): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc constructBRepBuilderAPI_MakeFace*(S: gp_Sphere): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc constructBRepBuilderAPI_MakeFace*(C: gp_Torus): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc constructBRepBuilderAPI_MakeFace*(S: handle[Geom_Surface];
                                      TolDegen: Standard_Real): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc constructBRepBuilderAPI_MakeFace*(P: gp_Pln; UMin: Standard_Real;
                                      UMax: Standard_Real; VMin: Standard_Real;
                                      VMax: Standard_Real): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc constructBRepBuilderAPI_MakeFace*(C: gp_Cylinder; UMin: Standard_Real;
                                      UMax: Standard_Real; VMin: Standard_Real;
                                      VMax: Standard_Real): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc constructBRepBuilderAPI_MakeFace*(C: gp_Cone; UMin: Standard_Real;
                                      UMax: Standard_Real; VMin: Standard_Real;
                                      VMax: Standard_Real): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc constructBRepBuilderAPI_MakeFace*(S: gp_Sphere; UMin: Standard_Real;
                                      UMax: Standard_Real; VMin: Standard_Real;
                                      VMax: Standard_Real): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc constructBRepBuilderAPI_MakeFace*(C: gp_Torus; UMin: Standard_Real;
                                      UMax: Standard_Real; VMin: Standard_Real;
                                      VMax: Standard_Real): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc constructBRepBuilderAPI_MakeFace*(S: handle[Geom_Surface];
                                      UMin: Standard_Real; UMax: Standard_Real;
                                      VMin: Standard_Real; VMax: Standard_Real;
                                      TolDegen: Standard_Real): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc constructBRepBuilderAPI_MakeFace*(W: TopoDS_Wire; OnlyPlane: Standard_Boolean = Standard_False): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc constructBRepBuilderAPI_MakeFace*(P: gp_Pln; W: TopoDS_Wire;
                                      Inside: Standard_Boolean = Standard_True): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc constructBRepBuilderAPI_MakeFace*(C: gp_Cylinder; W: TopoDS_Wire;
                                      Inside: Standard_Boolean = Standard_True): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc constructBRepBuilderAPI_MakeFace*(C: gp_Cone; W: TopoDS_Wire;
                                      Inside: Standard_Boolean = Standard_True): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc constructBRepBuilderAPI_MakeFace*(S: gp_Sphere; W: TopoDS_Wire;
                                      Inside: Standard_Boolean = Standard_True): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc constructBRepBuilderAPI_MakeFace*(C: gp_Torus; W: TopoDS_Wire;
                                      Inside: Standard_Boolean = Standard_True): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc constructBRepBuilderAPI_MakeFace*(S: handle[Geom_Surface]; W: TopoDS_Wire;
                                      Inside: Standard_Boolean = Standard_True): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc constructBRepBuilderAPI_MakeFace*(F: TopoDS_Face; W: TopoDS_Wire): BRepBuilderAPI_MakeFace {.
    constructor, importcpp: "BRepBuilderAPI_MakeFace(@)",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc Init*(this: var BRepBuilderAPI_MakeFace; F: TopoDS_Face) {.importcpp: "Init",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc Init*(this: var BRepBuilderAPI_MakeFace; S: handle[Geom_Surface];
          Bound: Standard_Boolean; TolDegen: Standard_Real) {.importcpp: "Init",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc Init*(this: var BRepBuilderAPI_MakeFace; S: handle[Geom_Surface];
          UMin: Standard_Real; UMax: Standard_Real; VMin: Standard_Real;
          VMax: Standard_Real; TolDegen: Standard_Real) {.importcpp: "Init",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc Add*(this: var BRepBuilderAPI_MakeFace; W: TopoDS_Wire) {.importcpp: "Add",
    header: "BRepBuilderAPI_MakeFace.hxx".}
proc IsDone*(this: BRepBuilderAPI_MakeFace): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepBuilderAPI_MakeFace.hxx".}
proc Error*(this: BRepBuilderAPI_MakeFace): BRepBuilderAPI_FaceError {.noSideEffect,
    importcpp: "Error", header: "BRepBuilderAPI_MakeFace.hxx".}
proc Face*(this: BRepBuilderAPI_MakeFace): TopoDS_Face {.noSideEffect,
    importcpp: "Face", header: "BRepBuilderAPI_MakeFace.hxx".}
converter `TopoDS_Face`*(this: BRepBuilderAPI_MakeFace): TopoDS_Face {.noSideEffect,
    importcpp: "BRepBuilderAPI_MakeFace::operator TopoDS_Face",
    header: "BRepBuilderAPI_MakeFace.hxx".}