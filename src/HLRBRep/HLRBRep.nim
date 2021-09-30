##  Created on: 1992-10-14
##  Created by: Christophe MARION
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of TopoDS_Edge"
discard "forward decl of HLRBRep_Curve"
discard "forward decl of HLRBRep_CurveTool"
discard "forward decl of HLRBRep_BCurveTool"
discard "forward decl of HLRBRep_Curve"
discard "forward decl of HLRBRep_SurfaceTool"
discard "forward decl of HLRBRep_BSurfaceTool"
discard "forward decl of HLRBRep_Surface"
discard "forward decl of HLRBRep_CLPropsATool"
discard "forward decl of HLRBRep_CLProps"
discard "forward decl of HLRBRep_SLPropsATool"
discard "forward decl of HLRBRep_SLProps"
discard "forward decl of HLRBRep_CInter"
discard "forward decl of HLRBRep_LineTool"
discard "forward decl of HLRBRep_InterCSurf"
discard "forward decl of HLRBRep_EdgeFaceTool"
discard "forward decl of HLRBRep_Intersector"
discard "forward decl of HLRBRep_EdgeData"
discard "forward decl of HLRBRep_FaceData"
discard "forward decl of HLRBRep_FaceIterator"
discard "forward decl of HLRBRep_Data"
discard "forward decl of HLRBRep_ShapeToHLR"
discard "forward decl of HLRBRep_HLRToShape"
discard "forward decl of HLRBRep_ShapeBounds"
discard "forward decl of HLRBRep_EdgeInterferenceTool"
discard "forward decl of HLRBRep_VertexList"
discard "forward decl of HLRBRep_EdgeIList"
discard "forward decl of HLRBRep_AreaLimit"
discard "forward decl of HLRBRep_EdgeBuilder"
discard "forward decl of HLRBRep_Hider"
discard "forward decl of HLRBRep_InternalAlgo"
discard "forward decl of HLRBRep_Algo"
discard "forward decl of HLRBRep_PolyAlgo"
discard "forward decl of HLRBRep_BiPoint"
discard "forward decl of HLRBRep_BiPnt2D"
discard "forward decl of HLRBRep_PolyHLRToShape"
discard "forward decl of HLRBRep_TheCurveLocatorOfTheProjPCurOfCInter"
discard "forward decl of HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter"
discard "forward decl of HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter"
discard "forward decl of HLRBRep_TheProjPCurOfCInter"
discard "forward decl of HLRBRep_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfCInter"
discard "forward decl of HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter"
discard "forward decl of HLRBRep_TheIntConicCurveOfCInter"
discard "forward decl of HLRBRep_IntConicCurveOfCInter"
discard "forward decl of HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter"
discard "forward decl of HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter"
discard "forward decl of HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter"
discard "forward decl of HLRBRep_TheIntPCurvePCurveOfCInter"
discard "forward decl of HLRBRep_ThePolygonOfInterCSurf"
discard "forward decl of HLRBRep_ThePolygonToolOfInterCSurf"
discard "forward decl of HLRBRep_ThePolyhedronOfInterCSurf"
discard "forward decl of HLRBRep_ThePolyhedronToolOfInterCSurf"
discard "forward decl of HLRBRep_TheInterferenceOfInterCSurf"
discard "forward decl of HLRBRep_TheCSFunctionOfInterCSurf"
discard "forward decl of HLRBRep_TheExactInterCSurf"
discard "forward decl of HLRBRep_TheQuadCurvFuncOfTheQuadCurvExactInterCSurf"
discard "forward decl of HLRBRep_TheQuadCurvExactInterCSurf"
type
  HLRBRep* {.importcpp: "HLRBRep", header: "HLRBRep.hxx", bycopy.} = object


proc makeEdge*(ec: HLRBRepCurve; u1: cfloat; u2: cfloat): TopoDS_Edge {.
    importcpp: "HLRBRep::MakeEdge(@)", header: "HLRBRep.hxx".}
proc makeEdge3d*(ec: HLRBRepCurve; u1: cfloat; u2: cfloat): TopoDS_Edge {.
    importcpp: "HLRBRep::MakeEdge3d(@)", header: "HLRBRep.hxx".}
proc polyHLRAngleAndDeflection*(inAngl: cfloat; outAngl: var cfloat;
                               outDefl: var cfloat) {.
    importcpp: "HLRBRep::PolyHLRAngleAndDeflection(@)", header: "HLRBRep.hxx".}

























