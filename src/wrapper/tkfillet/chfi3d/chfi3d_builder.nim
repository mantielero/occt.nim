import ../../tkbool/topopebrepbuild/topopebrepbuild_types
import ../tkfillet/chfids/chfids_types
import ../../tkernel/standard/standard_types
import ../../tkg3d/adaptor3d/adaptor3d_types
import chfi3d_types
import ../../tkbrep/toptools/toptools_types
import ../../tkbrep/topods/topods_types
import ../../tkg3d/geom/geom_types
import ../../tkmath/geomabs/geomabs_types



##  Created on: 1993-11-09
##  Created by: Laurent BOURESCHE
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



proc destroyChFi3dBuilder*(this: var ChFi3dBuilder) {.cdecl,
    importcpp: "#.~ChFi3d_Builder()", header: "ChFi3d_Builder.hxx".}
proc setParams*(this: var ChFi3dBuilder; tang: cfloat; tesp: cfloat; t2d: cfloat;
               tApp3d: cfloat; tolApp2d: cfloat; fleche: cfloat) {.cdecl,
    importcpp: "SetParams", header: "ChFi3d_Builder.hxx".}
proc setContinuity*(this: var ChFi3dBuilder; internalContinuity: GeomAbsShape;
                   angularTolerance: cfloat) {.cdecl, importcpp: "SetContinuity",
    header: "ChFi3d_Builder.hxx".}
proc remove*(this: var ChFi3dBuilder; e: TopoDS_Edge) {.cdecl, importcpp: "Remove",
    header: "ChFi3d_Builder.hxx".}
proc contains*(this: ChFi3dBuilder; e: TopoDS_Edge): cint {.noSideEffect, cdecl,
    importcpp: "Contains", header: "ChFi3d_Builder.hxx".}
proc contains*(this: ChFi3dBuilder; e: TopoDS_Edge; indexInSpine: var cint): cint {.
    noSideEffect, cdecl, importcpp: "Contains", header: "ChFi3d_Builder.hxx".}
proc nbElements*(this: ChFi3dBuilder): cint {.noSideEffect, cdecl,
    importcpp: "NbElements", header: "ChFi3d_Builder.hxx".}
proc value*(this: ChFi3dBuilder; i: cint): Handle[ChFiDS_Spine] {.noSideEffect, cdecl,
    importcpp: "Value", header: "ChFi3d_Builder.hxx".}
proc length*(this: ChFi3dBuilder; ic: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Length", header: "ChFi3d_Builder.hxx".}
proc firstVertex*(this: ChFi3dBuilder; ic: cint): TopoDS_Vertex {.noSideEffect, cdecl,
    importcpp: "FirstVertex", header: "ChFi3d_Builder.hxx".}
proc lastVertex*(this: ChFi3dBuilder; ic: cint): TopoDS_Vertex {.noSideEffect, cdecl,
    importcpp: "LastVertex", header: "ChFi3d_Builder.hxx".}
proc abscissa*(this: ChFi3dBuilder; ic: cint; v: TopoDS_Vertex): cfloat {.noSideEffect,
    cdecl, importcpp: "Abscissa", header: "ChFi3d_Builder.hxx".}
proc relativeAbscissa*(this: ChFi3dBuilder; ic: cint; v: TopoDS_Vertex): cfloat {.
    noSideEffect, cdecl, importcpp: "RelativeAbscissa", header: "ChFi3d_Builder.hxx".}
proc closedAndTangent*(this: ChFi3dBuilder; ic: cint): bool {.noSideEffect, cdecl,
    importcpp: "ClosedAndTangent", header: "ChFi3d_Builder.hxx".}
proc closed*(this: ChFi3dBuilder; ic: cint): bool {.noSideEffect, cdecl,
    importcpp: "Closed", header: "ChFi3d_Builder.hxx".}
proc compute*(this: var ChFi3dBuilder) {.cdecl, importcpp: "Compute", header: "ChFi3d_Builder.hxx".}
proc isDone*(this: ChFi3dBuilder): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                      header: "ChFi3d_Builder.hxx".}
proc shape*(this: ChFi3dBuilder): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Shape", header: "ChFi3d_Builder.hxx".}
proc generated*(this: var ChFi3dBuilder; eouV: TopoDS_Shape): TopToolsListOfShape {.
    cdecl, importcpp: "Generated", header: "ChFi3d_Builder.hxx".}
proc nbFaultyContours*(this: ChFi3dBuilder): cint {.noSideEffect, cdecl,
    importcpp: "NbFaultyContours", header: "ChFi3d_Builder.hxx".}
proc faultyContour*(this: ChFi3dBuilder; i: cint): cint {.noSideEffect, cdecl,
    importcpp: "FaultyContour", header: "ChFi3d_Builder.hxx".}
proc nbComputedSurfaces*(this: ChFi3dBuilder; ic: cint): cint {.noSideEffect, cdecl,
    importcpp: "NbComputedSurfaces", header: "ChFi3d_Builder.hxx".}
proc computedSurface*(this: ChFi3dBuilder; ic: cint; `is`: cint): Handle[GeomSurface] {.
    noSideEffect, cdecl, importcpp: "ComputedSurface", header: "ChFi3d_Builder.hxx".}
proc nbFaultyVertices*(this: ChFi3dBuilder): cint {.noSideEffect, cdecl,
    importcpp: "NbFaultyVertices", header: "ChFi3d_Builder.hxx".}
proc faultyVertex*(this: ChFi3dBuilder; iv: cint): TopoDS_Vertex {.noSideEffect, cdecl,
    importcpp: "FaultyVertex", header: "ChFi3d_Builder.hxx".}
proc hasResult*(this: ChFi3dBuilder): bool {.noSideEffect, cdecl,
    importcpp: "HasResult", header: "ChFi3d_Builder.hxx".}
proc badShape*(this: ChFi3dBuilder): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "BadShape", header: "ChFi3d_Builder.hxx".}
proc stripeStatus*(this: ChFi3dBuilder; ic: cint): ChFiDS_ErrorStatus {.noSideEffect,
    cdecl, importcpp: "StripeStatus", header: "ChFi3d_Builder.hxx".}
proc reset*(this: var ChFi3dBuilder) {.cdecl, importcpp: "Reset", header: "ChFi3d_Builder.hxx".}
proc builder*(this: ChFi3dBuilder): Handle[TopOpeBRepBuildHBuilder] {.noSideEffect,
    cdecl, importcpp: "Builder", header: "ChFi3d_Builder.hxx".}
proc splitKPart*(this: var ChFi3dBuilder; data: Handle[ChFiDS_SurfData];
                setData: var ChFiDS_SequenceOfSurfData;
                spine: Handle[ChFiDS_Spine]; iedge: cint;
                s1: Handle[Adaptor3dHSurface]; i1: Handle[Adaptor3dTopolTool];
                s2: Handle[Adaptor3dHSurface]; i2: Handle[Adaptor3dTopolTool];
                intf: var bool; intl: var bool): bool {.cdecl, importcpp: "SplitKPart",
    header: "ChFi3d_Builder.hxx".}
proc performTwoCornerbyInter*(this: var ChFi3dBuilder; index: cint): bool {.cdecl,
    importcpp: "PerformTwoCornerbyInter", header: "ChFi3d_Builder.hxx".}

