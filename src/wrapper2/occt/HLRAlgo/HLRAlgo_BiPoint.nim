##  Created on: 1995-06-22
##  Created by: Christophe MARION
##  Copyright (c) 1995-1999 Matra Datavision
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

type
  HLRAlgoBiPoint* {.importcpp: "HLRAlgo_BiPoint", header: "HLRAlgo_BiPoint.hxx",
                   bycopy.} = object

  HLRAlgoBiPointIndicesT* {.importcpp: "HLRAlgo_BiPoint::IndicesT",
                           header: "HLRAlgo_BiPoint.hxx", bycopy.} = object
    shapeIndex* {.importc: "ShapeIndex".}: StandardInteger
    faceConex1* {.importc: "FaceConex1".}: StandardInteger
    face1Pt1* {.importc: "Face1Pt1".}: StandardInteger
    face1Pt2* {.importc: "Face1Pt2".}: StandardInteger
    faceConex2* {.importc: "FaceConex2".}: StandardInteger
    face2Pt1* {.importc: "Face2Pt1".}: StandardInteger
    face2Pt2* {.importc: "Face2Pt2".}: StandardInteger
    minSeg* {.importc: "MinSeg".}: StandardInteger
    maxSeg* {.importc: "MaxSeg".}: StandardInteger
    segFlags* {.importc: "SegFlags".}: StandardInteger


proc constructHLRAlgoBiPointIndicesT*(): HLRAlgoBiPointIndicesT {.constructor,
    importcpp: "HLRAlgo_BiPoint::IndicesT(@)", header: "HLRAlgo_BiPoint.hxx".}
type
  HLRAlgoBiPointPointsT* {.importcpp: "HLRAlgo_BiPoint::PointsT",
                          header: "HLRAlgo_BiPoint.hxx", bycopy.} = object
    pnt1* {.importc: "Pnt1".}: GpXYZ
    pnt2* {.importc: "Pnt2".}: GpXYZ
    pntP1* {.importc: "PntP1".}: GpXYZ
    pntP2* {.importc: "PntP2".}: GpXYZ


proc pntP12D*(this: HLRAlgoBiPointPointsT): GpXY {.noSideEffect,
    importcpp: "PntP12D", header: "HLRAlgo_BiPoint.hxx".}
proc pntP22D*(this: HLRAlgoBiPointPointsT): GpXY {.noSideEffect,
    importcpp: "PntP22D", header: "HLRAlgo_BiPoint.hxx".}
proc constructHLRAlgoBiPoint*(): HLRAlgoBiPoint {.constructor,
    importcpp: "HLRAlgo_BiPoint(@)", header: "HLRAlgo_BiPoint.hxx".}
proc constructHLRAlgoBiPoint*(x1: StandardReal; y1: StandardReal; z1: StandardReal;
                             x2: StandardReal; y2: StandardReal; z2: StandardReal;
                             xt1: StandardReal; yt1: StandardReal;
                             zt1: StandardReal; xt2: StandardReal;
                             yt2: StandardReal; zt2: StandardReal;
                             index: StandardInteger; reg1: StandardBoolean;
                             regn: StandardBoolean; outl: StandardBoolean;
                             intl: StandardBoolean): HLRAlgoBiPoint {.constructor,
    importcpp: "HLRAlgo_BiPoint(@)", header: "HLRAlgo_BiPoint.hxx".}
proc constructHLRAlgoBiPoint*(x1: StandardReal; y1: StandardReal; z1: StandardReal;
                             x2: StandardReal; y2: StandardReal; z2: StandardReal;
                             xt1: StandardReal; yt1: StandardReal;
                             zt1: StandardReal; xt2: StandardReal;
                             yt2: StandardReal; zt2: StandardReal;
                             index: StandardInteger; flag: StandardInteger): HLRAlgoBiPoint {.
    constructor, importcpp: "HLRAlgo_BiPoint(@)", header: "HLRAlgo_BiPoint.hxx".}
proc constructHLRAlgoBiPoint*(x1: StandardReal; y1: StandardReal; z1: StandardReal;
                             x2: StandardReal; y2: StandardReal; z2: StandardReal;
                             xt1: StandardReal; yt1: StandardReal;
                             zt1: StandardReal; xt2: StandardReal;
                             yt2: StandardReal; zt2: StandardReal;
                             index: StandardInteger; i1: StandardInteger;
                             i1p1: StandardInteger; i1p2: StandardInteger;
                             reg1: StandardBoolean; regn: StandardBoolean;
                             outl: StandardBoolean; intl: StandardBoolean): HLRAlgoBiPoint {.
    constructor, importcpp: "HLRAlgo_BiPoint(@)", header: "HLRAlgo_BiPoint.hxx".}
proc constructHLRAlgoBiPoint*(x1: StandardReal; y1: StandardReal; z1: StandardReal;
                             x2: StandardReal; y2: StandardReal; z2: StandardReal;
                             xt1: StandardReal; yt1: StandardReal;
                             zt1: StandardReal; xt2: StandardReal;
                             yt2: StandardReal; zt2: StandardReal;
                             index: StandardInteger; i1: StandardInteger;
                             i1p1: StandardInteger; i1p2: StandardInteger;
                             flag: StandardInteger): HLRAlgoBiPoint {.constructor,
    importcpp: "HLRAlgo_BiPoint(@)", header: "HLRAlgo_BiPoint.hxx".}
proc constructHLRAlgoBiPoint*(x1: StandardReal; y1: StandardReal; z1: StandardReal;
                             x2: StandardReal; y2: StandardReal; z2: StandardReal;
                             xt1: StandardReal; yt1: StandardReal;
                             zt1: StandardReal; xt2: StandardReal;
                             yt2: StandardReal; zt2: StandardReal;
                             index: StandardInteger; i1: StandardInteger;
                             i1p1: StandardInteger; i1p2: StandardInteger;
                             i2: StandardInteger; i2p1: StandardInteger;
                             i2p2: StandardInteger; reg1: StandardBoolean;
                             regn: StandardBoolean; outl: StandardBoolean;
                             intl: StandardBoolean): HLRAlgoBiPoint {.constructor,
    importcpp: "HLRAlgo_BiPoint(@)", header: "HLRAlgo_BiPoint.hxx".}
proc constructHLRAlgoBiPoint*(x1: StandardReal; y1: StandardReal; z1: StandardReal;
                             x2: StandardReal; y2: StandardReal; z2: StandardReal;
                             xt1: StandardReal; yt1: StandardReal;
                             zt1: StandardReal; xt2: StandardReal;
                             yt2: StandardReal; zt2: StandardReal;
                             index: StandardInteger; i1: StandardInteger;
                             i1p1: StandardInteger; i1p2: StandardInteger;
                             i2: StandardInteger; i2p1: StandardInteger;
                             i2p2: StandardInteger; flag: StandardInteger): HLRAlgoBiPoint {.
    constructor, importcpp: "HLRAlgo_BiPoint(@)", header: "HLRAlgo_BiPoint.hxx".}
proc rg1Line*(this: HLRAlgoBiPoint): StandardBoolean {.noSideEffect,
    importcpp: "Rg1Line", header: "HLRAlgo_BiPoint.hxx".}
proc rg1Line*(this: var HLRAlgoBiPoint; b: StandardBoolean) {.importcpp: "Rg1Line",
    header: "HLRAlgo_BiPoint.hxx".}
proc rgNLine*(this: HLRAlgoBiPoint): StandardBoolean {.noSideEffect,
    importcpp: "RgNLine", header: "HLRAlgo_BiPoint.hxx".}
proc rgNLine*(this: var HLRAlgoBiPoint; b: StandardBoolean) {.importcpp: "RgNLine",
    header: "HLRAlgo_BiPoint.hxx".}
proc outLine*(this: HLRAlgoBiPoint): StandardBoolean {.noSideEffect,
    importcpp: "OutLine", header: "HLRAlgo_BiPoint.hxx".}
proc outLine*(this: var HLRAlgoBiPoint; b: StandardBoolean) {.importcpp: "OutLine",
    header: "HLRAlgo_BiPoint.hxx".}
proc intLine*(this: HLRAlgoBiPoint): StandardBoolean {.noSideEffect,
    importcpp: "IntLine", header: "HLRAlgo_BiPoint.hxx".}
proc intLine*(this: var HLRAlgoBiPoint; b: StandardBoolean) {.importcpp: "IntLine",
    header: "HLRAlgo_BiPoint.hxx".}
proc hidden*(this: HLRAlgoBiPoint): StandardBoolean {.noSideEffect,
    importcpp: "Hidden", header: "HLRAlgo_BiPoint.hxx".}
proc hidden*(this: var HLRAlgoBiPoint; b: StandardBoolean) {.importcpp: "Hidden",
    header: "HLRAlgo_BiPoint.hxx".}
proc indices*(this: var HLRAlgoBiPoint): var HLRAlgoBiPointIndicesT {.
    importcpp: "Indices", header: "HLRAlgo_BiPoint.hxx".}
proc points*(this: var HLRAlgoBiPoint): var HLRAlgoBiPointPointsT {.
    importcpp: "Points", header: "HLRAlgo_BiPoint.hxx".}

