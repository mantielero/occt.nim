##  Created on: 1994-03-10
##  Created by: Laurent BUCHARD
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Bnd/Bnd_Box, ../TopoDS/TopoDS_Shape,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../TopExp/TopExp_Explorer, BRepClass3d_MapOfInter,
  ../TopAbs/TopAbs_State, BRepClass3d_BndBoxTree,
  ../TopTools/TopTools_IndexedMapOfShape

discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Vec"
discard "forward decl of BRepAdaptor_HSurface"
discard "forward decl of TopoDS_Shell"
discard "forward decl of gp_Lin"
discard "forward decl of Bnd_Box"
discard "forward decl of IntCurvesFace_Intersector"
type
  BRepClass3d_SolidExplorer* {.importcpp: "BRepClass3d_SolidExplorer",
                              header: "BRepClass3d_SolidExplorer.hxx", bycopy.} = object


proc constructBRepClass3d_SolidExplorer*(): BRepClass3d_SolidExplorer {.
    constructor, importcpp: "BRepClass3d_SolidExplorer(@)",
    header: "BRepClass3d_SolidExplorer.hxx".}
proc constructBRepClass3d_SolidExplorer*(S: TopoDS_Shape): BRepClass3d_SolidExplorer {.
    constructor, importcpp: "BRepClass3d_SolidExplorer(@)",
    header: "BRepClass3d_SolidExplorer.hxx".}
proc destroyBRepClass3d_SolidExplorer*(this: var BRepClass3d_SolidExplorer) {.
    importcpp: "#.~BRepClass3d_SolidExplorer()",
    header: "BRepClass3d_SolidExplorer.hxx".}
proc InitShape*(this: var BRepClass3d_SolidExplorer; S: TopoDS_Shape) {.
    importcpp: "InitShape", header: "BRepClass3d_SolidExplorer.hxx".}
proc Reject*(this: BRepClass3d_SolidExplorer; P: gp_Pnt): Standard_Boolean {.
    noSideEffect, importcpp: "Reject", header: "BRepClass3d_SolidExplorer.hxx".}
proc FindAPointInTheFace*(F: TopoDS_Face; P: var gp_Pnt; Param: var Standard_Real): Standard_Boolean {.
    importcpp: "BRepClass3d_SolidExplorer::FindAPointInTheFace(@)",
    header: "BRepClass3d_SolidExplorer.hxx".}
proc FindAPointInTheFace*(F: TopoDS_Face; P: var gp_Pnt; u: var Standard_Real;
                         v: var Standard_Real; Param: var Standard_Real): Standard_Boolean {.
    importcpp: "BRepClass3d_SolidExplorer::FindAPointInTheFace(@)",
    header: "BRepClass3d_SolidExplorer.hxx".}
proc FindAPointInTheFace*(F: TopoDS_Face; P: var gp_Pnt; u: var Standard_Real;
                         v: var Standard_Real; Param: var Standard_Real;
                         theVecD1U: var gp_Vec; theVecD1V: var gp_Vec): Standard_Boolean {.
    importcpp: "BRepClass3d_SolidExplorer::FindAPointInTheFace(@)",
    header: "BRepClass3d_SolidExplorer.hxx".}
proc FindAPointInTheFace*(F: TopoDS_Face; P: var gp_Pnt; u: var Standard_Real;
                         v: var Standard_Real): Standard_Boolean {.
    importcpp: "BRepClass3d_SolidExplorer::FindAPointInTheFace(@)",
    header: "BRepClass3d_SolidExplorer.hxx".}
proc FindAPointInTheFace*(F: TopoDS_Face; P: var gp_Pnt): Standard_Boolean {.
    importcpp: "BRepClass3d_SolidExplorer::FindAPointInTheFace(@)",
    header: "BRepClass3d_SolidExplorer.hxx".}
proc FindAPointInTheFace*(F: TopoDS_Face; u: var Standard_Real; v: var Standard_Real): Standard_Boolean {.
    importcpp: "BRepClass3d_SolidExplorer::FindAPointInTheFace(@)",
    header: "BRepClass3d_SolidExplorer.hxx".}
proc PointInTheFace*(this: BRepClass3d_SolidExplorer; F: TopoDS_Face; P: var gp_Pnt;
                    u: var Standard_Real; v: var Standard_Real;
                    Param: var Standard_Real; Index: var Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "PointInTheFace",
    header: "BRepClass3d_SolidExplorer.hxx".}
proc PointInTheFace*(this: BRepClass3d_SolidExplorer; F: TopoDS_Face; P: var gp_Pnt;
                    u: var Standard_Real; v: var Standard_Real;
                    Param: var Standard_Real; Index: var Standard_Integer;
                    surf: handle[BRepAdaptor_HSurface]; u1: Standard_Real;
                    v1: Standard_Real; u2: Standard_Real; v2: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "PointInTheFace",
    header: "BRepClass3d_SolidExplorer.hxx".}
proc PointInTheFace*(this: BRepClass3d_SolidExplorer; F: TopoDS_Face; P: var gp_Pnt;
                    u: var Standard_Real; v: var Standard_Real;
                    Param: var Standard_Real; Index: var Standard_Integer;
                    surf: handle[BRepAdaptor_HSurface]; u1: Standard_Real;
                    v1: Standard_Real; u2: Standard_Real; v2: Standard_Real;
                    theVecD1U: var gp_Vec; theVecD1V: var gp_Vec): Standard_Boolean {.
    noSideEffect, importcpp: "PointInTheFace",
    header: "BRepClass3d_SolidExplorer.hxx".}
proc InitShell*(this: var BRepClass3d_SolidExplorer) {.importcpp: "InitShell",
    header: "BRepClass3d_SolidExplorer.hxx".}
proc MoreShell*(this: BRepClass3d_SolidExplorer): Standard_Boolean {.noSideEffect,
    importcpp: "MoreShell", header: "BRepClass3d_SolidExplorer.hxx".}
proc NextShell*(this: var BRepClass3d_SolidExplorer) {.importcpp: "NextShell",
    header: "BRepClass3d_SolidExplorer.hxx".}
proc CurrentShell*(this: BRepClass3d_SolidExplorer): TopoDS_Shell {.noSideEffect,
    importcpp: "CurrentShell", header: "BRepClass3d_SolidExplorer.hxx".}
proc RejectShell*(this: BRepClass3d_SolidExplorer; L: gp_Lin): Standard_Boolean {.
    noSideEffect, importcpp: "RejectShell", header: "BRepClass3d_SolidExplorer.hxx".}
proc InitFace*(this: var BRepClass3d_SolidExplorer) {.importcpp: "InitFace",
    header: "BRepClass3d_SolidExplorer.hxx".}
proc MoreFace*(this: BRepClass3d_SolidExplorer): Standard_Boolean {.noSideEffect,
    importcpp: "MoreFace", header: "BRepClass3d_SolidExplorer.hxx".}
proc NextFace*(this: var BRepClass3d_SolidExplorer) {.importcpp: "NextFace",
    header: "BRepClass3d_SolidExplorer.hxx".}
proc CurrentFace*(this: BRepClass3d_SolidExplorer): TopoDS_Face {.noSideEffect,
    importcpp: "CurrentFace", header: "BRepClass3d_SolidExplorer.hxx".}
proc RejectFace*(this: BRepClass3d_SolidExplorer; L: gp_Lin): Standard_Boolean {.
    noSideEffect, importcpp: "RejectFace", header: "BRepClass3d_SolidExplorer.hxx".}
proc Segment*(this: var BRepClass3d_SolidExplorer; P: gp_Pnt; L: var gp_Lin;
             Par: var Standard_Real): Standard_Integer {.importcpp: "Segment",
    header: "BRepClass3d_SolidExplorer.hxx".}
proc OtherSegment*(this: var BRepClass3d_SolidExplorer; P: gp_Pnt; L: var gp_Lin;
                  Par: var Standard_Real): Standard_Integer {.
    importcpp: "OtherSegment", header: "BRepClass3d_SolidExplorer.hxx".}
proc GetFaceSegmentIndex*(this: BRepClass3d_SolidExplorer): Standard_Integer {.
    noSideEffect, importcpp: "GetFaceSegmentIndex",
    header: "BRepClass3d_SolidExplorer.hxx".}
proc DumpSegment*(this: BRepClass3d_SolidExplorer; P: gp_Pnt; L: gp_Lin;
                 Par: Standard_Real; S: TopAbs_State) {.noSideEffect,
    importcpp: "DumpSegment", header: "BRepClass3d_SolidExplorer.hxx".}
proc Box*(this: BRepClass3d_SolidExplorer): Bnd_Box {.noSideEffect, importcpp: "Box",
    header: "BRepClass3d_SolidExplorer.hxx".}
proc GetShape*(this: BRepClass3d_SolidExplorer): TopoDS_Shape {.noSideEffect,
    importcpp: "GetShape", header: "BRepClass3d_SolidExplorer.hxx".}
proc Intersector*(this: BRepClass3d_SolidExplorer; F: TopoDS_Face): var IntCurvesFace_Intersector {.
    noSideEffect, importcpp: "Intersector", header: "BRepClass3d_SolidExplorer.hxx".}
proc GetTree*(this: var BRepClass3d_SolidExplorer): BRepClass3d_BndBoxTree {.
    importcpp: "GetTree", header: "BRepClass3d_SolidExplorer.hxx".}
proc GetMapEV*(this: var BRepClass3d_SolidExplorer): TopTools_IndexedMapOfShape {.
    importcpp: "GetMapEV", header: "BRepClass3d_SolidExplorer.hxx".}
proc Destroy*(this: var BRepClass3d_SolidExplorer) {.importcpp: "Destroy",
    header: "BRepClass3d_SolidExplorer.hxx".}