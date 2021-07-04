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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ChFi3d_Builder, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../ChFiDS/ChFiDS_ChamfMethod, ../ChFiDS/ChFiDS_ChamfMode,
  ../ChFiDS/ChFiDS_SecHArray1, ../math/math_Vector, ../TopAbs/TopAbs_Orientation,
  ../TopAbs/TopAbs_State, ../ChFiDS/ChFiDS_SequenceOfSurfData,
  ../ChFiDS/ChFiDS_ListOfStripe

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
  ChFi3d_ChBuilder* {.importcpp: "ChFi3d_ChBuilder",
                     header: "ChFi3d_ChBuilder.hxx", bycopy.} = object of ChFi3d_Builder ##
                                                                                  ## !
                                                                                  ## initializes
                                                                                  ## the
                                                                                  ## Builder
                                                                                  ## with
                                                                                  ## the
                                                                                  ## Shape
                                                                                  ## <S>
                                                                                  ## for
                                                                                  ## the
                                                                                  ##
                                                                                  ## !
                                                                                  ## computation
                                                                                  ## of
                                                                                  ## chamfers


proc constructChFi3d_ChBuilder*(S: TopoDS_Shape; Ta: Standard_Real = 1.0e-2): ChFi3d_ChBuilder {.
    constructor, importcpp: "ChFi3d_ChBuilder(@)", header: "ChFi3d_ChBuilder.hxx".}
proc Add*(this: var ChFi3d_ChBuilder; E: TopoDS_Edge) {.importcpp: "Add",
    header: "ChFi3d_ChBuilder.hxx".}
proc Add*(this: var ChFi3d_ChBuilder; Dis: Standard_Real; E: TopoDS_Edge) {.
    importcpp: "Add", header: "ChFi3d_ChBuilder.hxx".}
proc SetDist*(this: var ChFi3d_ChBuilder; Dis: Standard_Real; IC: Standard_Integer;
             F: TopoDS_Face) {.importcpp: "SetDist", header: "ChFi3d_ChBuilder.hxx".}
proc GetDist*(this: ChFi3d_ChBuilder; IC: Standard_Integer; Dis: var Standard_Real) {.
    noSideEffect, importcpp: "GetDist", header: "ChFi3d_ChBuilder.hxx".}
proc Add*(this: var ChFi3d_ChBuilder; Dis1: Standard_Real; Dis2: Standard_Real;
         E: TopoDS_Edge; F: TopoDS_Face) {.importcpp: "Add",
                                       header: "ChFi3d_ChBuilder.hxx".}
proc SetDists*(this: var ChFi3d_ChBuilder; Dis1: Standard_Real; Dis2: Standard_Real;
              IC: Standard_Integer; F: TopoDS_Face) {.importcpp: "SetDists",
    header: "ChFi3d_ChBuilder.hxx".}
proc Dists*(this: ChFi3d_ChBuilder; IC: Standard_Integer; Dis1: var Standard_Real;
           Dis2: var Standard_Real) {.noSideEffect, importcpp: "Dists",
                                   header: "ChFi3d_ChBuilder.hxx".}
proc AddDA*(this: var ChFi3d_ChBuilder; Dis: Standard_Real; Angle: Standard_Real;
           E: TopoDS_Edge; F: TopoDS_Face) {.importcpp: "AddDA",
    header: "ChFi3d_ChBuilder.hxx".}
proc SetDistAngle*(this: var ChFi3d_ChBuilder; Dis: Standard_Real;
                  Angle: Standard_Real; IC: Standard_Integer; F: TopoDS_Face) {.
    importcpp: "SetDistAngle", header: "ChFi3d_ChBuilder.hxx".}
proc GetDistAngle*(this: ChFi3d_ChBuilder; IC: Standard_Integer;
                  Dis: var Standard_Real; Angle: var Standard_Real) {.noSideEffect,
    importcpp: "GetDistAngle", header: "ChFi3d_ChBuilder.hxx".}
proc SetMode*(this: var ChFi3d_ChBuilder; theMode: ChFiDS_ChamfMode) {.
    importcpp: "SetMode", header: "ChFi3d_ChBuilder.hxx".}
proc IsChamfer*(this: ChFi3d_ChBuilder; IC: Standard_Integer): ChFiDS_ChamfMethod {.
    noSideEffect, importcpp: "IsChamfer", header: "ChFi3d_ChBuilder.hxx".}
proc Mode*(this: ChFi3d_ChBuilder): ChFiDS_ChamfMode {.noSideEffect,
    importcpp: "Mode", header: "ChFi3d_ChBuilder.hxx".}
proc ResetContour*(this: var ChFi3d_ChBuilder; IC: Standard_Integer) {.
    importcpp: "ResetContour", header: "ChFi3d_ChBuilder.hxx".}
proc Simulate*(this: var ChFi3d_ChBuilder; IC: Standard_Integer) {.
    importcpp: "Simulate", header: "ChFi3d_ChBuilder.hxx".}
proc NbSurf*(this: ChFi3d_ChBuilder; IC: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NbSurf", header: "ChFi3d_ChBuilder.hxx".}
proc Sect*(this: ChFi3d_ChBuilder; IC: Standard_Integer; IS: Standard_Integer): handle[
    ChFiDS_SecHArray1] {.noSideEffect, importcpp: "Sect",
                        header: "ChFi3d_ChBuilder.hxx".}
proc SimulSurf*(this: var ChFi3d_ChBuilder; Data: var handle[ChFiDS_SurfData];
               Guide: handle[ChFiDS_HElSpine]; Spine: handle[ChFiDS_Spine];
               Choix: Standard_Integer; S1: handle[BRepAdaptor_HSurface];
               I1: handle[Adaptor3d_TopolTool]; PC1: handle[BRepAdaptor_HCurve2d];
               Sref1: handle[BRepAdaptor_HSurface];
               PCref1: handle[BRepAdaptor_HCurve2d];
               Decroch1: var Standard_Boolean; S2: handle[BRepAdaptor_HSurface];
               I2: handle[Adaptor3d_TopolTool]; Or2: TopAbs_Orientation;
               Fleche: Standard_Real; TolGuide: Standard_Real;
               First: var Standard_Real; Last: var Standard_Real;
               Inside: Standard_Boolean; Appro: Standard_Boolean;
               Forward: Standard_Boolean; RecP: Standard_Boolean;
               RecS: Standard_Boolean; RecRst: Standard_Boolean; Soldep: math_Vector) {.
    importcpp: "SimulSurf", header: "ChFi3d_ChBuilder.hxx".}
proc SimulSurf*(this: var ChFi3d_ChBuilder; Data: var handle[ChFiDS_SurfData];
               Guide: handle[ChFiDS_HElSpine]; Spine: handle[ChFiDS_Spine];
               Choix: Standard_Integer; S1: handle[BRepAdaptor_HSurface];
               I1: handle[Adaptor3d_TopolTool]; Or1: TopAbs_Orientation;
               S2: handle[BRepAdaptor_HSurface]; I2: handle[Adaptor3d_TopolTool];
               PC2: handle[BRepAdaptor_HCurve2d];
               Sref2: handle[BRepAdaptor_HSurface];
               PCref2: handle[BRepAdaptor_HCurve2d];
               Decroch2: var Standard_Boolean; Fleche: Standard_Real;
               TolGuide: Standard_Real; First: var Standard_Real;
               Last: var Standard_Real; Inside: Standard_Boolean;
               Appro: Standard_Boolean; Forward: Standard_Boolean;
               RecP: Standard_Boolean; RecS: Standard_Boolean;
               RecRst: Standard_Boolean; Soldep: math_Vector) {.
    importcpp: "SimulSurf", header: "ChFi3d_ChBuilder.hxx".}
proc SimulSurf*(this: var ChFi3d_ChBuilder; Data: var handle[ChFiDS_SurfData];
               Guide: handle[ChFiDS_HElSpine]; Spine: handle[ChFiDS_Spine];
               Choix: Standard_Integer; S1: handle[BRepAdaptor_HSurface];
               I1: handle[Adaptor3d_TopolTool]; PC1: handle[BRepAdaptor_HCurve2d];
               Sref1: handle[BRepAdaptor_HSurface];
               PCref1: handle[BRepAdaptor_HCurve2d];
               Decroch1: var Standard_Boolean; Or1: TopAbs_Orientation;
               S2: handle[BRepAdaptor_HSurface]; I2: handle[Adaptor3d_TopolTool];
               PC2: handle[BRepAdaptor_HCurve2d];
               Sref2: handle[BRepAdaptor_HSurface];
               PCref2: handle[BRepAdaptor_HCurve2d];
               Decroch2: var Standard_Boolean; Or2: TopAbs_Orientation;
               Fleche: Standard_Real; TolGuide: Standard_Real;
               First: var Standard_Real; Last: var Standard_Real;
               Inside: Standard_Boolean; Appro: Standard_Boolean;
               Forward: Standard_Boolean; RecP1: Standard_Boolean;
               RecRst1: Standard_Boolean; RecP2: Standard_Boolean;
               RecRst2: Standard_Boolean; Soldep: math_Vector) {.
    importcpp: "SimulSurf", header: "ChFi3d_ChBuilder.hxx".}
proc PerformSurf*(this: var ChFi3d_ChBuilder; Data: var ChFiDS_SequenceOfSurfData;
                 Guide: handle[ChFiDS_HElSpine]; Spine: handle[ChFiDS_Spine];
                 Choix: Standard_Integer; S1: handle[BRepAdaptor_HSurface];
                 I1: handle[Adaptor3d_TopolTool];
                 S2: handle[BRepAdaptor_HSurface];
                 I2: handle[Adaptor3d_TopolTool]; MaxStep: Standard_Real;
                 Fleche: Standard_Real; TolGuide: Standard_Real;
                 First: var Standard_Real; Last: var Standard_Real;
                 Inside: Standard_Boolean; Appro: Standard_Boolean;
                 Forward: Standard_Boolean; RecOnS1: Standard_Boolean;
                 RecOnS2: Standard_Boolean; Soldep: math_Vector;
                 Intf: var Standard_Integer; Intl: var Standard_Integer): Standard_Boolean {.
    importcpp: "PerformSurf", header: "ChFi3d_ChBuilder.hxx".}
proc PerformSurf*(this: var ChFi3d_ChBuilder; Data: var ChFiDS_SequenceOfSurfData;
                 Guide: handle[ChFiDS_HElSpine]; Spine: handle[ChFiDS_Spine];
                 Choix: Standard_Integer; S1: handle[BRepAdaptor_HSurface];
                 I1: handle[Adaptor3d_TopolTool];
                 PC1: handle[BRepAdaptor_HCurve2d];
                 Sref1: handle[BRepAdaptor_HSurface];
                 PCref1: handle[BRepAdaptor_HCurve2d];
                 Decroch1: var Standard_Boolean; S2: handle[BRepAdaptor_HSurface];
                 I2: handle[Adaptor3d_TopolTool]; Or2: TopAbs_Orientation;
                 MaxStep: Standard_Real; Fleche: Standard_Real;
                 TolGuide: Standard_Real; First: var Standard_Real;
                 Last: var Standard_Real; Inside: Standard_Boolean;
                 Appro: Standard_Boolean; Forward: Standard_Boolean;
                 RecP: Standard_Boolean; RecS: Standard_Boolean;
                 RecRst: Standard_Boolean; Soldep: math_Vector) {.
    importcpp: "PerformSurf", header: "ChFi3d_ChBuilder.hxx".}
proc PerformSurf*(this: var ChFi3d_ChBuilder; Data: var ChFiDS_SequenceOfSurfData;
                 Guide: handle[ChFiDS_HElSpine]; Spine: handle[ChFiDS_Spine];
                 Choix: Standard_Integer; S1: handle[BRepAdaptor_HSurface];
                 I1: handle[Adaptor3d_TopolTool]; Or1: TopAbs_Orientation;
                 S2: handle[BRepAdaptor_HSurface];
                 I2: handle[Adaptor3d_TopolTool];
                 PC2: handle[BRepAdaptor_HCurve2d];
                 Sref2: handle[BRepAdaptor_HSurface];
                 PCref2: handle[BRepAdaptor_HCurve2d];
                 Decroch2: var Standard_Boolean; MaxStep: Standard_Real;
                 Fleche: Standard_Real; TolGuide: Standard_Real;
                 First: var Standard_Real; Last: var Standard_Real;
                 Inside: Standard_Boolean; Appro: Standard_Boolean;
                 Forward: Standard_Boolean; RecP: Standard_Boolean;
                 RecS: Standard_Boolean; RecRst: Standard_Boolean;
                 Soldep: math_Vector) {.importcpp: "PerformSurf",
                                      header: "ChFi3d_ChBuilder.hxx".}
proc PerformSurf*(this: var ChFi3d_ChBuilder; Data: var ChFiDS_SequenceOfSurfData;
                 Guide: handle[ChFiDS_HElSpine]; Spine: handle[ChFiDS_Spine];
                 Choix: Standard_Integer; S1: handle[BRepAdaptor_HSurface];
                 I1: handle[Adaptor3d_TopolTool];
                 PC1: handle[BRepAdaptor_HCurve2d];
                 Sref1: handle[BRepAdaptor_HSurface];
                 PCref1: handle[BRepAdaptor_HCurve2d];
                 Decroch1: var Standard_Boolean; Or1: TopAbs_Orientation;
                 S2: handle[BRepAdaptor_HSurface];
                 I2: handle[Adaptor3d_TopolTool];
                 PC2: handle[BRepAdaptor_HCurve2d];
                 Sref2: handle[BRepAdaptor_HSurface];
                 PCref2: handle[BRepAdaptor_HCurve2d];
                 Decroch2: var Standard_Boolean; Or2: TopAbs_Orientation;
                 MaxStep: Standard_Real; Fleche: Standard_Real;
                 TolGuide: Standard_Real; First: var Standard_Real;
                 Last: var Standard_Real; Inside: Standard_Boolean;
                 Appro: Standard_Boolean; Forward: Standard_Boolean;
                 RecP1: Standard_Boolean; RecRst1: Standard_Boolean;
                 RecP2: Standard_Boolean; RecRst2: Standard_Boolean;
                 Soldep: math_Vector) {.importcpp: "PerformSurf",
                                      header: "ChFi3d_ChBuilder.hxx".}