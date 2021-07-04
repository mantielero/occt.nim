##  Created on: 2000-05-24
##  Created by: data exchange team
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
  ../Standard/Standard, ../Standard/Standard_Type, ../TopoDS/TopoDS_Face,
  ../Standard/Standard_Boolean, ../TColStd/TColStd_HSequenceOfReal,
  ShapeUpgrade_Tool

discard "forward decl of ShapeUpgrade_SplitCurve3d"
discard "forward decl of ShapeUpgrade_SplitCurve2d"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of ShapeUpgrade_EdgeDivide"
discard "forward decl of ShapeUpgrade_EdgeDivide"
type
  Handle_ShapeUpgrade_EdgeDivide* = handle[ShapeUpgrade_EdgeDivide]
  ShapeUpgrade_EdgeDivide* {.importcpp: "ShapeUpgrade_EdgeDivide",
                            header: "ShapeUpgrade_EdgeDivide.hxx", bycopy.} = object of ShapeUpgrade_Tool ##
                                                                                                   ## !
                                                                                                   ## Empty
                                                                                                   ## constructor


proc constructShapeUpgrade_EdgeDivide*(): ShapeUpgrade_EdgeDivide {.constructor,
    importcpp: "ShapeUpgrade_EdgeDivide(@)", header: "ShapeUpgrade_EdgeDivide.hxx".}
proc Clear*(this: var ShapeUpgrade_EdgeDivide) {.importcpp: "Clear",
    header: "ShapeUpgrade_EdgeDivide.hxx".}
proc SetFace*(this: var ShapeUpgrade_EdgeDivide; F: TopoDS_Face) {.
    importcpp: "SetFace", header: "ShapeUpgrade_EdgeDivide.hxx".}
proc Compute*(this: var ShapeUpgrade_EdgeDivide; E: TopoDS_Edge): Standard_Boolean {.
    importcpp: "Compute", header: "ShapeUpgrade_EdgeDivide.hxx".}
proc HasCurve2d*(this: ShapeUpgrade_EdgeDivide): Standard_Boolean {.noSideEffect,
    importcpp: "HasCurve2d", header: "ShapeUpgrade_EdgeDivide.hxx".}
proc HasCurve3d*(this: ShapeUpgrade_EdgeDivide): Standard_Boolean {.noSideEffect,
    importcpp: "HasCurve3d", header: "ShapeUpgrade_EdgeDivide.hxx".}
proc Knots2d*(this: ShapeUpgrade_EdgeDivide): handle[TColStd_HSequenceOfReal] {.
    noSideEffect, importcpp: "Knots2d", header: "ShapeUpgrade_EdgeDivide.hxx".}
proc Knots3d*(this: ShapeUpgrade_EdgeDivide): handle[TColStd_HSequenceOfReal] {.
    noSideEffect, importcpp: "Knots3d", header: "ShapeUpgrade_EdgeDivide.hxx".}
proc SetSplitCurve2dTool*(this: var ShapeUpgrade_EdgeDivide;
                         splitCurve2dTool: handle[ShapeUpgrade_SplitCurve2d]) {.
    importcpp: "SetSplitCurve2dTool", header: "ShapeUpgrade_EdgeDivide.hxx".}
proc SetSplitCurve3dTool*(this: var ShapeUpgrade_EdgeDivide;
                         splitCurve3dTool: handle[ShapeUpgrade_SplitCurve3d]) {.
    importcpp: "SetSplitCurve3dTool", header: "ShapeUpgrade_EdgeDivide.hxx".}
proc GetSplitCurve2dTool*(this: ShapeUpgrade_EdgeDivide): handle[
    ShapeUpgrade_SplitCurve2d] {.noSideEffect, importcpp: "GetSplitCurve2dTool",
                                header: "ShapeUpgrade_EdgeDivide.hxx".}
proc GetSplitCurve3dTool*(this: ShapeUpgrade_EdgeDivide): handle[
    ShapeUpgrade_SplitCurve3d] {.noSideEffect, importcpp: "GetSplitCurve3dTool",
                                header: "ShapeUpgrade_EdgeDivide.hxx".}
type
  ShapeUpgrade_EdgeDividebase_type* = ShapeUpgrade_Tool

proc get_type_name*(): cstring {.importcpp: "ShapeUpgrade_EdgeDivide::get_type_name(@)",
                              header: "ShapeUpgrade_EdgeDivide.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeUpgrade_EdgeDivide::get_type_descriptor(@)",
    header: "ShapeUpgrade_EdgeDivide.hxx".}
proc DynamicType*(this: ShapeUpgrade_EdgeDivide): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "ShapeUpgrade_EdgeDivide.hxx".}