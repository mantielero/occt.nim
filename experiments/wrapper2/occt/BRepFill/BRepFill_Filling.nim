##  Created on: 1998-08-26
##  Created by: Julia GERASIMOVA
##  Copyright (c) 1998-1999 Matra Datavision
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
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Shape"
type
  BRepFillFilling* {.importcpp: "BRepFill_Filling", header: "BRepFill_Filling.hxx",
                    bycopy.} = object ## ! Constructor
                                   ## ! Adds constraints to builder


proc constructBRepFillFilling*(degree: int = 3; nbPtsOnCur: int = 15; nbIter: int = 2;
                              anisotropie: bool = false; tol2d: float = 0.00001;
                              tol3d: float = 0.0001; tolAng: float = 0.01;
                              tolCurv: float = 0.1; maxDeg: int = 8;
                              maxSegments: int = 9): BRepFillFilling {.constructor,
    importcpp: "BRepFill_Filling(@)", header: "BRepFill_Filling.hxx".}
proc setConstrParam*(this: var BRepFillFilling; tol2d: float = 0.00001;
                    tol3d: float = 0.0001; tolAng: float = 0.01; tolCurv: float = 0.1) {.
    importcpp: "SetConstrParam", header: "BRepFill_Filling.hxx".}
proc setResolParam*(this: var BRepFillFilling; degree: int = 3; nbPtsOnCur: int = 15;
                   nbIter: int = 2; anisotropie: bool = false) {.
    importcpp: "SetResolParam", header: "BRepFill_Filling.hxx".}
proc setApproxParam*(this: var BRepFillFilling; maxDeg: int = 8; maxSegments: int = 9) {.
    importcpp: "SetApproxParam", header: "BRepFill_Filling.hxx".}
proc loadInitSurface*(this: var BRepFillFilling; aFace: TopoDS_Face) {.
    importcpp: "LoadInitSurface", header: "BRepFill_Filling.hxx".}
proc add*(this: var BRepFillFilling; anEdge: TopoDS_Edge; order: GeomAbsShape;
         isBound: bool = true): int {.importcpp: "Add", header: "BRepFill_Filling.hxx".}
proc add*(this: var BRepFillFilling; anEdge: TopoDS_Edge; support: TopoDS_Face;
         order: GeomAbsShape; isBound: bool = true): int {.importcpp: "Add",
    header: "BRepFill_Filling.hxx".}
proc add*(this: var BRepFillFilling; support: TopoDS_Face; order: GeomAbsShape): int {.
    importcpp: "Add", header: "BRepFill_Filling.hxx".}
proc add*(this: var BRepFillFilling; point: Pnt): int {.importcpp: "Add",
    header: "BRepFill_Filling.hxx".}
proc add*(this: var BRepFillFilling; u: float; v: float; support: TopoDS_Face;
         order: GeomAbsShape): int {.importcpp: "Add", header: "BRepFill_Filling.hxx".}
proc build*(this: var BRepFillFilling) {.importcpp: "Build",
                                     header: "BRepFill_Filling.hxx".}
proc isDone*(this: BRepFillFilling): bool {.noSideEffect, importcpp: "IsDone",
                                        header: "BRepFill_Filling.hxx".}
proc face*(this: BRepFillFilling): TopoDS_Face {.noSideEffect, importcpp: "Face",
    header: "BRepFill_Filling.hxx".}
proc generated*(this: var BRepFillFilling; s: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Generated", header: "BRepFill_Filling.hxx".}
proc g0Error*(this: BRepFillFilling): float {.noSideEffect, importcpp: "G0Error",
    header: "BRepFill_Filling.hxx".}
proc g1Error*(this: BRepFillFilling): float {.noSideEffect, importcpp: "G1Error",
    header: "BRepFill_Filling.hxx".}
proc g2Error*(this: BRepFillFilling): float {.noSideEffect, importcpp: "G2Error",
    header: "BRepFill_Filling.hxx".}
proc g0Error*(this: var BRepFillFilling; index: int): float {.importcpp: "G0Error",
    header: "BRepFill_Filling.hxx".}
proc g1Error*(this: var BRepFillFilling; index: int): float {.importcpp: "G1Error",
    header: "BRepFill_Filling.hxx".}
proc g2Error*(this: var BRepFillFilling; index: int): float {.importcpp: "G2Error",
    header: "BRepFill_Filling.hxx".}
