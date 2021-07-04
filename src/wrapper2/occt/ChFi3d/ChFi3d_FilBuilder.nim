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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../BlendFunc/BlendFunc_SectionShape,
  ChFi3d_Builder, ChFi3d_FilletShape, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../ChFiDS/ChFiDS_SecHArray1, ../math/math_Vector, ../TopAbs/TopAbs_Orientation,
  ../TopAbs/TopAbs_State, ../ChFiDS/ChFiDS_SequenceOfSurfData,
  ../ChFiDS/ChFiDS_ListOfStripe

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
  ChFi3d_FilBuilder* {.importcpp: "ChFi3d_FilBuilder",
                      header: "ChFi3d_FilBuilder.hxx", bycopy.} = object of ChFi3d_Builder


proc constructChFi3d_FilBuilder*(S: TopoDS_Shape;
                                FShape: ChFi3d_FilletShape = ChFi3d_Rational;
                                Ta: Standard_Real = 1.0e-2): ChFi3d_FilBuilder {.
    constructor, importcpp: "ChFi3d_FilBuilder(@)", header: "ChFi3d_FilBuilder.hxx".}
proc SetFilletShape*(this: var ChFi3d_FilBuilder; FShape: ChFi3d_FilletShape) {.
    importcpp: "SetFilletShape", header: "ChFi3d_FilBuilder.hxx".}
proc GetFilletShape*(this: ChFi3d_FilBuilder): ChFi3d_FilletShape {.noSideEffect,
    importcpp: "GetFilletShape", header: "ChFi3d_FilBuilder.hxx".}
proc Add*(this: var ChFi3d_FilBuilder; E: TopoDS_Edge) {.importcpp: "Add",
    header: "ChFi3d_FilBuilder.hxx".}
proc Add*(this: var ChFi3d_FilBuilder; Radius: Standard_Real; E: TopoDS_Edge) {.
    importcpp: "Add", header: "ChFi3d_FilBuilder.hxx".}
proc SetRadius*(this: var ChFi3d_FilBuilder; C: handle[Law_Function];
               IC: Standard_Integer; IinC: Standard_Integer) {.
    importcpp: "SetRadius", header: "ChFi3d_FilBuilder.hxx".}
proc IsConstant*(this: var ChFi3d_FilBuilder; IC: Standard_Integer): Standard_Boolean {.
    importcpp: "IsConstant", header: "ChFi3d_FilBuilder.hxx".}
proc Radius*(this: var ChFi3d_FilBuilder; IC: Standard_Integer): Standard_Real {.
    importcpp: "Radius", header: "ChFi3d_FilBuilder.hxx".}
proc ResetContour*(this: var ChFi3d_FilBuilder; IC: Standard_Integer) {.
    importcpp: "ResetContour", header: "ChFi3d_FilBuilder.hxx".}
proc SetRadius*(this: var ChFi3d_FilBuilder; Radius: Standard_Real;
               IC: Standard_Integer; E: TopoDS_Edge) {.importcpp: "SetRadius",
    header: "ChFi3d_FilBuilder.hxx".}
proc UnSet*(this: var ChFi3d_FilBuilder; IC: Standard_Integer; E: TopoDS_Edge) {.
    importcpp: "UnSet", header: "ChFi3d_FilBuilder.hxx".}
proc SetRadius*(this: var ChFi3d_FilBuilder; Radius: Standard_Real;
               IC: Standard_Integer; V: TopoDS_Vertex) {.importcpp: "SetRadius",
    header: "ChFi3d_FilBuilder.hxx".}
proc UnSet*(this: var ChFi3d_FilBuilder; IC: Standard_Integer; V: TopoDS_Vertex) {.
    importcpp: "UnSet", header: "ChFi3d_FilBuilder.hxx".}
proc SetRadius*(this: var ChFi3d_FilBuilder; UandR: gp_XY; IC: Standard_Integer;
               IinC: Standard_Integer) {.importcpp: "SetRadius",
                                       header: "ChFi3d_FilBuilder.hxx".}
proc IsConstant*(this: var ChFi3d_FilBuilder; IC: Standard_Integer; E: TopoDS_Edge): Standard_Boolean {.
    importcpp: "IsConstant", header: "ChFi3d_FilBuilder.hxx".}
proc Radius*(this: var ChFi3d_FilBuilder; IC: Standard_Integer; E: TopoDS_Edge): Standard_Real {.
    importcpp: "Radius", header: "ChFi3d_FilBuilder.hxx".}
proc GetBounds*(this: var ChFi3d_FilBuilder; IC: Standard_Integer; E: TopoDS_Edge;
               First: var Standard_Real; Last: var Standard_Real): Standard_Boolean {.
    importcpp: "GetBounds", header: "ChFi3d_FilBuilder.hxx".}
proc GetLaw*(this: var ChFi3d_FilBuilder; IC: Standard_Integer; E: TopoDS_Edge): handle[
    Law_Function] {.importcpp: "GetLaw", header: "ChFi3d_FilBuilder.hxx".}
proc SetLaw*(this: var ChFi3d_FilBuilder; IC: Standard_Integer; E: TopoDS_Edge;
            L: handle[Law_Function]) {.importcpp: "SetLaw",
                                     header: "ChFi3d_FilBuilder.hxx".}
proc Simulate*(this: var ChFi3d_FilBuilder; IC: Standard_Integer) {.
    importcpp: "Simulate", header: "ChFi3d_FilBuilder.hxx".}
proc NbSurf*(this: ChFi3d_FilBuilder; IC: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NbSurf", header: "ChFi3d_FilBuilder.hxx".}
proc Sect*(this: ChFi3d_FilBuilder; IC: Standard_Integer; IS: Standard_Integer): handle[
    ChFiDS_SecHArray1] {.noSideEffect, importcpp: "Sect",
                        header: "ChFi3d_FilBuilder.hxx".}