##  Created on: 1998-07-14
##  Created by: data exchange team
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

discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_BSplineCurve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of Geom_Surface"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of ShapeConstruct_Curve"
discard "forward decl of ShapeConstruct_ProjectCurveOnSurface"
discard "forward decl of ShapeConstruct_CompBezierCurvesToBSplineCurve"
discard "forward decl of ShapeConstruct_CompBezierCurves2dToBSplineCurve2d"
discard "forward decl of ShapeConstruct_MakeTriangulation"
type
  ShapeConstruct* {.importcpp: "ShapeConstruct", header: "ShapeConstruct.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Tool
                                                                                         ## for
                                                                                         ## wire
                                                                                         ## triangulation


proc convertCurveToBSpline*(c3d: Handle[GeomCurve]; first: StandardReal;
                           last: StandardReal; tol3d: StandardReal;
                           continuity: GeomAbsShape; maxSegments: StandardInteger;
                           maxDegree: StandardInteger): Handle[GeomBSplineCurve] {.
    importcpp: "ShapeConstruct::ConvertCurveToBSpline(@)",
    header: "ShapeConstruct.hxx".}
proc convertCurveToBSpline*(c2d: Handle[Geom2dCurve]; first: StandardReal;
                           last: StandardReal; tol2d: StandardReal;
                           continuity: GeomAbsShape; maxSegments: StandardInteger;
                           maxDegree: StandardInteger): Handle[Geom2dBSplineCurve] {.
    importcpp: "ShapeConstruct::ConvertCurveToBSpline(@)",
    header: "ShapeConstruct.hxx".}
proc convertSurfaceToBSpline*(surf: Handle[GeomSurface]; uf: StandardReal;
                             ul: StandardReal; vf: StandardReal; vl: StandardReal;
                             tol3d: StandardReal; continuity: GeomAbsShape;
                             maxSegments: StandardInteger;
                             maxDegree: StandardInteger): Handle[
    GeomBSplineSurface] {.importcpp: "ShapeConstruct::ConvertSurfaceToBSpline(@)",
                         header: "ShapeConstruct.hxx".}
proc joinPCurves*(theEdges: Handle[TopToolsHSequenceOfShape]; theFace: TopoDS_Face;
                 theEdge: var TopoDS_Edge): StandardBoolean {.
    importcpp: "ShapeConstruct::JoinPCurves(@)", header: "ShapeConstruct.hxx".}
proc joinCurves*(c3d1: Handle[GeomCurve]; ac3d2: Handle[GeomCurve];
                orient1: TopAbsOrientation; orient2: TopAbsOrientation;
                first1: var StandardReal; last1: var StandardReal;
                first2: var StandardReal; last2: var StandardReal;
                c3dOut: var Handle[GeomCurve]; isRev1: var StandardBoolean;
                isRev2: var StandardBoolean): StandardBoolean {.
    importcpp: "ShapeConstruct::JoinCurves(@)", header: "ShapeConstruct.hxx".}
proc joinCurves*(c2d1: Handle[Geom2dCurve]; ac2d2: Handle[Geom2dCurve];
                orient1: TopAbsOrientation; orient2: TopAbsOrientation;
                first1: var StandardReal; last1: var StandardReal;
                first2: var StandardReal; last2: var StandardReal;
                c2dOut: var Handle[Geom2dCurve]; isRev1: var StandardBoolean;
                isRev2: var StandardBoolean;
                isError: StandardBoolean = standardFalse): StandardBoolean {.
    importcpp: "ShapeConstruct::JoinCurves(@)", header: "ShapeConstruct.hxx".}

