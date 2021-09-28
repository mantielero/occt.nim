##  Created on: 1995-04-26
##  Created by: Modelistation
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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_DomainError"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
discard "forward decl of ChFiDS_SurfData"
discard "forward decl of ChFiDS_HElSpine"
discard "forward decl of ChFiDS_Spine"
discard "forward decl of BRepAdaptor_HSurface"
discard "forward decl of Adaptor3d_TopolTool"
discard "forward decl of BRepAdaptor_HCurve2d"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of ChFiDS_Stripe"
type
  ChFi3dChBuilder* {.importcpp: "ChFi3d_ChBuilder", header: "ChFi3d_ChBuilder.hxx",
                    bycopy.} = object of ChFi3dBuilder ## ! initializes the Builder with the Shape <S> for the
                                                  ## ! computation of chamfers


proc constructChFi3dChBuilder*(s: TopoDS_Shape; ta: cfloat = 1.0e-2): ChFi3dChBuilder {.
    constructor, importcpp: "ChFi3d_ChBuilder(@)", header: "ChFi3d_ChBuilder.hxx".}
proc add*(this: var ChFi3dChBuilder; e: TopoDS_Edge) {.importcpp: "Add",
    header: "ChFi3d_ChBuilder.hxx".}
proc add*(this: var ChFi3dChBuilder; dis: cfloat; e: TopoDS_Edge) {.importcpp: "Add",
    header: "ChFi3d_ChBuilder.hxx".}
proc setDist*(this: var ChFi3dChBuilder; dis: cfloat; ic: cint; f: TopoDS_Face) {.
    importcpp: "SetDist", header: "ChFi3d_ChBuilder.hxx".}
proc getDist*(this: ChFi3dChBuilder; ic: cint; dis: var cfloat) {.noSideEffect,
    importcpp: "GetDist", header: "ChFi3d_ChBuilder.hxx".}
proc add*(this: var ChFi3dChBuilder; dis1: cfloat; dis2: cfloat; e: TopoDS_Edge;
         f: TopoDS_Face) {.importcpp: "Add", header: "ChFi3d_ChBuilder.hxx".}
proc setDists*(this: var ChFi3dChBuilder; dis1: cfloat; dis2: cfloat; ic: cint;
              f: TopoDS_Face) {.importcpp: "SetDists",
                              header: "ChFi3d_ChBuilder.hxx".}
proc dists*(this: ChFi3dChBuilder; ic: cint; dis1: var cfloat; dis2: var cfloat) {.
    noSideEffect, importcpp: "Dists", header: "ChFi3d_ChBuilder.hxx".}
proc addDA*(this: var ChFi3dChBuilder; dis: cfloat; angle: cfloat; e: TopoDS_Edge;
           f: TopoDS_Face) {.importcpp: "AddDA", header: "ChFi3d_ChBuilder.hxx".}
proc setDistAngle*(this: var ChFi3dChBuilder; dis: cfloat; angle: cfloat; ic: cint;
                  f: TopoDS_Face) {.importcpp: "SetDistAngle",
                                  header: "ChFi3d_ChBuilder.hxx".}
proc getDistAngle*(this: ChFi3dChBuilder; ic: cint; dis: var cfloat; angle: var cfloat) {.
    noSideEffect, importcpp: "GetDistAngle", header: "ChFi3d_ChBuilder.hxx".}
proc setMode*(this: var ChFi3dChBuilder; theMode: ChFiDS_ChamfMode) {.
    importcpp: "SetMode", header: "ChFi3d_ChBuilder.hxx".}
proc isChamfer*(this: ChFi3dChBuilder; ic: cint): ChFiDS_ChamfMethod {.noSideEffect,
    importcpp: "IsChamfer", header: "ChFi3d_ChBuilder.hxx".}
proc mode*(this: ChFi3dChBuilder): ChFiDS_ChamfMode {.noSideEffect,
    importcpp: "Mode", header: "ChFi3d_ChBuilder.hxx".}
proc resetContour*(this: var ChFi3dChBuilder; ic: cint) {.importcpp: "ResetContour",
    header: "ChFi3d_ChBuilder.hxx".}
proc simulate*(this: var ChFi3dChBuilder; ic: cint) {.importcpp: "Simulate",
    header: "ChFi3d_ChBuilder.hxx".}
proc nbSurf*(this: ChFi3dChBuilder; ic: cint): cint {.noSideEffect,
    importcpp: "NbSurf", header: "ChFi3d_ChBuilder.hxx".}
proc sect*(this: ChFi3dChBuilder; ic: cint; `is`: cint): Handle[ChFiDS_SecHArray1] {.
    noSideEffect, importcpp: "Sect", header: "ChFi3d_ChBuilder.hxx".}
proc simulSurf*(this: var ChFi3dChBuilder; data: var Handle[ChFiDS_SurfData];
               guide: Handle[ChFiDS_HElSpine]; spine: Handle[ChFiDS_Spine];
               choix: cint; s1: Handle[BRepAdaptorHSurface];
               i1: Handle[Adaptor3dTopolTool]; pc1: Handle[BRepAdaptorHCurve2d];
               sref1: Handle[BRepAdaptorHSurface];
               pCref1: Handle[BRepAdaptorHCurve2d]; decroch1: var bool;
               s2: Handle[BRepAdaptorHSurface]; i2: Handle[Adaptor3dTopolTool];
               or2: TopAbsOrientation; fleche: cfloat; tolGuide: cfloat;
               first: var cfloat; last: var cfloat; inside: bool; appro: bool;
               forward: bool; recP: bool; recS: bool; recRst: bool; soldep: MathVector) {.
    importcpp: "SimulSurf", header: "ChFi3d_ChBuilder.hxx".}
proc simulSurf*(this: var ChFi3dChBuilder; data: var Handle[ChFiDS_SurfData];
               guide: Handle[ChFiDS_HElSpine]; spine: Handle[ChFiDS_Spine];
               choix: cint; s1: Handle[BRepAdaptorHSurface];
               i1: Handle[Adaptor3dTopolTool]; or1: TopAbsOrientation;
               s2: Handle[BRepAdaptorHSurface]; i2: Handle[Adaptor3dTopolTool];
               pc2: Handle[BRepAdaptorHCurve2d];
               sref2: Handle[BRepAdaptorHSurface];
               pCref2: Handle[BRepAdaptorHCurve2d]; decroch2: var bool;
               fleche: cfloat; tolGuide: cfloat; first: var cfloat; last: var cfloat;
               inside: bool; appro: bool; forward: bool; recP: bool; recS: bool;
               recRst: bool; soldep: MathVector) {.importcpp: "SimulSurf",
    header: "ChFi3d_ChBuilder.hxx".}
proc simulSurf*(this: var ChFi3dChBuilder; data: var Handle[ChFiDS_SurfData];
               guide: Handle[ChFiDS_HElSpine]; spine: Handle[ChFiDS_Spine];
               choix: cint; s1: Handle[BRepAdaptorHSurface];
               i1: Handle[Adaptor3dTopolTool]; pc1: Handle[BRepAdaptorHCurve2d];
               sref1: Handle[BRepAdaptorHSurface];
               pCref1: Handle[BRepAdaptorHCurve2d]; decroch1: var bool;
               or1: TopAbsOrientation; s2: Handle[BRepAdaptorHSurface];
               i2: Handle[Adaptor3dTopolTool]; pc2: Handle[BRepAdaptorHCurve2d];
               sref2: Handle[BRepAdaptorHSurface];
               pCref2: Handle[BRepAdaptorHCurve2d]; decroch2: var bool;
               or2: TopAbsOrientation; fleche: cfloat; tolGuide: cfloat;
               first: var cfloat; last: var cfloat; inside: bool; appro: bool;
               forward: bool; recP1: bool; recRst1: bool; recP2: bool; recRst2: bool;
               soldep: MathVector) {.importcpp: "SimulSurf",
                                   header: "ChFi3d_ChBuilder.hxx".}
proc performSurf*(this: var ChFi3dChBuilder; data: var ChFiDS_SequenceOfSurfData;
                 guide: Handle[ChFiDS_HElSpine]; spine: Handle[ChFiDS_Spine];
                 choix: cint; s1: Handle[BRepAdaptorHSurface];
                 i1: Handle[Adaptor3dTopolTool]; s2: Handle[BRepAdaptorHSurface];
                 i2: Handle[Adaptor3dTopolTool]; maxStep: cfloat; fleche: cfloat;
                 tolGuide: cfloat; first: var cfloat; last: var cfloat; inside: bool;
                 appro: bool; forward: bool; recOnS1: bool; recOnS2: bool;
                 soldep: MathVector; intf: var cint; intl: var cint): bool {.
    importcpp: "PerformSurf", header: "ChFi3d_ChBuilder.hxx".}
proc performSurf*(this: var ChFi3dChBuilder; data: var ChFiDS_SequenceOfSurfData;
                 guide: Handle[ChFiDS_HElSpine]; spine: Handle[ChFiDS_Spine];
                 choix: cint; s1: Handle[BRepAdaptorHSurface];
                 i1: Handle[Adaptor3dTopolTool]; pc1: Handle[BRepAdaptorHCurve2d];
                 sref1: Handle[BRepAdaptorHSurface];
                 pCref1: Handle[BRepAdaptorHCurve2d]; decroch1: var bool;
                 s2: Handle[BRepAdaptorHSurface]; i2: Handle[Adaptor3dTopolTool];
                 or2: TopAbsOrientation; maxStep: cfloat; fleche: cfloat;
                 tolGuide: cfloat; first: var cfloat; last: var cfloat; inside: bool;
                 appro: bool; forward: bool; recP: bool; recS: bool; recRst: bool;
                 soldep: MathVector) {.importcpp: "PerformSurf",
                                     header: "ChFi3d_ChBuilder.hxx".}
proc performSurf*(this: var ChFi3dChBuilder; data: var ChFiDS_SequenceOfSurfData;
                 guide: Handle[ChFiDS_HElSpine]; spine: Handle[ChFiDS_Spine];
                 choix: cint; s1: Handle[BRepAdaptorHSurface];
                 i1: Handle[Adaptor3dTopolTool]; or1: TopAbsOrientation;
                 s2: Handle[BRepAdaptorHSurface]; i2: Handle[Adaptor3dTopolTool];
                 pc2: Handle[BRepAdaptorHCurve2d];
                 sref2: Handle[BRepAdaptorHSurface];
                 pCref2: Handle[BRepAdaptorHCurve2d]; decroch2: var bool;
                 maxStep: cfloat; fleche: cfloat; tolGuide: cfloat; first: var cfloat;
                 last: var cfloat; inside: bool; appro: bool; forward: bool; recP: bool;
                 recS: bool; recRst: bool; soldep: MathVector) {.
    importcpp: "PerformSurf", header: "ChFi3d_ChBuilder.hxx".}
proc performSurf*(this: var ChFi3dChBuilder; data: var ChFiDS_SequenceOfSurfData;
                 guide: Handle[ChFiDS_HElSpine]; spine: Handle[ChFiDS_Spine];
                 choix: cint; s1: Handle[BRepAdaptorHSurface];
                 i1: Handle[Adaptor3dTopolTool]; pc1: Handle[BRepAdaptorHCurve2d];
                 sref1: Handle[BRepAdaptorHSurface];
                 pCref1: Handle[BRepAdaptorHCurve2d]; decroch1: var bool;
                 or1: TopAbsOrientation; s2: Handle[BRepAdaptorHSurface];
                 i2: Handle[Adaptor3dTopolTool]; pc2: Handle[BRepAdaptorHCurve2d];
                 sref2: Handle[BRepAdaptorHSurface];
                 pCref2: Handle[BRepAdaptorHCurve2d]; decroch2: var bool;
                 or2: TopAbsOrientation; maxStep: cfloat; fleche: cfloat;
                 tolGuide: cfloat; first: var cfloat; last: var cfloat; inside: bool;
                 appro: bool; forward: bool; recP1: bool; recRst1: bool; recP2: bool;
                 recRst2: bool; soldep: MathVector) {.importcpp: "PerformSurf",
    header: "ChFi3d_ChBuilder.hxx".}

























