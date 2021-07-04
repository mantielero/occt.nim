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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../TopTools/TopTools_HSequenceOfShape,
  ../TopAbs/TopAbs_Orientation

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


proc ConvertCurveToBSpline*(C3D: handle[Geom_Curve]; First: Standard_Real;
                           Last: Standard_Real; Tol3d: Standard_Real;
                           Continuity: GeomAbs_Shape;
                           MaxSegments: Standard_Integer;
                           MaxDegree: Standard_Integer): handle[Geom_BSplineCurve] {.
    importcpp: "ShapeConstruct::ConvertCurveToBSpline(@)",
    header: "ShapeConstruct.hxx".}
proc ConvertCurveToBSpline*(C2D: handle[Geom2d_Curve]; First: Standard_Real;
                           Last: Standard_Real; Tol2d: Standard_Real;
                           Continuity: GeomAbs_Shape;
                           MaxSegments: Standard_Integer;
                           MaxDegree: Standard_Integer): handle[
    Geom2d_BSplineCurve] {.importcpp: "ShapeConstruct::ConvertCurveToBSpline(@)",
                          header: "ShapeConstruct.hxx".}
proc ConvertSurfaceToBSpline*(surf: handle[Geom_Surface]; UF: Standard_Real;
                             UL: Standard_Real; VF: Standard_Real;
                             VL: Standard_Real; Tol3d: Standard_Real;
                             Continuity: GeomAbs_Shape;
                             MaxSegments: Standard_Integer;
                             MaxDegree: Standard_Integer): handle[
    Geom_BSplineSurface] {.importcpp: "ShapeConstruct::ConvertSurfaceToBSpline(@)",
                          header: "ShapeConstruct.hxx".}
proc JoinPCurves*(theEdges: handle[TopTools_HSequenceOfShape];
                 theFace: TopoDS_Face; theEdge: var TopoDS_Edge): Standard_Boolean {.
    importcpp: "ShapeConstruct::JoinPCurves(@)", header: "ShapeConstruct.hxx".}
proc JoinCurves*(c3d1: handle[Geom_Curve]; ac3d2: handle[Geom_Curve];
                Orient1: TopAbs_Orientation; Orient2: TopAbs_Orientation;
                first1: var Standard_Real; last1: var Standard_Real;
                first2: var Standard_Real; last2: var Standard_Real;
                c3dOut: var handle[Geom_Curve]; isRev1: var Standard_Boolean;
                isRev2: var Standard_Boolean): Standard_Boolean {.
    importcpp: "ShapeConstruct::JoinCurves(@)", header: "ShapeConstruct.hxx".}
proc JoinCurves*(c2d1: handle[Geom2d_Curve]; ac2d2: handle[Geom2d_Curve];
                Orient1: TopAbs_Orientation; Orient2: TopAbs_Orientation;
                first1: var Standard_Real; last1: var Standard_Real;
                first2: var Standard_Real; last2: var Standard_Real;
                c2dOut: var handle[Geom2d_Curve]; isRev1: var Standard_Boolean;
                isRev2: var Standard_Boolean;
                isError: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "ShapeConstruct::JoinCurves(@)", header: "ShapeConstruct.hxx".}