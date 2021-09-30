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
  BRepOffsetAPI_MakeFilling* {.importcpp: "BRepOffsetAPI_MakeFilling",
                              header: "BRepOffsetAPI_MakeFilling.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape


proc `new`*(this: var BRepOffsetAPI_MakeFilling; theSize: csize_t): pointer {.
    importcpp: "BRepOffsetAPI_MakeFilling::operator new",
    header: "BRepOffsetAPI_MakeFilling.hxx".}
proc `delete`*(this: var BRepOffsetAPI_MakeFilling; theAddress: pointer) {.
    importcpp: "BRepOffsetAPI_MakeFilling::operator delete",
    header: "BRepOffsetAPI_MakeFilling.hxx".}
proc `new[]`*(this: var BRepOffsetAPI_MakeFilling; theSize: csize_t): pointer {.
    importcpp: "BRepOffsetAPI_MakeFilling::operator new[]",
    header: "BRepOffsetAPI_MakeFilling.hxx".}
proc `delete[]`*(this: var BRepOffsetAPI_MakeFilling; theAddress: pointer) {.
    importcpp: "BRepOffsetAPI_MakeFilling::operator delete[]",
    header: "BRepOffsetAPI_MakeFilling.hxx".}
proc `new`*(this: var BRepOffsetAPI_MakeFilling; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepOffsetAPI_MakeFilling::operator new",
    header: "BRepOffsetAPI_MakeFilling.hxx".}
proc `delete`*(this: var BRepOffsetAPI_MakeFilling; a2: pointer; a3: pointer) {.
    importcpp: "BRepOffsetAPI_MakeFilling::operator delete",
    header: "BRepOffsetAPI_MakeFilling.hxx".}
proc constructBRepOffsetAPI_MakeFilling*(degree: int = 3; nbPtsOnCur: int = 15;
                                        nbIter: int = 2;
                                        anisotropie: StandardBoolean = false;
                                        tol2d: StandardReal = 0.00001;
                                        tol3d: StandardReal = 0.0001;
                                        tolAng: StandardReal = 0.01;
                                        tolCurv: StandardReal = 0.1;
                                        maxDeg: int = 8; maxSegments: int = 9): BRepOffsetAPI_MakeFilling {.
    constructor, importcpp: "BRepOffsetAPI_MakeFilling(@)",
    header: "BRepOffsetAPI_MakeFilling.hxx".}
proc setConstrParam*(this: var BRepOffsetAPI_MakeFilling;
                    tol2d: StandardReal = 0.00001; tol3d: StandardReal = 0.0001;
                    tolAng: StandardReal = 0.01; tolCurv: StandardReal = 0.1) {.
    importcpp: "SetConstrParam", header: "BRepOffsetAPI_MakeFilling.hxx".}
proc setResolParam*(this: var BRepOffsetAPI_MakeFilling; degree: int = 3;
                   nbPtsOnCur: int = 15; nbIter: int = 2;
                   anisotropie: StandardBoolean = false) {.
    importcpp: "SetResolParam", header: "BRepOffsetAPI_MakeFilling.hxx".}
proc setApproxParam*(this: var BRepOffsetAPI_MakeFilling; maxDeg: int = 8;
                    maxSegments: int = 9) {.importcpp: "SetApproxParam",
                                        header: "BRepOffsetAPI_MakeFilling.hxx".}
proc loadInitSurface*(this: var BRepOffsetAPI_MakeFilling; surf: TopoDS_Face) {.
    importcpp: "LoadInitSurface", header: "BRepOffsetAPI_MakeFilling.hxx".}
proc add*(this: var BRepOffsetAPI_MakeFilling; constr: TopoDS_Edge;
         order: GeomAbsShape; isBound: StandardBoolean = true): int {.importcpp: "Add",
    header: "BRepOffsetAPI_MakeFilling.hxx".}
proc add*(this: var BRepOffsetAPI_MakeFilling; constr: TopoDS_Edge;
         support: TopoDS_Face; order: GeomAbsShape; isBound: StandardBoolean = true): int {.
    importcpp: "Add", header: "BRepOffsetAPI_MakeFilling.hxx".}
proc add*(this: var BRepOffsetAPI_MakeFilling; support: TopoDS_Face;
         order: GeomAbsShape): int {.importcpp: "Add",
                                  header: "BRepOffsetAPI_MakeFilling.hxx".}
proc add*(this: var BRepOffsetAPI_MakeFilling; point: Pnt): int {.importcpp: "Add",
    header: "BRepOffsetAPI_MakeFilling.hxx".}
proc add*(this: var BRepOffsetAPI_MakeFilling; u: StandardReal; v: StandardReal;
         support: TopoDS_Face; order: GeomAbsShape): int {.importcpp: "Add",
    header: "BRepOffsetAPI_MakeFilling.hxx".}
proc build*(this: var BRepOffsetAPI_MakeFilling) {.importcpp: "Build",
    header: "BRepOffsetAPI_MakeFilling.hxx".}
proc isDone*(this: BRepOffsetAPI_MakeFilling): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepOffsetAPI_MakeFilling.hxx".}
proc generated*(this: var BRepOffsetAPI_MakeFilling; s: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Generated", header: "BRepOffsetAPI_MakeFilling.hxx".}
proc g0Error*(this: BRepOffsetAPI_MakeFilling): StandardReal {.noSideEffect,
    importcpp: "G0Error", header: "BRepOffsetAPI_MakeFilling.hxx".}
proc g1Error*(this: BRepOffsetAPI_MakeFilling): StandardReal {.noSideEffect,
    importcpp: "G1Error", header: "BRepOffsetAPI_MakeFilling.hxx".}
proc g2Error*(this: BRepOffsetAPI_MakeFilling): StandardReal {.noSideEffect,
    importcpp: "G2Error", header: "BRepOffsetAPI_MakeFilling.hxx".}
proc g0Error*(this: var BRepOffsetAPI_MakeFilling; index: int): StandardReal {.
    importcpp: "G0Error", header: "BRepOffsetAPI_MakeFilling.hxx".}
proc g1Error*(this: var BRepOffsetAPI_MakeFilling; index: int): StandardReal {.
    importcpp: "G1Error", header: "BRepOffsetAPI_MakeFilling.hxx".}
proc g2Error*(this: var BRepOffsetAPI_MakeFilling; index: int): StandardReal {.
    importcpp: "G2Error", header: "BRepOffsetAPI_MakeFilling.hxx".}