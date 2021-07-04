##  Created on: 1993-06-17
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TopAbs/TopAbs_State,
  ../Standard/Standard_OStream, TopOpeBRepDS_Kind, ../Standard/Standard_Integer,
  ../TCollection/TCollection_AsciiString, ../TopAbs/TopAbs_ShapeEnum,
  ../TopAbs/TopAbs_Orientation, TopOpeBRepDS_Config, ../Standard/Standard_Boolean

discard "forward decl of TCollection_AsciiString"
discard "forward decl of TopOpeBRepDS_Interference"
discard "forward decl of TopOpeBRepDS_InterferenceIterator"
discard "forward decl of TopOpeBRepDS_TKI"
discard "forward decl of TopOpeBRepDS_Transition"
discard "forward decl of TopOpeBRepDS_CurvePointInterference"
discard "forward decl of TopOpeBRepDS_SurfaceCurveInterference"
discard "forward decl of TopOpeBRepDS_SolidSurfaceInterference"
discard "forward decl of TopOpeBRepDS_ShapeShapeInterference"
discard "forward decl of TopOpeBRepDS_EdgeVertexInterference"
discard "forward decl of TopOpeBRepDS_FaceEdgeInterference"
discard "forward decl of TopOpeBRepDS_Surface"
discard "forward decl of TopOpeBRepDS_Curve"
discard "forward decl of TopOpeBRepDS_Point"
discard "forward decl of TopOpeBRepDS_GeometryData"
discard "forward decl of TopOpeBRepDS_SurfaceData"
discard "forward decl of TopOpeBRepDS_CurveData"
discard "forward decl of TopOpeBRepDS_PointData"
discard "forward decl of TopOpeBRepDS_ShapeData"
discard "forward decl of TopOpeBRepDS_DSS"
discard "forward decl of TopOpeBRepDS_DataStructure"
discard "forward decl of TopOpeBRepDS_SurfaceIterator"
discard "forward decl of TopOpeBRepDS_CurveIterator"
discard "forward decl of TopOpeBRepDS_PointIterator"
discard "forward decl of TopOpeBRepDS_SurfaceExplorer"
discard "forward decl of TopOpeBRepDS_CurveExplorer"
discard "forward decl of TopOpeBRepDS_PointExplorer"
discard "forward decl of TopOpeBRepDS_InterferenceTool"
discard "forward decl of TopOpeBRepDS_BuildTool"
discard "forward decl of TopOpeBRepDS_Dumper"
discard "forward decl of TopOpeBRepDS_Marker"
discard "forward decl of TopOpeBRepDS_HDataStructure"
discard "forward decl of TopOpeBRepDS_EdgeInterferenceTool"
discard "forward decl of TopOpeBRepDS_Edge3dInterferenceTool"
discard "forward decl of TopOpeBRepDS_FaceInterferenceTool"
discard "forward decl of TopOpeBRepDS_Filter"
discard "forward decl of TopOpeBRepDS_Reducer"
discard "forward decl of TopOpeBRepDS_TOOL"
discard "forward decl of TopOpeBRepDS_FIR"
discard "forward decl of TopOpeBRepDS_EIR"
discard "forward decl of TopOpeBRepDS_Check"
discard "forward decl of TopOpeBRepDS_GapFiller"
discard "forward decl of TopOpeBRepDS_GapTool"
discard "forward decl of TopOpeBRepDS_Association"
discard "forward decl of TopOpeBRepDS_ListOfShapeOn1State"
discard "forward decl of TopOpeBRepDS_Explorer"
discard "forward decl of TopOpeBRepDS_ShapeWithState"
type
  TopOpeBRepDS* {.importcpp: "TopOpeBRepDS", header: "TopOpeBRepDS.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## IN
                                                                                   ## OU
                                                                                   ## ON
                                                                                   ## UN


proc SPrint*(S: TopAbs_State): TCollection_AsciiString {.
    importcpp: "TopOpeBRepDS::SPrint(@)", header: "TopOpeBRepDS.hxx".}
proc Print*(S: TopAbs_State; OS: var Standard_OStream): var Standard_OStream {.
    importcpp: "TopOpeBRepDS::Print(@)", header: "TopOpeBRepDS.hxx".}
proc SPrint*(K: TopOpeBRepDS_Kind): TCollection_AsciiString {.
    importcpp: "TopOpeBRepDS::SPrint(@)", header: "TopOpeBRepDS.hxx".}
proc SPrint*(K: TopOpeBRepDS_Kind; I: Standard_Integer;
            B: TCollection_AsciiString = ""; A: TCollection_AsciiString = ""): TCollection_AsciiString {.
    importcpp: "TopOpeBRepDS::SPrint(@)", header: "TopOpeBRepDS.hxx".}
proc Print*(K: TopOpeBRepDS_Kind; S: var Standard_OStream): var Standard_OStream {.
    importcpp: "TopOpeBRepDS::Print(@)", header: "TopOpeBRepDS.hxx".}
proc Print*(K: TopOpeBRepDS_Kind; I: Standard_Integer; S: var Standard_OStream;
           B: TCollection_AsciiString = ""; A: TCollection_AsciiString = ""): var Standard_OStream {.
    importcpp: "TopOpeBRepDS::Print(@)", header: "TopOpeBRepDS.hxx".}
proc SPrint*(T: TopAbs_ShapeEnum): TCollection_AsciiString {.
    importcpp: "TopOpeBRepDS::SPrint(@)", header: "TopOpeBRepDS.hxx".}
proc SPrint*(T: TopAbs_ShapeEnum; I: Standard_Integer): TCollection_AsciiString {.
    importcpp: "TopOpeBRepDS::SPrint(@)", header: "TopOpeBRepDS.hxx".}
proc Print*(T: TopAbs_ShapeEnum; I: Standard_Integer; S: var Standard_OStream): var Standard_OStream {.
    importcpp: "TopOpeBRepDS::Print(@)", header: "TopOpeBRepDS.hxx".}
proc SPrint*(O: TopAbs_Orientation): TCollection_AsciiString {.
    importcpp: "TopOpeBRepDS::SPrint(@)", header: "TopOpeBRepDS.hxx".}
proc SPrint*(C: TopOpeBRepDS_Config): TCollection_AsciiString {.
    importcpp: "TopOpeBRepDS::SPrint(@)", header: "TopOpeBRepDS.hxx".}
proc Print*(C: TopOpeBRepDS_Config; S: var Standard_OStream): var Standard_OStream {.
    importcpp: "TopOpeBRepDS::Print(@)", header: "TopOpeBRepDS.hxx".}
proc IsGeometry*(K: TopOpeBRepDS_Kind): Standard_Boolean {.
    importcpp: "TopOpeBRepDS::IsGeometry(@)", header: "TopOpeBRepDS.hxx".}
proc IsTopology*(K: TopOpeBRepDS_Kind): Standard_Boolean {.
    importcpp: "TopOpeBRepDS::IsTopology(@)", header: "TopOpeBRepDS.hxx".}
proc KindToShape*(K: TopOpeBRepDS_Kind): TopAbs_ShapeEnum {.
    importcpp: "TopOpeBRepDS::KindToShape(@)", header: "TopOpeBRepDS.hxx".}
proc ShapeToKind*(S: TopAbs_ShapeEnum): TopOpeBRepDS_Kind {.
    importcpp: "TopOpeBRepDS::ShapeToKind(@)", header: "TopOpeBRepDS.hxx".}