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

discard "forward decl of BRepAdaptor_Curve"
discard "forward decl of BRepAdaptor_HSurface"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Dir"
discard "forward decl of BRepMesh_DefaultRangeSplitter"
discard "forward decl of Adaptor3d_HSurface"
type
  BRepMeshGeomTool* {.importcpp: "BRepMesh_GeomTool",
                     header: "BRepMesh_GeomTool.hxx", bycopy.} = object ## ! Enumerates states of segments intersection check.
                                                                   ## ! Constructor.
                                                                   ## ! Initiates
                                                                   ## discretization of the given geometric curve.
                                                                   ## ! @param theCurve curve to be discretized.
                                                                   ## ! @param theFirstParam first parameter of the curve.
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
                                                                   ## ! @param[out] thePoint 3d point corresponding to the given parameters.
                                                                   ## ! @param[out] theNormal normal vector at the point specified by the parameters.
                                                                   ## ! @return FALSE if the normal can not be computed, TRUE elsewhere.
                                                                   ## ! Classifies the point in case of coincidence of two vectors.
                                                                   ## ! @param thePoint1 the start point of a segment (base point).
                                                                   ## ! @param thePoint2 the end point of a segment.
                                                                   ## ! @param
                                                                   ## thePointToCheck the point to classify.
                                                                   ## ! @return zero value if point is out of segment and non zero value
                                                                   ## ! if point is between the first and the second point of segment.

  BRepMeshGeomToolIntFlag* {.size: sizeof(cint),
                            importcpp: "BRepMesh_GeomTool::IntFlag",
                            header: "BRepMesh_GeomTool.hxx".} = enum
    NoIntersection, Cross, EndPointTouch, PointOnSegment, Glued, Same


proc constructBRepMeshGeomTool*(theCurve: BRepAdaptorCurve;
                               theFirstParam: StandardReal;
                               theLastParam: StandardReal;
                               theLinDeflection: StandardReal;
                               theAngDeflection: StandardReal;
                               theMinPointsNb: StandardInteger = 2;
                               theMinSize: StandardReal = confusion()): BRepMeshGeomTool {.
    constructor, importcpp: "BRepMesh_GeomTool(@)", header: "BRepMesh_GeomTool.hxx".}
proc constructBRepMeshGeomTool*(theSurface: Handle[BRepAdaptorHSurface];
                               theIsoType: GeomAbsIsoType;
                               theParamIso: StandardReal;
                               theFirstParam: StandardReal;
                               theLastParam: StandardReal;
                               theLinDeflection: StandardReal;
                               theAngDeflection: StandardReal;
                               theMinPointsNb: StandardInteger = 2;
                               theMinSize: StandardReal = confusion()): BRepMeshGeomTool {.
    constructor, importcpp: "BRepMesh_GeomTool(@)", header: "BRepMesh_GeomTool.hxx".}
proc addPoint*(this: var BRepMeshGeomTool; thePoint: GpPnt; theParam: StandardReal;
              theIsReplace: StandardBoolean = standardTrue): StandardInteger {.
    importcpp: "AddPoint", header: "BRepMesh_GeomTool.hxx".}
proc nbPoints*(this: BRepMeshGeomTool): StandardInteger {.noSideEffect,
    importcpp: "NbPoints", header: "BRepMesh_GeomTool.hxx".}
proc value*(this: BRepMeshGeomTool; theIndex: StandardInteger;
           theIsoParam: StandardReal; theParam: var StandardReal;
           thePoint: var GpPnt; theUV: var GpPnt2d): StandardBoolean {.noSideEffect,
    importcpp: "Value", header: "BRepMesh_GeomTool.hxx".}
proc value*(this: BRepMeshGeomTool; theIndex: StandardInteger;
           theSurface: Handle[BRepAdaptorHSurface]; theParam: var StandardReal;
           thePoint: var GpPnt; theUV: var GpPnt2d): StandardBoolean {.noSideEffect,
    importcpp: "Value", header: "BRepMesh_GeomTool.hxx".}
proc normal*(theSurface: Handle[BRepAdaptorHSurface]; theParamU: StandardReal;
            theParamV: StandardReal; thePoint: var GpPnt; theNormal: var GpDir): StandardBoolean {.
    importcpp: "BRepMesh_GeomTool::Normal(@)", header: "BRepMesh_GeomTool.hxx".}
proc intLinLin*(theStartPnt1: GpXY; theEndPnt1: GpXY; theStartPnt2: GpXY;
               theEndPnt2: GpXY; theIntPnt: var GpXY;
               theParamOnSegment: array[2, StandardReal]): BRepMeshGeomToolIntFlag {.
    importcpp: "BRepMesh_GeomTool::IntLinLin(@)", header: "BRepMesh_GeomTool.hxx".}
proc intSegSeg*(theStartPnt1: GpXY; theEndPnt1: GpXY; theStartPnt2: GpXY;
               theEndPnt2: GpXY; isConsiderEndPointTouch: StandardBoolean;
               isConsiderPointOnSegment: StandardBoolean; theIntPnt: var GpPnt2d): BRepMeshGeomToolIntFlag {.
    importcpp: "BRepMesh_GeomTool::IntSegSeg(@)", header: "BRepMesh_GeomTool.hxx".}
proc squareDeflectionOfSegment*(theFirstPoint: GpPnt; theLastPoint: GpPnt;
                               theMidPoint: GpPnt): StandardReal {.
    importcpp: "BRepMesh_GeomTool::SquareDeflectionOfSegment(@)",
    header: "BRepMesh_GeomTool.hxx".}
proc cellsCount*(theSurface: Handle[Adaptor3dHSurface];
                theVerticesNb: StandardInteger; theDeflection: StandardReal;
                theRangeSplitter: ptr BRepMeshDefaultRangeSplitter): Pair[
    StandardInteger, StandardInteger] {.importcpp: "BRepMesh_GeomTool::CellsCount(@)",
                                      header: "BRepMesh_GeomTool.hxx".}

