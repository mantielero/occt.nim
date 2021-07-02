##  Created on: 1995-04-25
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

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Edge"
discard "forward decl of Law_Function"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of gp_XY"
discard "forward decl of ChFiDS_SurfData"
discard "forward decl of ChFiDS_HElSpine"
discard "forward decl of ChFiDS_Spine"
discard "forward decl of BRepAdaptor_HSurface"
discard "forward decl of Adaptor3d_TopolTool"
discard "forward decl of BRepAdaptor_HCurve2d"
discard "forward decl of BRepBlend_Line"
discard "forward decl of ChFiDS_Stripe"
type
  ChFi3dFilBuilder* {.importcpp: "ChFi3d_FilBuilder",
                     header: "ChFi3d_FilBuilder.hxx", bycopy.} = object of ChFi3dBuilder


proc constructChFi3dFilBuilder*(s: TopoDS_Shape;
                               fShape: ChFi3dFilletShape = chFi3dRational;
                               ta: StandardReal = 1.0e-2): ChFi3dFilBuilder {.
    constructor, importcpp: "ChFi3d_FilBuilder(@)", header: "ChFi3d_FilBuilder.hxx".}
proc setFilletShape*(this: var ChFi3dFilBuilder; fShape: ChFi3dFilletShape) {.
    importcpp: "SetFilletShape", header: "ChFi3d_FilBuilder.hxx".}
proc getFilletShape*(this: ChFi3dFilBuilder): ChFi3dFilletShape {.noSideEffect,
    importcpp: "GetFilletShape", header: "ChFi3d_FilBuilder.hxx".}
proc add*(this: var ChFi3dFilBuilder; e: TopoDS_Edge) {.importcpp: "Add",
    header: "ChFi3d_FilBuilder.hxx".}
proc add*(this: var ChFi3dFilBuilder; radius: StandardReal; e: TopoDS_Edge) {.
    importcpp: "Add", header: "ChFi3d_FilBuilder.hxx".}
proc setRadius*(this: var ChFi3dFilBuilder; c: Handle[LawFunction];
               ic: StandardInteger; iinC: StandardInteger) {.importcpp: "SetRadius",
    header: "ChFi3d_FilBuilder.hxx".}
proc isConstant*(this: var ChFi3dFilBuilder; ic: StandardInteger): StandardBoolean {.
    importcpp: "IsConstant", header: "ChFi3d_FilBuilder.hxx".}
proc radius*(this: var ChFi3dFilBuilder; ic: StandardInteger): StandardReal {.
    importcpp: "Radius", header: "ChFi3d_FilBuilder.hxx".}
proc resetContour*(this: var ChFi3dFilBuilder; ic: StandardInteger) {.
    importcpp: "ResetContour", header: "ChFi3d_FilBuilder.hxx".}
proc setRadius*(this: var ChFi3dFilBuilder; radius: StandardReal; ic: StandardInteger;
               e: TopoDS_Edge) {.importcpp: "SetRadius",
                               header: "ChFi3d_FilBuilder.hxx".}
proc unSet*(this: var ChFi3dFilBuilder; ic: StandardInteger; e: TopoDS_Edge) {.
    importcpp: "UnSet", header: "ChFi3d_FilBuilder.hxx".}
proc setRadius*(this: var ChFi3dFilBuilder; radius: StandardReal; ic: StandardInteger;
               v: TopoDS_Vertex) {.importcpp: "SetRadius",
                                 header: "ChFi3d_FilBuilder.hxx".}
proc unSet*(this: var ChFi3dFilBuilder; ic: StandardInteger; v: TopoDS_Vertex) {.
    importcpp: "UnSet", header: "ChFi3d_FilBuilder.hxx".}
proc setRadius*(this: var ChFi3dFilBuilder; uandR: GpXY; ic: StandardInteger;
               iinC: StandardInteger) {.importcpp: "SetRadius",
                                      header: "ChFi3d_FilBuilder.hxx".}
proc isConstant*(this: var ChFi3dFilBuilder; ic: StandardInteger; e: TopoDS_Edge): StandardBoolean {.
    importcpp: "IsConstant", header: "ChFi3d_FilBuilder.hxx".}
proc radius*(this: var ChFi3dFilBuilder; ic: StandardInteger; e: TopoDS_Edge): StandardReal {.
    importcpp: "Radius", header: "ChFi3d_FilBuilder.hxx".}
proc getBounds*(this: var ChFi3dFilBuilder; ic: StandardInteger; e: TopoDS_Edge;
               first: var StandardReal; last: var StandardReal): StandardBoolean {.
    importcpp: "GetBounds", header: "ChFi3d_FilBuilder.hxx".}
proc getLaw*(this: var ChFi3dFilBuilder; ic: StandardInteger; e: TopoDS_Edge): Handle[
    LawFunction] {.importcpp: "GetLaw", header: "ChFi3d_FilBuilder.hxx".}
proc setLaw*(this: var ChFi3dFilBuilder; ic: StandardInteger; e: TopoDS_Edge;
            L: Handle[LawFunction]) {.importcpp: "SetLaw",
                                    header: "ChFi3d_FilBuilder.hxx".}
proc simulate*(this: var ChFi3dFilBuilder; ic: StandardInteger) {.
    importcpp: "Simulate", header: "ChFi3d_FilBuilder.hxx".}
proc nbSurf*(this: ChFi3dFilBuilder; ic: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "NbSurf", header: "ChFi3d_FilBuilder.hxx".}
proc sect*(this: ChFi3dFilBuilder; ic: StandardInteger; `is`: StandardInteger): Handle[
    ChFiDS_SecHArray1] {.noSideEffect, importcpp: "Sect",
                        header: "ChFi3d_FilBuilder.hxx".}

