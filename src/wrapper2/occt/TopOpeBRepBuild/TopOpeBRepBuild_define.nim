##  Created on: 1997-11-14
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
  ../TopOpeBRepDS/TopOpeBRepDS_define, TopOpeBRepBuild_PWireEdgeSet,
  TopOpeBRepBuild_WireEdgeSet, TopOpeBRepBuild_ShellFaceSet,
  TopOpeBRepBuild_GTopo, TopOpeBRepBuild_PaveClassifier, TopOpeBRepBuild_PaveSet,
  TopOpeBRepBuild_Pave, TopOpeBRepBuild_SolidBuilder, TopOpeBRepBuild_FaceBuilder,
  TopOpeBRepBuild_EdgeBuilder, TopOpeBRepBuild_Builder, TopOpeBRepBuild_PBuilder,
  TopOpeBRepBuild_DataMapIteratorOfDataMapOfShapeListOfShapeListOfShape,
  TopOpeBRepBuild_DataMapOfShapeListOfShapeListOfShape,
  TopOpeBRepBuild_ListIteratorOfListOfShapeListOfShape,
  TopOpeBRepBuild_ListOfShapeListOfShape, TopOpeBRepBuild_ShapeListOfShape,
  TopOpeBRepBuild_HBuilder

const
  MTBpwes* = TopOpeBRepBuild_PWireEdgeSet
  MTBwes* = TopOpeBRepBuild_WireEdgeSet
  MTBsfs* = TopOpeBRepBuild_ShellFaceSet
  MTBgt* = TopOpeBRepBuild_GTopo
  MTBpvc* = TopOpeBRepBuild_PaveClassifier
  MTBpvs* = TopOpeBRepBuild_PaveSet
  MTBhpv* = handle[TopOpeBRepBuild_Pave]
  MTBpv* = TopOpeBRepBuild_Pave
  MTBsb* = TopOpeBRepBuild_SolidBuilder
  MTBfb* = TopOpeBRepBuild_FaceBuilder
  MTBeb* = TopOpeBRepBuild_EdgeBuilder
  MTBbON* = TopOpeBRepBuild_BuilderON
  MTBb* = TopOpeBRepBuild_Builder
  MTBpb* = TopOpeBRepBuild_PBuilder
  MTBdmiodmosloslos* = TopOpeBRepBuild_DataMapIteratorOfDataMapOfShapeListOfShapeListOfShape
  MTBdmosloslos* = TopOpeBRepBuild_DataMapOfShapeListOfShapeListOfShape
  MTBlioloslos* = TopOpeBRepBuild_ListIteratorOfListOfShapeListOfShape
  MTBloslos* = TopOpeBRepBuild_ListOfShapeListOfShape
  MTBslos* = TopOpeBRepBuild_ShapeListOfShape
  MTBhb* = handle[TopOpeBRepBuild_HBuilder]
