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

const
  MDSlioloi* = topOpeBRepDS_ListIteratorOfListOfInterference
  MDSloi* = topOpeBRepDS_ListOfInterference
  MDShi* = handle[TopOpeBRepDS_Interference]
  MDShssi* = handle[TopOpeBRepDS_ShapeShapeInterference]
  MDShcpi* = handle[TopOpeBRepDS_CurvePointInterference]
  MDScpi* = topOpeBRepDS_CurvePointInterference
  MDShevi* = handle[TopOpeBRepDS_EdgeVertexInterference]
  MDSevi* = topOpeBRepDS_EdgeVertexInterference
  MDShfei* = handle[TopOpeBRepDS_FaceEdgeInterference]
  MDShsci* = handle[TopOpeBRepDS_SurfaceCurveInterference]
  MDScux* = topOpeBRepDS_CurveExplorer
  MDScud* = topOpeBRepDS_CurveData
  MDScu* = topOpeBRepDS_Curve
  MDSpox* = topOpeBRepDS_PointExplorer
  MDSpod* = topOpeBRepDS_PointData
  MDSpo* = topOpeBRepDS_Point
  MDSii* = topOpeBRepDS_InterferenceIterator
  MDShds* = handle[TopOpeBRepDS_HDataStructure]
  MDSds* = topOpeBRepDS_DataStructure
  MDSpds* = topOpeBRepDS_PDataStructure
  MDSk* = topOpeBRepDS_Kind
  MDSc* = topOpeBRepDS_Config
  MDSt* = topOpeBRepDS_Transition
  MDSsd* = topOpeBRepDS_ShapeData
  MDSmosd* = topOpeBRepDS_MapOfShapeData
  MDSitl* = topOpeBRepDS_InterferenceTool

