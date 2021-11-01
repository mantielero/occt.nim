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

discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of gp_Pnt2d"
discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Vec2d"
discard "forward decl of Geom2d_Curve"
discard "forward decl of TopoDS_Wire"
discard "forward decl of Bnd_Box2d"
type
  TopOpeBRepBuildCorrectFace2d* {.importcpp: "TopOpeBRepBuild_CorrectFace2d",
                                 header: "TopOpeBRepBuild_CorrectFace2d.hxx",
                                 bycopy.} = object


proc newTopOpeBRepBuildCorrectFace2d*(): TopOpeBRepBuildCorrectFace2d {.cdecl,
    constructor, importcpp: "TopOpeBRepBuild_CorrectFace2d(@)", dynlib: tkfillet.}
proc newTopOpeBRepBuildCorrectFace2d*(aFace: TopoDS_Face; anAvoidMap: TopToolsIndexedMapOfOrientedShape;
    aMap: var TopToolsIndexedDataMapOfShapeShape): TopOpeBRepBuildCorrectFace2d {.
    cdecl, constructor, importcpp: "TopOpeBRepBuild_CorrectFace2d(@)",
    dynlib: tkfillet.}
proc face*(this: TopOpeBRepBuildCorrectFace2d): TopoDS_Face {.noSideEffect, cdecl,
    importcpp: "Face", dynlib: tkfillet.}
proc perform*(this: var TopOpeBRepBuildCorrectFace2d) {.cdecl, importcpp: "Perform",
    dynlib: tkfillet.}
proc isDone*(this: TopOpeBRepBuildCorrectFace2d): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", dynlib: tkfillet.}
proc errorStatus*(this: TopOpeBRepBuildCorrectFace2d): cint {.noSideEffect, cdecl,
    importcpp: "ErrorStatus", dynlib: tkfillet.}
proc correctedFace*(this: TopOpeBRepBuildCorrectFace2d): TopoDS_Face {.noSideEffect,
    cdecl, importcpp: "CorrectedFace", dynlib: tkfillet.}
proc setMapOfTrans2dInfo*(this: var TopOpeBRepBuildCorrectFace2d;
                         aMap: var TopToolsIndexedDataMapOfShapeShape) {.cdecl,
    importcpp: "SetMapOfTrans2dInfo", dynlib: tkfillet.}
proc mapOfTrans2dInfo*(this: var TopOpeBRepBuildCorrectFace2d): var TopToolsIndexedDataMapOfShapeShape {.
    cdecl, importcpp: "MapOfTrans2dInfo", dynlib: tkfillet.}
proc getP2dFL*(aFace: TopoDS_Face; anEdge: TopoDS_Edge; p2dF: var Pnt2d; p2dL: var Pnt2d) {.
    cdecl, importcpp: "TopOpeBRepBuild_CorrectFace2d::GetP2dFL(@)",
    dynlib: tkfillet.}
proc checkList*(aFace: TopoDS_Face; aHeadList: var TopToolsListOfShape) {.cdecl,
    importcpp: "TopOpeBRepBuild_CorrectFace2d::CheckList(@)", dynlib: tkfillet.}