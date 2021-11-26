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
    shapeIndex* {.importc: "ShapeIndex".}: cint
    faceConex1* {.importc: "FaceConex1".}: cint
    face1Pt1* {.importc: "Face1Pt1".}: cint
    face1Pt2* {.importc: "Face1Pt2".}: cint
    faceConex2* {.importc: "FaceConex2".}: cint
    face2Pt1* {.importc: "Face2Pt1".}: cint
    face2Pt2* {.importc: "Face2Pt2".}: cint
    minSeg* {.importc: "MinSeg".}: cint
    maxSeg* {.importc: "MaxSeg".}: cint
    segFlags* {.importc: "SegFlags".}: cint


proc constructHLRAlgoBiPointIndicesT*(): HLRAlgoBiPointIndicesT {.constructor,
    importcpp: "HLRAlgo_BiPoint::IndicesT(@)", header: "HLRAlgo_BiPoint.hxx".}
type
  HLRAlgoBiPointPointsT* {.importcpp: "HLRAlgo_BiPoint::PointsT",
                          header: "HLRAlgo_BiPoint.hxx", bycopy.} = object
    pnt1* {.importc: "Pnt1".}: Xyz
    pnt2* {.importc: "Pnt2".}: Xyz
    pntP1* {.importc: "PntP1".}: Xyz
    pntP2* {.importc: "PntP2".}: Xyz


proc pntP12D*(this: HLRAlgoBiPointPointsT): Xy {.noSideEffect, importcpp: "PntP12D",
    header: "HLRAlgo_BiPoint.hxx".}
proc pntP22D*(this: HLRAlgoBiPointPointsT): Xy {.noSideEffect, importcpp: "PntP22D",
    header: "HLRAlgo_BiPoint.hxx".}
proc constructHLRAlgoBiPoint*(): HLRAlgoBiPoint {.constructor,
    importcpp: "HLRAlgo_BiPoint(@)", header: "HLRAlgo_BiPoint.hxx".}
proc constructHLRAlgoBiPoint*(x1: cfloat; y1: cfloat; z1: cfloat; x2: cfloat; y2: cfloat;
                             z2: cfloat; xt1: cfloat; yt1: cfloat; zt1: cfloat;
                             xt2: cfloat; yt2: cfloat; zt2: cfloat; index: cint;
                             reg1: bool; regn: bool; outl: bool; intl: bool): HLRAlgoBiPoint {.
    constructor, importcpp: "HLRAlgo_BiPoint(@)", header: "HLRAlgo_BiPoint.hxx".}
proc constructHLRAlgoBiPoint*(x1: cfloat; y1: cfloat; z1: cfloat; x2: cfloat; y2: cfloat;
                             z2: cfloat; xt1: cfloat; yt1: cfloat; zt1: cfloat;
                             xt2: cfloat; yt2: cfloat; zt2: cfloat; index: cint;
                             flag: cint): HLRAlgoBiPoint {.constructor,
    importcpp: "HLRAlgo_BiPoint(@)", header: "HLRAlgo_BiPoint.hxx".}
proc constructHLRAlgoBiPoint*(x1: cfloat; y1: cfloat; z1: cfloat; x2: cfloat; y2: cfloat;
                             z2: cfloat; xt1: cfloat; yt1: cfloat; zt1: cfloat;
                             xt2: cfloat; yt2: cfloat; zt2: cfloat; index: cint;
                             i1: cint; i1p1: cint; i1p2: cint; reg1: bool; regn: bool;
                             outl: bool; intl: bool): HLRAlgoBiPoint {.constructor,
    importcpp: "HLRAlgo_BiPoint(@)", header: "HLRAlgo_BiPoint.hxx".}
proc constructHLRAlgoBiPoint*(x1: cfloat; y1: cfloat; z1: cfloat; x2: cfloat; y2: cfloat;
                             z2: cfloat; xt1: cfloat; yt1: cfloat; zt1: cfloat;
                             xt2: cfloat; yt2: cfloat; zt2: cfloat; index: cint;
                             i1: cint; i1p1: cint; i1p2: cint; flag: cint): HLRAlgoBiPoint {.
    constructor, importcpp: "HLRAlgo_BiPoint(@)", header: "HLRAlgo_BiPoint.hxx".}
proc constructHLRAlgoBiPoint*(x1: cfloat; y1: cfloat; z1: cfloat; x2: cfloat; y2: cfloat;
                             z2: cfloat; xt1: cfloat; yt1: cfloat; zt1: cfloat;
                             xt2: cfloat; yt2: cfloat; zt2: cfloat; index: cint;
                             i1: cint; i1p1: cint; i1p2: cint; i2: cint; i2p1: cint;
                             i2p2: cint; reg1: bool; regn: bool; outl: bool; intl: bool): HLRAlgoBiPoint {.
    constructor, importcpp: "HLRAlgo_BiPoint(@)", header: "HLRAlgo_BiPoint.hxx".}
proc constructHLRAlgoBiPoint*(x1: cfloat; y1: cfloat; z1: cfloat; x2: cfloat; y2: cfloat;
                             z2: cfloat; xt1: cfloat; yt1: cfloat; zt1: cfloat;
                             xt2: cfloat; yt2: cfloat; zt2: cfloat; index: cint;
                             i1: cint; i1p1: cint; i1p2: cint; i2: cint; i2p1: cint;
                             i2p2: cint; flag: cint): HLRAlgoBiPoint {.constructor,
    importcpp: "HLRAlgo_BiPoint(@)", header: "HLRAlgo_BiPoint.hxx".}
proc rg1Line*(this: HLRAlgoBiPoint): bool {.noSideEffect, importcpp: "Rg1Line",
                                        header: "HLRAlgo_BiPoint.hxx".}
proc rg1Line*(this: var HLRAlgoBiPoint; b: bool) {.importcpp: "Rg1Line",
    header: "HLRAlgo_BiPoint.hxx".}
proc rgNLine*(this: HLRAlgoBiPoint): bool {.noSideEffect, importcpp: "RgNLine",
                                        header: "HLRAlgo_BiPoint.hxx".}
proc rgNLine*(this: var HLRAlgoBiPoint; b: bool) {.importcpp: "RgNLine",
    header: "HLRAlgo_BiPoint.hxx".}
proc outLine*(this: HLRAlgoBiPoint): bool {.noSideEffect, importcpp: "OutLine",
                                        header: "HLRAlgo_BiPoint.hxx".}
proc outLine*(this: var HLRAlgoBiPoint; b: bool) {.importcpp: "OutLine",
    header: "HLRAlgo_BiPoint.hxx".}
proc intLine*(this: HLRAlgoBiPoint): bool {.noSideEffect, importcpp: "IntLine",
                                        header: "HLRAlgo_BiPoint.hxx".}
proc intLine*(this: var HLRAlgoBiPoint; b: bool) {.importcpp: "IntLine",
    header: "HLRAlgo_BiPoint.hxx".}
proc hidden*(this: HLRAlgoBiPoint): bool {.noSideEffect, importcpp: "Hidden",
                                       header: "HLRAlgo_BiPoint.hxx".}
proc hidden*(this: var HLRAlgoBiPoint; b: bool) {.importcpp: "Hidden",
    header: "HLRAlgo_BiPoint.hxx".}
proc indices*(this: var HLRAlgoBiPoint): var HLRAlgoBiPointIndicesT {.
    importcpp: "Indices", header: "HLRAlgo_BiPoint.hxx".}
proc points*(this: var HLRAlgoBiPoint): var HLRAlgoBiPointPointsT {.
    importcpp: "Points", header: "HLRAlgo_BiPoint.hxx".}

























