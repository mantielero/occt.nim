##  Created on: 1997-09-24
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../TopOpeBRepTool/TopOpeBRepTool_define,
  TopOpeBRepDS_ListIteratorOfListOfInterference, TopOpeBRepDS_ListOfInterference,
  TopOpeBRepDS_Interference, TopOpeBRepDS_ShapeShapeInterference,
  TopOpeBRepDS_CurvePointInterference, TopOpeBRepDS_EdgeVertexInterference,
  TopOpeBRepDS_FaceEdgeInterference, TopOpeBRepDS_InterferenceIterator,
  TopOpeBRepDS_HDataStructure, TopOpeBRepDS_PDataStructure,
  TopOpeBRepDS_DataStructure, TopOpeBRepDS_Kind, TopOpeBRepDS_Config,
  TopOpeBRepDS_Transition

const
  MDSlioloi* = TopOpeBRepDS_ListIteratorOfListOfInterference
  MDSloi* = TopOpeBRepDS_ListOfInterference
  MDShi* = handle[TopOpeBRepDS_Interference]
  MDShssi* = handle[TopOpeBRepDS_ShapeShapeInterference]
  MDShcpi* = handle[TopOpeBRepDS_CurvePointInterference]
  MDScpi* = TopOpeBRepDS_CurvePointInterference
  MDShevi* = handle[TopOpeBRepDS_EdgeVertexInterference]
  MDSevi* = TopOpeBRepDS_EdgeVertexInterference
  MDShfei* = handle[TopOpeBRepDS_FaceEdgeInterference]
  MDShsci* = handle[TopOpeBRepDS_SurfaceCurveInterference]
  MDScux* = TopOpeBRepDS_CurveExplorer
  MDScud* = TopOpeBRepDS_CurveData
  MDScu* = TopOpeBRepDS_Curve
  MDSpox* = TopOpeBRepDS_PointExplorer
  MDSpod* = TopOpeBRepDS_PointData
  MDSpo* = TopOpeBRepDS_Point
  MDSii* = TopOpeBRepDS_InterferenceIterator
  MDShds* = handle[TopOpeBRepDS_HDataStructure]
  MDSds* = TopOpeBRepDS_DataStructure
  MDSpds* = TopOpeBRepDS_PDataStructure
  MDSk* = TopOpeBRepDS_Kind
  MDSc* = TopOpeBRepDS_Config
  MDSt* = TopOpeBRepDS_Transition
  MDSsd* = TopOpeBRepDS_ShapeData
  MDSmosd* = TopOpeBRepDS_MapOfShapeData
  MDSitl* = TopOpeBRepDS_InterferenceTool
