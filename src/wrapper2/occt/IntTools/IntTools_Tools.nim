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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../TopAbs/TopAbs_State, ../Standard/Standard_Real,
  IntTools_SequenceOfCurves, ../Precision/Precision

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
  IntTools_Tools* {.importcpp: "IntTools_Tools", header: "IntTools_Tools.hxx", bycopy.} = object ##
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


proc ComputeVV*(V1: TopoDS_Vertex; V2: TopoDS_Vertex): Standard_Integer {.
    importcpp: "IntTools_Tools::ComputeVV(@)", header: "IntTools_Tools.hxx".}
proc HasInternalEdge*(aW: TopoDS_Wire): Standard_Boolean {.
    importcpp: "IntTools_Tools::HasInternalEdge(@)", header: "IntTools_Tools.hxx".}
proc MakeFaceFromWireAndFace*(aW: TopoDS_Wire; aF: TopoDS_Face;
                             aFNew: var TopoDS_Face) {.
    importcpp: "IntTools_Tools::MakeFaceFromWireAndFace(@)",
    header: "IntTools_Tools.hxx".}
proc ClassifyPointByFace*(aF: TopoDS_Face; P: gp_Pnt2d): TopAbs_State {.
    importcpp: "IntTools_Tools::ClassifyPointByFace(@)",
    header: "IntTools_Tools.hxx".}
proc IsVertex*(E: TopoDS_Edge; t: Standard_Real): Standard_Boolean {.
    importcpp: "IntTools_Tools::IsVertex(@)", header: "IntTools_Tools.hxx".}
proc IsVertex*(E: TopoDS_Edge; V: TopoDS_Vertex; t: Standard_Real): Standard_Boolean {.
    importcpp: "IntTools_Tools::IsVertex(@)", header: "IntTools_Tools.hxx".}
proc IsVertex*(aCmnPrt: IntTools_CommonPrt): Standard_Boolean {.
    importcpp: "IntTools_Tools::IsVertex(@)", header: "IntTools_Tools.hxx".}
proc IsMiddlePointsEqual*(E1: TopoDS_Edge; E2: TopoDS_Edge): Standard_Boolean {.
    importcpp: "IntTools_Tools::IsMiddlePointsEqual(@)",
    header: "IntTools_Tools.hxx".}
proc IsVertex*(aP: gp_Pnt; aTolPV: Standard_Real; aV: TopoDS_Vertex): Standard_Boolean {.
    importcpp: "IntTools_Tools::IsVertex(@)", header: "IntTools_Tools.hxx".}
proc IntermediatePoint*(aFirst: Standard_Real; aLast: Standard_Real): Standard_Real {.
    importcpp: "IntTools_Tools::IntermediatePoint(@)",
    header: "IntTools_Tools.hxx".}
proc SplitCurve*(aC: IntTools_Curve; `aS`: var IntTools_SequenceOfCurves): Standard_Integer {.
    importcpp: "IntTools_Tools::SplitCurve(@)", header: "IntTools_Tools.hxx".}
proc RejectLines*(aSIn: IntTools_SequenceOfCurves;
                 aSOut: var IntTools_SequenceOfCurves) {.
    importcpp: "IntTools_Tools::RejectLines(@)", header: "IntTools_Tools.hxx".}
proc IsDirsCoinside*(D1: gp_Dir; D2: gp_Dir): Standard_Boolean {.
    importcpp: "IntTools_Tools::IsDirsCoinside(@)", header: "IntTools_Tools.hxx".}
proc IsDirsCoinside*(D1: gp_Dir; D2: gp_Dir; aTol: Standard_Real): Standard_Boolean {.
    importcpp: "IntTools_Tools::IsDirsCoinside(@)", header: "IntTools_Tools.hxx".}
proc IsClosed*(aC: handle[Geom_Curve]): Standard_Boolean {.
    importcpp: "IntTools_Tools::IsClosed(@)", header: "IntTools_Tools.hxx".}
proc CurveTolerance*(aC: handle[Geom_Curve]; aTolBase: Standard_Real): Standard_Real {.
    importcpp: "IntTools_Tools::CurveTolerance(@)", header: "IntTools_Tools.hxx".}
proc CheckCurve*(theCurve: IntTools_Curve; theBox: var Bnd_Box): Standard_Boolean {.
    importcpp: "IntTools_Tools::CheckCurve(@)", header: "IntTools_Tools.hxx".}
proc IsOnPave*(theT: Standard_Real; theRange: IntTools_Range; theTol: Standard_Real): Standard_Boolean {.
    importcpp: "IntTools_Tools::IsOnPave(@)", header: "IntTools_Tools.hxx".}
proc VertexParameters*(theCP: IntTools_CommonPrt; theT1: var Standard_Real;
                      theT2: var Standard_Real) {.
    importcpp: "IntTools_Tools::VertexParameters(@)", header: "IntTools_Tools.hxx".}
proc VertexParameter*(theCP: IntTools_CommonPrt; theT: var Standard_Real) {.
    importcpp: "IntTools_Tools::VertexParameter(@)", header: "IntTools_Tools.hxx".}
proc IsOnPave1*(theT: Standard_Real; theRange: IntTools_Range; theTol: Standard_Real): Standard_Boolean {.
    importcpp: "IntTools_Tools::IsOnPave1(@)", header: "IntTools_Tools.hxx".}
proc IsInRange*(theRRef: IntTools_Range; theR: IntTools_Range; theTol: Standard_Real): Standard_Boolean {.
    importcpp: "IntTools_Tools::IsInRange(@)", header: "IntTools_Tools.hxx".}
proc SegPln*(theLin: gp_Lin; theTLin1: Standard_Real; theTLin2: Standard_Real;
            theTolLin: Standard_Real; thePln: gp_Pln; theTolPln: Standard_Real;
            theP: var gp_Pnt; theT: var Standard_Real; theTolP: var Standard_Real;
            theTmin: var Standard_Real; theTmax: var Standard_Real): Standard_Integer {.
    importcpp: "IntTools_Tools::SegPln(@)", header: "IntTools_Tools.hxx".}
proc ComputeTolerance*(theCurve3D: handle[Geom_Curve];
                      theCurve2D: handle[Geom2d_Curve];
                      theSurf: handle[Geom_Surface]; theFirst: Standard_Real;
                      theLast: Standard_Real; theMaxDist: var Standard_Real;
                      theMaxPar: var Standard_Real;
                      theTolRange: Standard_Real = PConfusion()): Standard_Boolean {.
    importcpp: "IntTools_Tools::ComputeTolerance(@)", header: "IntTools_Tools.hxx".}
proc ComputeIntRange*(theTol1: Standard_Real; theTol2: Standard_Real;
                     theAngle: Standard_Real): Standard_Real {.
    importcpp: "IntTools_Tools::ComputeIntRange(@)", header: "IntTools_Tools.hxx".}