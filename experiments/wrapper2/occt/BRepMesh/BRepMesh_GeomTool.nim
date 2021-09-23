##  Copyright (c) 2013 OPEN CASCADE SAS
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
  ../Standard/Standard_Macro, ../GCPnts/GCPnts_TangentialDeflection,
  ../GeomAbs/GeomAbs_IsoType, ../TopoDS/TopoDS_Edge, ../Precision/Precision

discard "forward decl of BRepAdaptor_Curve"
discard "forward decl of BRepAdaptor_HSurface"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Dir"
discard "forward decl of BRepMesh_DefaultRangeSplitter"
discard "forward decl of Adaptor3d_HSurface"
type
  BRepMesh_GeomTool* {.importcpp: "BRepMesh_GeomTool",
                      header: "BRepMesh_GeomTool.hxx", bycopy.} = object ## ! Enumerates states of segments intersection check.
                                                                    ## ! Constructor.
                                                                    ## ! Initiates
                                                                    ## discretization of the given geometric curve.
                                                                    ## ! @param theCurve curve to be discretized.
                                                                    ## ! @param
                                                                    ## theFirstParam first parameter of the curve.
                                                                    ## ! @param theLastParam last parameter of the curve.
                                                                    ## ! @param
                                                                    ## theLinDeflection linear deflection.
                                                                    ## ! @param
                                                                    ## theAngDeflection angular deflection.
                                                                    ## ! @param
                                                                    ## theMinPointsNb minimum nuber of points to be produced.
                                                                    ## ! @name static API
                                                                    ## ! Computes normal to the given surface at the specified
                                                                    ## ! position in parametric space.
                                                                    ## ! @param theSurface surface the normal should be found for.
                                                                    ## ! @param theParamU U parameter in parametric space of the surface.
                                                                    ## ! @param theParamV V parameter in parametric space of the surface.
                                                                    ## ! @param[out] thePoint 3d point
                                                                    ## corresponding to the given parameters.
                                                                    ## ! @param[out] theNormal normal vector at the point specified by the parameters.
                                                                    ## ! @return FALSE if the normal can not be computed, TRUE elsewhere.
                                                                    ## ! Classifies the point in case of coincidence of two vectors.
                                                                    ## ! @param thePoint1 the start point of a segment (base point).
                                                                    ## ! @param thePoint2 the end point of a segment.
                                                                    ## ! @param
                                                                    ## thePointToCheck the point to classify.
                                                                    ## ! @return zero value if point is out of segment and non zero value
                                                                    ## ! if point is between the first and the second point of segment.

  BRepMesh_GeomToolIntFlag* {.size: sizeof(cint),
                             importcpp: "BRepMesh_GeomTool::IntFlag",
                             header: "BRepMesh_GeomTool.hxx".} = enum
    NoIntersection, Cross, EndPointTouch, PointOnSegment, Glued, Same


proc constructBRepMesh_GeomTool*(theCurve: BRepAdaptor_Curve;
                                theFirstParam: Standard_Real;
                                theLastParam: Standard_Real;
                                theLinDeflection: Standard_Real;
                                theAngDeflection: Standard_Real;
                                theMinPointsNb: Standard_Integer = 2;
                                theMinSize: Standard_Real = Confusion()): BRepMesh_GeomTool {.
    constructor, importcpp: "BRepMesh_GeomTool(@)", header: "BRepMesh_GeomTool.hxx".}
proc constructBRepMesh_GeomTool*(theSurface: handle[BRepAdaptor_HSurface];
                                theIsoType: GeomAbs_IsoType;
                                theParamIso: Standard_Real;
                                theFirstParam: Standard_Real;
                                theLastParam: Standard_Real;
                                theLinDeflection: Standard_Real;
                                theAngDeflection: Standard_Real;
                                theMinPointsNb: Standard_Integer = 2;
                                theMinSize: Standard_Real = Confusion()): BRepMesh_GeomTool {.
    constructor, importcpp: "BRepMesh_GeomTool(@)", header: "BRepMesh_GeomTool.hxx".}
proc AddPoint*(this: var BRepMesh_GeomTool; thePoint: gp_Pnt; theParam: Standard_Real;
              theIsReplace: Standard_Boolean = Standard_True): Standard_Integer {.
    importcpp: "AddPoint", header: "BRepMesh_GeomTool.hxx".}
proc NbPoints*(this: BRepMesh_GeomTool): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "BRepMesh_GeomTool.hxx".}
proc Value*(this: BRepMesh_GeomTool; theIndex: Standard_Integer;
           theIsoParam: Standard_Real; theParam: var Standard_Real;
           thePoint: var gp_Pnt; theUV: var gp_Pnt2d): Standard_Boolean {.noSideEffect,
    importcpp: "Value", header: "BRepMesh_GeomTool.hxx".}
proc Value*(this: BRepMesh_GeomTool; theIndex: Standard_Integer;
           theSurface: handle[BRepAdaptor_HSurface]; theParam: var Standard_Real;
           thePoint: var gp_Pnt; theUV: var gp_Pnt2d): Standard_Boolean {.noSideEffect,
    importcpp: "Value", header: "BRepMesh_GeomTool.hxx".}
proc Normal*(theSurface: handle[BRepAdaptor_HSurface]; theParamU: Standard_Real;
            theParamV: Standard_Real; thePoint: var gp_Pnt; theNormal: var gp_Dir): Standard_Boolean {.
    importcpp: "BRepMesh_GeomTool::Normal(@)", header: "BRepMesh_GeomTool.hxx".}
proc IntLinLin*(theStartPnt1: gp_XY; theEndPnt1: gp_XY; theStartPnt2: gp_XY;
               theEndPnt2: gp_XY; theIntPnt: var gp_XY;
               theParamOnSegment: array[2, Standard_Real]): BRepMesh_GeomToolIntFlag {.
    importcpp: "BRepMesh_GeomTool::IntLinLin(@)", header: "BRepMesh_GeomTool.hxx".}
proc IntSegSeg*(theStartPnt1: gp_XY; theEndPnt1: gp_XY; theStartPnt2: gp_XY;
               theEndPnt2: gp_XY; isConsiderEndPointTouch: Standard_Boolean;
               isConsiderPointOnSegment: Standard_Boolean; theIntPnt: var gp_Pnt2d): BRepMesh_GeomToolIntFlag {.
    importcpp: "BRepMesh_GeomTool::IntSegSeg(@)", header: "BRepMesh_GeomTool.hxx".}
proc SquareDeflectionOfSegment*(theFirstPoint: gp_Pnt; theLastPoint: gp_Pnt;
                               theMidPoint: gp_Pnt): Standard_Real {.
    importcpp: "BRepMesh_GeomTool::SquareDeflectionOfSegment(@)",
    header: "BRepMesh_GeomTool.hxx".}
proc CellsCount*(theSurface: handle[Adaptor3d_HSurface];
                theVerticesNb: Standard_Integer; theDeflection: Standard_Real;
                theRangeSplitter: ptr BRepMesh_DefaultRangeSplitter): pair[
    Standard_Integer, Standard_Integer] {.importcpp: "BRepMesh_GeomTool::CellsCount(@)",
                                        header: "BRepMesh_GeomTool.hxx".}