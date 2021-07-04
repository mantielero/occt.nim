##  Created on: 2000-06-07
##  Created by: Galina KULIKOVA
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../TopoDS/TopoDS_Edge, ../TopoDS/TopoDS_Face, ShapeUpgrade_Tool,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real,
  ../ShapeExtend/ShapeExtend_Status

discard "forward decl of ShapeUpgrade_SplitCurve3d"
discard "forward decl of ShapeUpgrade_SplitCurve2d"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
when defined(Status):
  discard
discard "forward decl of ShapeUpgrade_FixSmallCurves"
discard "forward decl of ShapeUpgrade_FixSmallCurves"
type
  Handle_ShapeUpgrade_FixSmallCurves* = handle[ShapeUpgrade_FixSmallCurves]
  ShapeUpgrade_FixSmallCurves* {.importcpp: "ShapeUpgrade_FixSmallCurves",
                                header: "ShapeUpgrade_FixSmallCurves.hxx", bycopy.} = object of ShapeUpgrade_Tool


proc constructShapeUpgrade_FixSmallCurves*(): ShapeUpgrade_FixSmallCurves {.
    constructor, importcpp: "ShapeUpgrade_FixSmallCurves(@)",
    header: "ShapeUpgrade_FixSmallCurves.hxx".}
proc Init*(this: var ShapeUpgrade_FixSmallCurves; theEdge: TopoDS_Edge;
          theFace: TopoDS_Face) {.importcpp: "Init",
                                header: "ShapeUpgrade_FixSmallCurves.hxx".}
proc Approx*(this: var ShapeUpgrade_FixSmallCurves; Curve3d: var handle[Geom_Curve];
            Curve2d: var handle[Geom2d_Curve]; Curve2dR: var handle[Geom2d_Curve];
            First: var Standard_Real; Last: var Standard_Real): Standard_Boolean {.
    importcpp: "Approx", header: "ShapeUpgrade_FixSmallCurves.hxx".}
proc SetSplitCurve3dTool*(this: var ShapeUpgrade_FixSmallCurves;
                         splitCurve3dTool: handle[ShapeUpgrade_SplitCurve3d]) {.
    importcpp: "SetSplitCurve3dTool", header: "ShapeUpgrade_FixSmallCurves.hxx".}
proc SetSplitCurve2dTool*(this: var ShapeUpgrade_FixSmallCurves;
                         splitCurve2dTool: handle[ShapeUpgrade_SplitCurve2d]) {.
    importcpp: "SetSplitCurve2dTool", header: "ShapeUpgrade_FixSmallCurves.hxx".}
proc Status*(this: ShapeUpgrade_FixSmallCurves; status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "Status", header: "ShapeUpgrade_FixSmallCurves.hxx".}
type
  ShapeUpgrade_FixSmallCurvesbase_type* = ShapeUpgrade_Tool

proc get_type_name*(): cstring {.importcpp: "ShapeUpgrade_FixSmallCurves::get_type_name(@)",
                              header: "ShapeUpgrade_FixSmallCurves.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeUpgrade_FixSmallCurves::get_type_descriptor(@)",
    header: "ShapeUpgrade_FixSmallCurves.hxx".}
proc DynamicType*(this: ShapeUpgrade_FixSmallCurves): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeUpgrade_FixSmallCurves.hxx".}