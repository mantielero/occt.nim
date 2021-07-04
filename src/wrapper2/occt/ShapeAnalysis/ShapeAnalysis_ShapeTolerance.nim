##  Created on: 1998-06-03
##  Created by: data exchange team
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../TopAbs/TopAbs_ShapeEnum,
  ../TopTools/TopTools_HSequenceOfShape

discard "forward decl of TopoDS_Shape"
type
  ShapeAnalysis_ShapeTolerance* {.importcpp: "ShapeAnalysis_ShapeTolerance",
                                 header: "ShapeAnalysis_ShapeTolerance.hxx",
                                 bycopy.} = object ## ! Empty constructor


proc constructShapeAnalysis_ShapeTolerance*(): ShapeAnalysis_ShapeTolerance {.
    constructor, importcpp: "ShapeAnalysis_ShapeTolerance(@)",
    header: "ShapeAnalysis_ShapeTolerance.hxx".}
proc Tolerance*(this: var ShapeAnalysis_ShapeTolerance; shape: TopoDS_Shape;
               mode: Standard_Integer; `type`: TopAbs_ShapeEnum = TopAbs_SHAPE): Standard_Real {.
    importcpp: "Tolerance", header: "ShapeAnalysis_ShapeTolerance.hxx".}
proc OverTolerance*(this: ShapeAnalysis_ShapeTolerance; shape: TopoDS_Shape;
                   value: Standard_Real; `type`: TopAbs_ShapeEnum = TopAbs_SHAPE): handle[
    TopTools_HSequenceOfShape] {.noSideEffect, importcpp: "OverTolerance",
                                header: "ShapeAnalysis_ShapeTolerance.hxx".}
proc InTolerance*(this: ShapeAnalysis_ShapeTolerance; shape: TopoDS_Shape;
                 valmin: Standard_Real; valmax: Standard_Real;
                 `type`: TopAbs_ShapeEnum = TopAbs_SHAPE): handle[
    TopTools_HSequenceOfShape] {.noSideEffect, importcpp: "InTolerance",
                                header: "ShapeAnalysis_ShapeTolerance.hxx".}
proc InitTolerance*(this: var ShapeAnalysis_ShapeTolerance) {.
    importcpp: "InitTolerance", header: "ShapeAnalysis_ShapeTolerance.hxx".}
proc AddTolerance*(this: var ShapeAnalysis_ShapeTolerance; shape: TopoDS_Shape;
                  `type`: TopAbs_ShapeEnum = TopAbs_SHAPE) {.
    importcpp: "AddTolerance", header: "ShapeAnalysis_ShapeTolerance.hxx".}
proc GlobalTolerance*(this: ShapeAnalysis_ShapeTolerance; mode: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "GlobalTolerance",
    header: "ShapeAnalysis_ShapeTolerance.hxx".}