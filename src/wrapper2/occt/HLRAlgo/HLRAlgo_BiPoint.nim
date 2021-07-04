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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean, ../gp/gp_XYZ,
  ../gp/gp_XY

type
  HLRAlgo_BiPoint* {.importcpp: "HLRAlgo_BiPoint", header: "HLRAlgo_BiPoint.hxx",
                    bycopy.} = object

  HLRAlgo_BiPointIndicesT* {.importcpp: "HLRAlgo_BiPoint::IndicesT",
                            header: "HLRAlgo_BiPoint.hxx", bycopy.} = object
    ShapeIndex* {.importc: "ShapeIndex".}: Standard_Integer
    FaceConex1* {.importc: "FaceConex1".}: Standard_Integer
    Face1Pt1* {.importc: "Face1Pt1".}: Standard_Integer
    Face1Pt2* {.importc: "Face1Pt2".}: Standard_Integer
    FaceConex2* {.importc: "FaceConex2".}: Standard_Integer
    Face2Pt1* {.importc: "Face2Pt1".}: Standard_Integer
    Face2Pt2* {.importc: "Face2Pt2".}: Standard_Integer
    MinSeg* {.importc: "MinSeg".}: Standard_Integer
    MaxSeg* {.importc: "MaxSeg".}: Standard_Integer
    SegFlags* {.importc: "SegFlags".}: Standard_Integer


proc constructHLRAlgo_BiPointIndicesT*(): HLRAlgo_BiPointIndicesT {.constructor,
    importcpp: "HLRAlgo_BiPoint::IndicesT(@)", header: "HLRAlgo_BiPoint.hxx".}
type
  HLRAlgo_BiPointPointsT* {.importcpp: "HLRAlgo_BiPoint::PointsT",
                           header: "HLRAlgo_BiPoint.hxx", bycopy.} = object
    Pnt1* {.importc: "Pnt1".}: gp_XYZ
    Pnt2* {.importc: "Pnt2".}: gp_XYZ
    PntP1* {.importc: "PntP1".}: gp_XYZ
    PntP2* {.importc: "PntP2".}: gp_XYZ


proc PntP12D*(this: HLRAlgo_BiPointPointsT): gp_XY {.noSideEffect,
    importcpp: "PntP12D", header: "HLRAlgo_BiPoint.hxx".}
proc PntP22D*(this: HLRAlgo_BiPointPointsT): gp_XY {.noSideEffect,
    importcpp: "PntP22D", header: "HLRAlgo_BiPoint.hxx".}
proc constructHLRAlgo_BiPoint*(): HLRAlgo_BiPoint {.constructor,
    importcpp: "HLRAlgo_BiPoint(@)", header: "HLRAlgo_BiPoint.hxx".}
proc constructHLRAlgo_BiPoint*(X1: Standard_Real; Y1: Standard_Real;
                              Z1: Standard_Real; X2: Standard_Real;
                              Y2: Standard_Real; Z2: Standard_Real;
                              XT1: Standard_Real; YT1: Standard_Real;
                              ZT1: Standard_Real; XT2: Standard_Real;
                              YT2: Standard_Real; ZT2: Standard_Real;
                              Index: Standard_Integer; reg1: Standard_Boolean;
                              regn: Standard_Boolean; outl: Standard_Boolean;
                              intl: Standard_Boolean): HLRAlgo_BiPoint {.
    constructor, importcpp: "HLRAlgo_BiPoint(@)", header: "HLRAlgo_BiPoint.hxx".}
proc constructHLRAlgo_BiPoint*(X1: Standard_Real; Y1: Standard_Real;
                              Z1: Standard_Real; X2: Standard_Real;
                              Y2: Standard_Real; Z2: Standard_Real;
                              XT1: Standard_Real; YT1: Standard_Real;
                              ZT1: Standard_Real; XT2: Standard_Real;
                              YT2: Standard_Real; ZT2: Standard_Real;
                              Index: Standard_Integer; flag: Standard_Integer): HLRAlgo_BiPoint {.
    constructor, importcpp: "HLRAlgo_BiPoint(@)", header: "HLRAlgo_BiPoint.hxx".}
proc constructHLRAlgo_BiPoint*(X1: Standard_Real; Y1: Standard_Real;
                              Z1: Standard_Real; X2: Standard_Real;
                              Y2: Standard_Real; Z2: Standard_Real;
                              XT1: Standard_Real; YT1: Standard_Real;
                              ZT1: Standard_Real; XT2: Standard_Real;
                              YT2: Standard_Real; ZT2: Standard_Real;
                              Index: Standard_Integer; i1: Standard_Integer;
                              i1p1: Standard_Integer; i1p2: Standard_Integer;
                              reg1: Standard_Boolean; regn: Standard_Boolean;
                              outl: Standard_Boolean; intl: Standard_Boolean): HLRAlgo_BiPoint {.
    constructor, importcpp: "HLRAlgo_BiPoint(@)", header: "HLRAlgo_BiPoint.hxx".}
proc constructHLRAlgo_BiPoint*(X1: Standard_Real; Y1: Standard_Real;
                              Z1: Standard_Real; X2: Standard_Real;
                              Y2: Standard_Real; Z2: Standard_Real;
                              XT1: Standard_Real; YT1: Standard_Real;
                              ZT1: Standard_Real; XT2: Standard_Real;
                              YT2: Standard_Real; ZT2: Standard_Real;
                              Index: Standard_Integer; i1: Standard_Integer;
                              i1p1: Standard_Integer; i1p2: Standard_Integer;
                              flag: Standard_Integer): HLRAlgo_BiPoint {.
    constructor, importcpp: "HLRAlgo_BiPoint(@)", header: "HLRAlgo_BiPoint.hxx".}
proc constructHLRAlgo_BiPoint*(X1: Standard_Real; Y1: Standard_Real;
                              Z1: Standard_Real; X2: Standard_Real;
                              Y2: Standard_Real; Z2: Standard_Real;
                              XT1: Standard_Real; YT1: Standard_Real;
                              ZT1: Standard_Real; XT2: Standard_Real;
                              YT2: Standard_Real; ZT2: Standard_Real;
                              Index: Standard_Integer; i1: Standard_Integer;
                              i1p1: Standard_Integer; i1p2: Standard_Integer;
                              i2: Standard_Integer; i2p1: Standard_Integer;
                              i2p2: Standard_Integer; reg1: Standard_Boolean;
                              regn: Standard_Boolean; outl: Standard_Boolean;
                              intl: Standard_Boolean): HLRAlgo_BiPoint {.
    constructor, importcpp: "HLRAlgo_BiPoint(@)", header: "HLRAlgo_BiPoint.hxx".}
proc constructHLRAlgo_BiPoint*(X1: Standard_Real; Y1: Standard_Real;
                              Z1: Standard_Real; X2: Standard_Real;
                              Y2: Standard_Real; Z2: Standard_Real;
                              XT1: Standard_Real; YT1: Standard_Real;
                              ZT1: Standard_Real; XT2: Standard_Real;
                              YT2: Standard_Real; ZT2: Standard_Real;
                              Index: Standard_Integer; i1: Standard_Integer;
                              i1p1: Standard_Integer; i1p2: Standard_Integer;
                              i2: Standard_Integer; i2p1: Standard_Integer;
                              i2p2: Standard_Integer; flag: Standard_Integer): HLRAlgo_BiPoint {.
    constructor, importcpp: "HLRAlgo_BiPoint(@)", header: "HLRAlgo_BiPoint.hxx".}
proc Rg1Line*(this: HLRAlgo_BiPoint): Standard_Boolean {.noSideEffect,
    importcpp: "Rg1Line", header: "HLRAlgo_BiPoint.hxx".}
proc Rg1Line*(this: var HLRAlgo_BiPoint; B: Standard_Boolean) {.importcpp: "Rg1Line",
    header: "HLRAlgo_BiPoint.hxx".}
proc RgNLine*(this: HLRAlgo_BiPoint): Standard_Boolean {.noSideEffect,
    importcpp: "RgNLine", header: "HLRAlgo_BiPoint.hxx".}
proc RgNLine*(this: var HLRAlgo_BiPoint; B: Standard_Boolean) {.importcpp: "RgNLine",
    header: "HLRAlgo_BiPoint.hxx".}
proc OutLine*(this: HLRAlgo_BiPoint): Standard_Boolean {.noSideEffect,
    importcpp: "OutLine", header: "HLRAlgo_BiPoint.hxx".}
proc OutLine*(this: var HLRAlgo_BiPoint; B: Standard_Boolean) {.importcpp: "OutLine",
    header: "HLRAlgo_BiPoint.hxx".}
proc IntLine*(this: HLRAlgo_BiPoint): Standard_Boolean {.noSideEffect,
    importcpp: "IntLine", header: "HLRAlgo_BiPoint.hxx".}
proc IntLine*(this: var HLRAlgo_BiPoint; B: Standard_Boolean) {.importcpp: "IntLine",
    header: "HLRAlgo_BiPoint.hxx".}
proc Hidden*(this: HLRAlgo_BiPoint): Standard_Boolean {.noSideEffect,
    importcpp: "Hidden", header: "HLRAlgo_BiPoint.hxx".}
proc Hidden*(this: var HLRAlgo_BiPoint; B: Standard_Boolean) {.importcpp: "Hidden",
    header: "HLRAlgo_BiPoint.hxx".}
proc Indices*(this: var HLRAlgo_BiPoint): var HLRAlgo_BiPointIndicesT {.
    importcpp: "Indices", header: "HLRAlgo_BiPoint.hxx".}
proc Points*(this: var HLRAlgo_BiPoint): var HLRAlgo_BiPointPointsT {.
    importcpp: "Points", header: "HLRAlgo_BiPoint.hxx".}