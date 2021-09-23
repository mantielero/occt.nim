##  Created on: 2000-01-25
##  Created by: Peter KURNEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Face,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../TopoDS/TopoDS_Wire,
  ../TopTools/TopTools_ListOfShape,
  ../TopTools/TopTools_IndexedMapOfOrientedShape, ../Standard/Standard_Address,
  ../TopTools/TopTools_IndexedDataMapOfShapeShape

discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of gp_Pnt2d"
discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Vec2d"
discard "forward decl of Geom2d_Curve"
discard "forward decl of TopoDS_Wire"
discard "forward decl of Bnd_Box2d"
type
  TopOpeBRepBuild_CorrectFace2d* {.importcpp: "TopOpeBRepBuild_CorrectFace2d",
                                  header: "TopOpeBRepBuild_CorrectFace2d.hxx",
                                  bycopy.} = object


proc constructTopOpeBRepBuild_CorrectFace2d*(): TopOpeBRepBuild_CorrectFace2d {.
    constructor, importcpp: "TopOpeBRepBuild_CorrectFace2d(@)",
    header: "TopOpeBRepBuild_CorrectFace2d.hxx".}
proc constructTopOpeBRepBuild_CorrectFace2d*(aFace: TopoDS_Face;
    anAvoidMap: TopTools_IndexedMapOfOrientedShape;
    aMap: var TopTools_IndexedDataMapOfShapeShape): TopOpeBRepBuild_CorrectFace2d {.
    constructor, importcpp: "TopOpeBRepBuild_CorrectFace2d(@)",
    header: "TopOpeBRepBuild_CorrectFace2d.hxx".}
proc Face*(this: TopOpeBRepBuild_CorrectFace2d): TopoDS_Face {.noSideEffect,
    importcpp: "Face", header: "TopOpeBRepBuild_CorrectFace2d.hxx".}
proc Perform*(this: var TopOpeBRepBuild_CorrectFace2d) {.importcpp: "Perform",
    header: "TopOpeBRepBuild_CorrectFace2d.hxx".}
proc IsDone*(this: TopOpeBRepBuild_CorrectFace2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "TopOpeBRepBuild_CorrectFace2d.hxx".}
proc ErrorStatus*(this: TopOpeBRepBuild_CorrectFace2d): Standard_Integer {.
    noSideEffect, importcpp: "ErrorStatus",
    header: "TopOpeBRepBuild_CorrectFace2d.hxx".}
proc CorrectedFace*(this: TopOpeBRepBuild_CorrectFace2d): TopoDS_Face {.
    noSideEffect, importcpp: "CorrectedFace",
    header: "TopOpeBRepBuild_CorrectFace2d.hxx".}
proc SetMapOfTrans2dInfo*(this: var TopOpeBRepBuild_CorrectFace2d;
                         aMap: var TopTools_IndexedDataMapOfShapeShape) {.
    importcpp: "SetMapOfTrans2dInfo", header: "TopOpeBRepBuild_CorrectFace2d.hxx".}
proc MapOfTrans2dInfo*(this: var TopOpeBRepBuild_CorrectFace2d): var TopTools_IndexedDataMapOfShapeShape {.
    importcpp: "MapOfTrans2dInfo", header: "TopOpeBRepBuild_CorrectFace2d.hxx".}
proc GetP2dFL*(aFace: TopoDS_Face; anEdge: TopoDS_Edge; P2dF: var gp_Pnt2d;
              P2dL: var gp_Pnt2d) {.importcpp: "TopOpeBRepBuild_CorrectFace2d::GetP2dFL(@)",
                                 header: "TopOpeBRepBuild_CorrectFace2d.hxx".}
proc CheckList*(aFace: TopoDS_Face; aHeadList: var TopTools_ListOfShape) {.
    importcpp: "TopOpeBRepBuild_CorrectFace2d::CheckList(@)",
    header: "TopOpeBRepBuild_CorrectFace2d.hxx".}