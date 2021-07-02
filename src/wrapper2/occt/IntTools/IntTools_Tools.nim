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


proc computeVV*(v1: TopoDS_Vertex; v2: TopoDS_Vertex): StandardInteger {.
    importcpp: "IntTools_Tools::ComputeVV(@)", header: "IntTools_Tools.hxx".}
proc hasInternalEdge*(aW: TopoDS_Wire): StandardBoolean {.
    importcpp: "IntTools_Tools::HasInternalEdge(@)", header: "IntTools_Tools.hxx".}
proc makeFaceFromWireAndFace*(aW: TopoDS_Wire; aF: TopoDS_Face;
                             aFNew: var TopoDS_Face) {.
    importcpp: "IntTools_Tools::MakeFaceFromWireAndFace(@)",
    header: "IntTools_Tools.hxx".}
proc classifyPointByFace*(aF: TopoDS_Face; p: GpPnt2d): TopAbsState {.
    importcpp: "IntTools_Tools::ClassifyPointByFace(@)",
    header: "IntTools_Tools.hxx".}
proc isVertex*(e: TopoDS_Edge; t: StandardReal): StandardBoolean {.
    importcpp: "IntTools_Tools::IsVertex(@)", header: "IntTools_Tools.hxx".}
proc isVertex*(e: TopoDS_Edge; v: TopoDS_Vertex; t: StandardReal): StandardBoolean {.
    importcpp: "IntTools_Tools::IsVertex(@)", header: "IntTools_Tools.hxx".}
proc isVertex*(aCmnPrt: IntToolsCommonPrt): StandardBoolean {.
    importcpp: "IntTools_Tools::IsVertex(@)", header: "IntTools_Tools.hxx".}
proc isMiddlePointsEqual*(e1: TopoDS_Edge; e2: TopoDS_Edge): StandardBoolean {.
    importcpp: "IntTools_Tools::IsMiddlePointsEqual(@)",
    header: "IntTools_Tools.hxx".}
proc isVertex*(aP: GpPnt; aTolPV: StandardReal; aV: TopoDS_Vertex): StandardBoolean {.
    importcpp: "IntTools_Tools::IsVertex(@)", header: "IntTools_Tools.hxx".}
proc intermediatePoint*(aFirst: StandardReal; aLast: StandardReal): StandardReal {.
    importcpp: "IntTools_Tools::IntermediatePoint(@)",
    header: "IntTools_Tools.hxx".}
proc splitCurve*(aC: IntToolsCurve; `aS`: var IntToolsSequenceOfCurves): StandardInteger {.
    importcpp: "IntTools_Tools::SplitCurve(@)", header: "IntTools_Tools.hxx".}
proc rejectLines*(aSIn: IntToolsSequenceOfCurves;
                 aSOut: var IntToolsSequenceOfCurves) {.
    importcpp: "IntTools_Tools::RejectLines(@)", header: "IntTools_Tools.hxx".}
proc isDirsCoinside*(d1: GpDir; d2: GpDir): StandardBoolean {.
    importcpp: "IntTools_Tools::IsDirsCoinside(@)", header: "IntTools_Tools.hxx".}
proc isDirsCoinside*(d1: GpDir; d2: GpDir; aTol: StandardReal): StandardBoolean {.
    importcpp: "IntTools_Tools::IsDirsCoinside(@)", header: "IntTools_Tools.hxx".}
proc isClosed*(aC: Handle[GeomCurve]): StandardBoolean {.
    importcpp: "IntTools_Tools::IsClosed(@)", header: "IntTools_Tools.hxx".}
proc curveTolerance*(aC: Handle[GeomCurve]; aTolBase: StandardReal): StandardReal {.
    importcpp: "IntTools_Tools::CurveTolerance(@)", header: "IntTools_Tools.hxx".}
proc checkCurve*(theCurve: IntToolsCurve; theBox: var BndBox): StandardBoolean {.
    importcpp: "IntTools_Tools::CheckCurve(@)", header: "IntTools_Tools.hxx".}
proc isOnPave*(theT: StandardReal; theRange: IntToolsRange; theTol: StandardReal): StandardBoolean {.
    importcpp: "IntTools_Tools::IsOnPave(@)", header: "IntTools_Tools.hxx".}
proc vertexParameters*(theCP: IntToolsCommonPrt; theT1: var StandardReal;
                      theT2: var StandardReal) {.
    importcpp: "IntTools_Tools::VertexParameters(@)", header: "IntTools_Tools.hxx".}
proc vertexParameter*(theCP: IntToolsCommonPrt; theT: var StandardReal) {.
    importcpp: "IntTools_Tools::VertexParameter(@)", header: "IntTools_Tools.hxx".}
proc isOnPave1*(theT: StandardReal; theRange: IntToolsRange; theTol: StandardReal): StandardBoolean {.
    importcpp: "IntTools_Tools::IsOnPave1(@)", header: "IntTools_Tools.hxx".}
proc isInRange*(theRRef: IntToolsRange; theR: IntToolsRange; theTol: StandardReal): StandardBoolean {.
    importcpp: "IntTools_Tools::IsInRange(@)", header: "IntTools_Tools.hxx".}
proc segPln*(theLin: GpLin; theTLin1: StandardReal; theTLin2: StandardReal;
            theTolLin: StandardReal; thePln: GpPln; theTolPln: StandardReal;
            theP: var GpPnt; theT: var StandardReal; theTolP: var StandardReal;
            theTmin: var StandardReal; theTmax: var StandardReal): StandardInteger {.
    importcpp: "IntTools_Tools::SegPln(@)", header: "IntTools_Tools.hxx".}
proc computeTolerance*(theCurve3D: Handle[GeomCurve];
                      theCurve2D: Handle[Geom2dCurve];
                      theSurf: Handle[GeomSurface]; theFirst: StandardReal;
                      theLast: StandardReal; theMaxDist: var StandardReal;
                      theMaxPar: var StandardReal;
                      theTolRange: StandardReal = pConfusion()): StandardBoolean {.
    importcpp: "IntTools_Tools::ComputeTolerance(@)", header: "IntTools_Tools.hxx".}
proc computeIntRange*(theTol1: StandardReal; theTol2: StandardReal;
                     theAngle: StandardReal): StandardReal {.
    importcpp: "IntTools_Tools::ComputeIntRange(@)", header: "IntTools_Tools.hxx".}

