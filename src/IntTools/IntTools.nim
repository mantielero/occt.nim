##  Created on: 2000-05-18
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

discard "forward decl of TopoDS_Edge"
discard "forward decl of gp_Pnt"
discard "forward decl of Geom_Curve"
discard "forward decl of BRepAdaptor_Curve"
discard "forward decl of IntTools_CArray1OfReal"
discard "forward decl of IntTools_Context"
discard "forward decl of IntTools_ShrunkRange"
discard "forward decl of IntTools_Range"
discard "forward decl of IntTools_CommonPrt"
discard "forward decl of IntTools_Root"
discard "forward decl of IntTools_EdgeEdge"
discard "forward decl of IntTools_EdgeFace"
discard "forward decl of IntTools_FClass2d"
discard "forward decl of IntTools_MarkedRangeSet"
discard "forward decl of IntTools_BaseRangeSample"
discard "forward decl of IntTools_CurveRangeSample"
discard "forward decl of IntTools_SurfaceRangeSample"
discard "forward decl of IntTools_CurveRangeLocalizeData"
discard "forward decl of IntTools_SurfaceRangeLocalizeData"
discard "forward decl of IntTools_BeanFaceIntersector"
discard "forward decl of IntTools_Curve"
discard "forward decl of IntTools_PntOnFace"
discard "forward decl of IntTools_PntOn2Faces"
discard "forward decl of IntTools_TopolTool"
discard "forward decl of IntTools_FaceFace"
discard "forward decl of IntTools_Tools"
discard "forward decl of IntTools_CArray1"
discard "forward decl of IntTools_CArray1OfInteger"
discard "forward decl of IntTools_CArray1OfReal"
discard "forward decl of IntTools_CurveRangeSampleMapHasher"
discard "forward decl of IntTools_SurfaceRangeSampleMapHasher"
type
  IntTools* {.importcpp: "IntTools", header: "IntTools.hxx", bycopy.} = object ## ! returns the length of the edge;


proc length*(e: TopoDS_Edge): cfloat {.importcpp: "IntTools::Length(@)",
                                   header: "IntTools.hxx".}
proc removeIdenticalRoots*(aSeq: var IntToolsSequenceOfRoots; anEpsT: cfloat) {.
    importcpp: "IntTools::RemoveIdenticalRoots(@)", header: "IntTools.hxx".}
proc sortRoots*(aSeq: var IntToolsSequenceOfRoots; anEpsT: cfloat) {.
    importcpp: "IntTools::SortRoots(@)", header: "IntTools.hxx".}
proc findRootStates*(aSeq: var IntToolsSequenceOfRoots; anEpsNull: cfloat) {.
    importcpp: "IntTools::FindRootStates(@)", header: "IntTools.hxx".}
proc parameter*(p: Pnt; curve: Handle[GeomCurve]; aParm: var cfloat): cint {.
    importcpp: "IntTools::Parameter(@)", header: "IntTools.hxx".}
proc getRadius*(c: BRepAdaptorCurve; t1: cfloat; t3: cfloat; r: var cfloat): cint {.
    importcpp: "IntTools::GetRadius(@)", header: "IntTools.hxx".}
proc prepareArgs*(c: var BRepAdaptorCurve; tMax: cfloat; tMin: cfloat; discret: cint;
                 deflect: cfloat; anArgs: var IntToolsCArray1OfReal): cint {.
    importcpp: "IntTools::PrepareArgs(@)", header: "IntTools.hxx".}

























