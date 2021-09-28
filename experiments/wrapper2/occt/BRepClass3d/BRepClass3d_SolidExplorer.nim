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
  BRepClass3dSolidExplorer* {.importcpp: "BRepClass3d_SolidExplorer",
                             header: "BRepClass3d_SolidExplorer.hxx", bycopy.} = object


proc constructBRepClass3dSolidExplorer*(): BRepClass3dSolidExplorer {.constructor,
    importcpp: "BRepClass3d_SolidExplorer(@)",
    header: "BRepClass3d_SolidExplorer.hxx".}
proc constructBRepClass3dSolidExplorer*(s: TopoDS_Shape): BRepClass3dSolidExplorer {.
    constructor, importcpp: "BRepClass3d_SolidExplorer(@)",
    header: "BRepClass3d_SolidExplorer.hxx".}
proc destroyBRepClass3dSolidExplorer*(this: var BRepClass3dSolidExplorer) {.
    importcpp: "#.~BRepClass3d_SolidExplorer()",
    header: "BRepClass3d_SolidExplorer.hxx".}
proc initShape*(this: var BRepClass3dSolidExplorer; s: TopoDS_Shape) {.
    importcpp: "InitShape", header: "BRepClass3d_SolidExplorer.hxx".}
proc reject*(this: BRepClass3dSolidExplorer; p: Pnt): bool {.noSideEffect,
    importcpp: "Reject", header: "BRepClass3d_SolidExplorer.hxx".}
proc findAPointInTheFace*(f: TopoDS_Face; p: var Pnt; param: var cfloat): bool {.
    importcpp: "BRepClass3d_SolidExplorer::FindAPointInTheFace(@)",
    header: "BRepClass3d_SolidExplorer.hxx".}
proc findAPointInTheFace*(f: TopoDS_Face; p: var Pnt; u: var cfloat; v: var cfloat;
                         param: var cfloat): bool {.
    importcpp: "BRepClass3d_SolidExplorer::FindAPointInTheFace(@)",
    header: "BRepClass3d_SolidExplorer.hxx".}
proc findAPointInTheFace*(f: TopoDS_Face; p: var Pnt; u: var cfloat; v: var cfloat;
                         param: var cfloat; theVecD1U: var Vec; theVecD1V: var Vec): bool {.
    importcpp: "BRepClass3d_SolidExplorer::FindAPointInTheFace(@)",
    header: "BRepClass3d_SolidExplorer.hxx".}
proc findAPointInTheFace*(f: TopoDS_Face; p: var Pnt; u: var cfloat; v: var cfloat): bool {.
    importcpp: "BRepClass3d_SolidExplorer::FindAPointInTheFace(@)",
    header: "BRepClass3d_SolidExplorer.hxx".}
proc findAPointInTheFace*(f: TopoDS_Face; p: var Pnt): bool {.
    importcpp: "BRepClass3d_SolidExplorer::FindAPointInTheFace(@)",
    header: "BRepClass3d_SolidExplorer.hxx".}
proc findAPointInTheFace*(f: TopoDS_Face; u: var cfloat; v: var cfloat): bool {.
    importcpp: "BRepClass3d_SolidExplorer::FindAPointInTheFace(@)",
    header: "BRepClass3d_SolidExplorer.hxx".}
proc pointInTheFace*(this: BRepClass3dSolidExplorer; f: TopoDS_Face; p: var Pnt;
                    u: var cfloat; v: var cfloat; param: var cfloat; index: var cint): bool {.
    noSideEffect, importcpp: "PointInTheFace",
    header: "BRepClass3d_SolidExplorer.hxx".}
proc pointInTheFace*(this: BRepClass3dSolidExplorer; f: TopoDS_Face; p: var Pnt;
                    u: var cfloat; v: var cfloat; param: var cfloat; index: var cint;
                    surf: Handle[BRepAdaptorHSurface]; u1: cfloat; v1: cfloat;
                    u2: cfloat; v2: cfloat): bool {.noSideEffect,
    importcpp: "PointInTheFace", header: "BRepClass3d_SolidExplorer.hxx".}
proc pointInTheFace*(this: BRepClass3dSolidExplorer; f: TopoDS_Face; p: var Pnt;
                    u: var cfloat; v: var cfloat; param: var cfloat; index: var cint;
                    surf: Handle[BRepAdaptorHSurface]; u1: cfloat; v1: cfloat;
                    u2: cfloat; v2: cfloat; theVecD1U: var Vec; theVecD1V: var Vec): bool {.
    noSideEffect, importcpp: "PointInTheFace",
    header: "BRepClass3d_SolidExplorer.hxx".}
proc initShell*(this: var BRepClass3dSolidExplorer) {.importcpp: "InitShell",
    header: "BRepClass3d_SolidExplorer.hxx".}
proc moreShell*(this: BRepClass3dSolidExplorer): bool {.noSideEffect,
    importcpp: "MoreShell", header: "BRepClass3d_SolidExplorer.hxx".}
proc nextShell*(this: var BRepClass3dSolidExplorer) {.importcpp: "NextShell",
    header: "BRepClass3d_SolidExplorer.hxx".}
proc currentShell*(this: BRepClass3dSolidExplorer): TopoDS_Shell {.noSideEffect,
    importcpp: "CurrentShell", header: "BRepClass3d_SolidExplorer.hxx".}
proc rejectShell*(this: BRepClass3dSolidExplorer; L: Lin): bool {.noSideEffect,
    importcpp: "RejectShell", header: "BRepClass3d_SolidExplorer.hxx".}
proc initFace*(this: var BRepClass3dSolidExplorer) {.importcpp: "InitFace",
    header: "BRepClass3d_SolidExplorer.hxx".}
proc moreFace*(this: BRepClass3dSolidExplorer): bool {.noSideEffect,
    importcpp: "MoreFace", header: "BRepClass3d_SolidExplorer.hxx".}
proc nextFace*(this: var BRepClass3dSolidExplorer) {.importcpp: "NextFace",
    header: "BRepClass3d_SolidExplorer.hxx".}
proc currentFace*(this: BRepClass3dSolidExplorer): TopoDS_Face {.noSideEffect,
    importcpp: "CurrentFace", header: "BRepClass3d_SolidExplorer.hxx".}
proc rejectFace*(this: BRepClass3dSolidExplorer; L: Lin): bool {.noSideEffect,
    importcpp: "RejectFace", header: "BRepClass3d_SolidExplorer.hxx".}
proc segment*(this: var BRepClass3dSolidExplorer; p: Pnt; L: var Lin; par: var cfloat): cint {.
    importcpp: "Segment", header: "BRepClass3d_SolidExplorer.hxx".}
proc otherSegment*(this: var BRepClass3dSolidExplorer; p: Pnt; L: var Lin;
                  par: var cfloat): cint {.importcpp: "OtherSegment",
                                       header: "BRepClass3d_SolidExplorer.hxx".}
proc getFaceSegmentIndex*(this: BRepClass3dSolidExplorer): cint {.noSideEffect,
    importcpp: "GetFaceSegmentIndex", header: "BRepClass3d_SolidExplorer.hxx".}
proc dumpSegment*(this: BRepClass3dSolidExplorer; p: Pnt; L: Lin; par: cfloat;
                 s: TopAbsState) {.noSideEffect, importcpp: "DumpSegment",
                                 header: "BRepClass3d_SolidExplorer.hxx".}
proc box*(this: BRepClass3dSolidExplorer): BndBox {.noSideEffect, importcpp: "Box",
    header: "BRepClass3d_SolidExplorer.hxx".}
proc getShape*(this: BRepClass3dSolidExplorer): TopoDS_Shape {.noSideEffect,
    importcpp: "GetShape", header: "BRepClass3d_SolidExplorer.hxx".}
proc intersector*(this: BRepClass3dSolidExplorer; f: TopoDS_Face): var IntCurvesFaceIntersector {.
    noSideEffect, importcpp: "Intersector", header: "BRepClass3d_SolidExplorer.hxx".}
proc getTree*(this: var BRepClass3dSolidExplorer): BRepClass3dBndBoxTree {.
    importcpp: "GetTree", header: "BRepClass3d_SolidExplorer.hxx".}
proc getMapEV*(this: var BRepClass3dSolidExplorer): TopToolsIndexedMapOfShape {.
    importcpp: "GetMapEV", header: "BRepClass3d_SolidExplorer.hxx".}
proc destroy*(this: var BRepClass3dSolidExplorer) {.importcpp: "Destroy",
    header: "BRepClass3d_SolidExplorer.hxx".}

























