import chfi3d_types

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


proc newChFi3dFilBuilder*(s: TopoDS_Shape;
                         fShape: ChFi3dFilletShape = chFi3dRational;
                         ta: cfloat = 1.0e-2): ChFi3dFilBuilder {.cdecl, constructor,
    importcpp: "ChFi3d_FilBuilder(@)", header: "ChFi3d_FilBuilder.hxx".}
proc setFilletShape*(this: var ChFi3dFilBuilder; fShape: ChFi3dFilletShape) {.cdecl,
    importcpp: "SetFilletShape", header: "ChFi3d_FilBuilder.hxx".}
proc getFilletShape*(this: ChFi3dFilBuilder): ChFi3dFilletShape {.noSideEffect,
    cdecl, importcpp: "GetFilletShape", header: "ChFi3d_FilBuilder.hxx".}
proc add*(this: var ChFi3dFilBuilder; e: TopoDS_Edge) {.cdecl, importcpp: "Add",
    header: "ChFi3d_FilBuilder.hxx".}
proc add*(this: var ChFi3dFilBuilder; radius: cfloat; e: TopoDS_Edge) {.cdecl,
    importcpp: "Add", header: "ChFi3d_FilBuilder.hxx".}
proc setRadius*(this: var ChFi3dFilBuilder; c: Handle[LawFunction]; ic: cint; iinC: cint) {.
    cdecl, importcpp: "SetRadius", header: "ChFi3d_FilBuilder.hxx".}
proc isConstant*(this: var ChFi3dFilBuilder; ic: cint): bool {.cdecl,
    importcpp: "IsConstant", header: "ChFi3d_FilBuilder.hxx".}
proc radius*(this: var ChFi3dFilBuilder; ic: cint): cfloat {.cdecl, importcpp: "Radius",
    header: "ChFi3d_FilBuilder.hxx".}
proc resetContour*(this: var ChFi3dFilBuilder; ic: cint) {.cdecl,
    importcpp: "ResetContour", header: "ChFi3d_FilBuilder.hxx".}
proc setRadius*(this: var ChFi3dFilBuilder; radius: cfloat; ic: cint; e: TopoDS_Edge) {.
    cdecl, importcpp: "SetRadius", header: "ChFi3d_FilBuilder.hxx".}
proc unSet*(this: var ChFi3dFilBuilder; ic: cint; e: TopoDS_Edge) {.cdecl,
    importcpp: "UnSet", header: "ChFi3d_FilBuilder.hxx".}
proc setRadius*(this: var ChFi3dFilBuilder; radius: cfloat; ic: cint; v: TopoDS_Vertex) {.
    cdecl, importcpp: "SetRadius", header: "ChFi3d_FilBuilder.hxx".}
proc unSet*(this: var ChFi3dFilBuilder; ic: cint; v: TopoDS_Vertex) {.cdecl,
    importcpp: "UnSet", header: "ChFi3d_FilBuilder.hxx".}
proc setRadius*(this: var ChFi3dFilBuilder; uandR: XyObj; ic: cint; iinC: cint) {.cdecl,
    importcpp: "SetRadius", header: "ChFi3d_FilBuilder.hxx".}
proc isConstant*(this: var ChFi3dFilBuilder; ic: cint; e: TopoDS_Edge): bool {.cdecl,
    importcpp: "IsConstant", header: "ChFi3d_FilBuilder.hxx".}
proc radius*(this: var ChFi3dFilBuilder; ic: cint; e: TopoDS_Edge): cfloat {.cdecl,
    importcpp: "Radius", header: "ChFi3d_FilBuilder.hxx".}
proc getBounds*(this: var ChFi3dFilBuilder; ic: cint; e: TopoDS_Edge; first: var cfloat;
               last: var cfloat): bool {.cdecl, importcpp: "GetBounds",
                                     header: "ChFi3d_FilBuilder.hxx".}
proc getLaw*(this: var ChFi3dFilBuilder; ic: cint; e: TopoDS_Edge): Handle[LawFunction] {.
    cdecl, importcpp: "GetLaw", header: "ChFi3d_FilBuilder.hxx".}
proc setLaw*(this: var ChFi3dFilBuilder; ic: cint; e: TopoDS_Edge;
            L: Handle[LawFunction]) {.cdecl, importcpp: "SetLaw", header: "ChFi3d_FilBuilder.hxx".}
proc simulate*(this: var ChFi3dFilBuilder; ic: cint) {.cdecl, importcpp: "Simulate",
    header: "ChFi3d_FilBuilder.hxx".}
proc nbSurf*(this: ChFi3dFilBuilder; ic: cint): cint {.noSideEffect, cdecl,
    importcpp: "NbSurf", header: "ChFi3d_FilBuilder.hxx".}
proc sect*(this: ChFi3dFilBuilder; ic: cint; `is`: cint): Handle[ChFiDS_SecHArray1] {.
    noSideEffect, cdecl, importcpp: "Sect", header: "ChFi3d_FilBuilder.hxx".}
