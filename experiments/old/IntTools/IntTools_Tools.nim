##  Created on: 2000-11-16
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

discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt2d"
discard "forward decl of TopoDS_Edge"
discard "forward decl of IntTools_CommonPrt"
discard "forward decl of gp_Pnt"
discard "forward decl of IntTools_Curve"
discard "forward decl of gp_Dir"
discard "forward decl of Geom_Curve"
discard "forward decl of Bnd_Box"
discard "forward decl of IntTools_Range"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Pln"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom_Surface"
type
  IntToolsTools* {.importcpp: "IntTools_Tools", header: "IntTools_Tools.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Computes
                                                                                        ## distance
                                                                                        ## between
                                                                                        ## vertex
                                                                                        ## V1
                                                                                        ## and
                                                                                        ## vertex
                                                                                        ## V2,
                                                                                        ##
                                                                                        ## !
                                                                                        ## if
                                                                                        ## the
                                                                                        ## distance
                                                                                        ## is
                                                                                        ## less
                                                                                        ## than
                                                                                        ## sum
                                                                                        ## of
                                                                                        ## vertex
                                                                                        ## tolerances
                                                                                        ##
                                                                                        ## !
                                                                                        ## returns
                                                                                        ## zero,
                                                                                        ##
                                                                                        ## !
                                                                                        ## otherwise
                                                                                        ## returns
                                                                                        ## negative
                                                                                        ## value


proc computeVV*(v1: TopoDS_Vertex; v2: TopoDS_Vertex): cint {.
    importcpp: "IntTools_Tools::ComputeVV(@)", header: "IntTools_Tools.hxx".}
proc hasInternalEdge*(aW: TopoDS_Wire): bool {.
    importcpp: "IntTools_Tools::HasInternalEdge(@)", header: "IntTools_Tools.hxx".}
proc makeFaceFromWireAndFace*(aW: TopoDS_Wire; aF: TopoDS_Face;
                             aFNew: var TopoDS_Face) {.
    importcpp: "IntTools_Tools::MakeFaceFromWireAndFace(@)",
    header: "IntTools_Tools.hxx".}
proc classifyPointByFace*(aF: TopoDS_Face; p: Pnt2d): TopAbsState {.
    importcpp: "IntTools_Tools::ClassifyPointByFace(@)",
    header: "IntTools_Tools.hxx".}
proc isVertex*(e: TopoDS_Edge; t: cfloat): bool {.
    importcpp: "IntTools_Tools::IsVertex(@)", header: "IntTools_Tools.hxx".}
proc isVertex*(e: TopoDS_Edge; v: TopoDS_Vertex; t: cfloat): bool {.
    importcpp: "IntTools_Tools::IsVertex(@)", header: "IntTools_Tools.hxx".}
proc isVertex*(aCmnPrt: IntToolsCommonPrt): bool {.
    importcpp: "IntTools_Tools::IsVertex(@)", header: "IntTools_Tools.hxx".}
proc isMiddlePointsEqual*(e1: TopoDS_Edge; e2: TopoDS_Edge): bool {.
    importcpp: "IntTools_Tools::IsMiddlePointsEqual(@)",
    header: "IntTools_Tools.hxx".}
proc isVertex*(aP: Pnt; aTolPV: cfloat; aV: TopoDS_Vertex): bool {.
    importcpp: "IntTools_Tools::IsVertex(@)", header: "IntTools_Tools.hxx".}
proc intermediatePoint*(aFirst: cfloat; aLast: cfloat): cfloat {.
    importcpp: "IntTools_Tools::IntermediatePoint(@)",
    header: "IntTools_Tools.hxx".}
proc splitCurve*(aC: IntToolsCurve; `aS`: var IntToolsSequenceOfCurves): cint {.
    importcpp: "IntTools_Tools::SplitCurve(@)", header: "IntTools_Tools.hxx".}
proc rejectLines*(aSIn: IntToolsSequenceOfCurves;
                 aSOut: var IntToolsSequenceOfCurves) {.
    importcpp: "IntTools_Tools::RejectLines(@)", header: "IntTools_Tools.hxx".}
proc isDirsCoinside*(d1: Dir; d2: Dir): bool {.
    importcpp: "IntTools_Tools::IsDirsCoinside(@)", header: "IntTools_Tools.hxx".}
proc isDirsCoinside*(d1: Dir; d2: Dir; aTol: cfloat): bool {.
    importcpp: "IntTools_Tools::IsDirsCoinside(@)", header: "IntTools_Tools.hxx".}
proc isClosed*(aC: Handle[GeomCurve]): bool {.
    importcpp: "IntTools_Tools::IsClosed(@)", header: "IntTools_Tools.hxx".}
proc curveTolerance*(aC: Handle[GeomCurve]; aTolBase: cfloat): cfloat {.
    importcpp: "IntTools_Tools::CurveTolerance(@)", header: "IntTools_Tools.hxx".}
proc checkCurve*(theCurve: IntToolsCurve; theBox: var BndBox): bool {.
    importcpp: "IntTools_Tools::CheckCurve(@)", header: "IntTools_Tools.hxx".}
proc isOnPave*(theT: cfloat; theRange: IntToolsRange; theTol: cfloat): bool {.
    importcpp: "IntTools_Tools::IsOnPave(@)", header: "IntTools_Tools.hxx".}
proc vertexParameters*(theCP: IntToolsCommonPrt; theT1: var cfloat; theT2: var cfloat) {.
    importcpp: "IntTools_Tools::VertexParameters(@)", header: "IntTools_Tools.hxx".}
proc vertexParameter*(theCP: IntToolsCommonPrt; theT: var cfloat) {.
    importcpp: "IntTools_Tools::VertexParameter(@)", header: "IntTools_Tools.hxx".}
proc isOnPave1*(theT: cfloat; theRange: IntToolsRange; theTol: cfloat): bool {.
    importcpp: "IntTools_Tools::IsOnPave1(@)", header: "IntTools_Tools.hxx".}
proc isInRange*(theRRef: IntToolsRange; theR: IntToolsRange; theTol: cfloat): bool {.
    importcpp: "IntTools_Tools::IsInRange(@)", header: "IntTools_Tools.hxx".}
proc segPln*(theLin: Lin; theTLin1: cfloat; theTLin2: cfloat; theTolLin: cfloat;
            thePln: Pln; theTolPln: cfloat; theP: var Pnt; theT: var cfloat;
            theTolP: var cfloat; theTmin: var cfloat; theTmax: var cfloat): cint {.
    importcpp: "IntTools_Tools::SegPln(@)", header: "IntTools_Tools.hxx".}
proc computeTolerance*(theCurve3D: Handle[GeomCurve];
                      theCurve2D: Handle[Geom2dCurve];
                      theSurf: Handle[GeomSurface]; theFirst: cfloat;
                      theLast: cfloat; theMaxDist: var cfloat; theMaxPar: var cfloat;
                      theTolRange: cfloat = pConfusion()): bool {.
    importcpp: "IntTools_Tools::ComputeTolerance(@)", header: "IntTools_Tools.hxx".}
proc computeIntRange*(theTol1: cfloat; theTol2: cfloat; theAngle: cfloat): cfloat {.
    importcpp: "IntTools_Tools::ComputeIntRange(@)", header: "IntTools_Tools.hxx".}

























