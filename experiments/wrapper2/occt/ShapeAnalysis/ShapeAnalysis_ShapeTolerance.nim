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

discard "forward decl of TopoDS_Shape"
type
  ShapeAnalysisShapeTolerance* {.importcpp: "ShapeAnalysis_ShapeTolerance",
                                header: "ShapeAnalysis_ShapeTolerance.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Empty
                                                                                         ## constructor


proc constructShapeAnalysisShapeTolerance*(): ShapeAnalysisShapeTolerance {.
    constructor, importcpp: "ShapeAnalysis_ShapeTolerance(@)",
    header: "ShapeAnalysis_ShapeTolerance.hxx".}
proc tolerance*(this: var ShapeAnalysisShapeTolerance; shape: TopoDS_Shape; mode: int;
               `type`: TopAbsShapeEnum = topAbsSHAPE): float {.
    importcpp: "Tolerance", header: "ShapeAnalysis_ShapeTolerance.hxx".}
proc overTolerance*(this: ShapeAnalysisShapeTolerance; shape: TopoDS_Shape;
                   value: float; `type`: TopAbsShapeEnum = topAbsSHAPE): Handle[
    TopToolsHSequenceOfShape] {.noSideEffect, importcpp: "OverTolerance",
                               header: "ShapeAnalysis_ShapeTolerance.hxx".}
proc inTolerance*(this: ShapeAnalysisShapeTolerance; shape: TopoDS_Shape;
                 valmin: float; valmax: float; `type`: TopAbsShapeEnum = topAbsSHAPE): Handle[
    TopToolsHSequenceOfShape] {.noSideEffect, importcpp: "InTolerance",
                               header: "ShapeAnalysis_ShapeTolerance.hxx".}
proc initTolerance*(this: var ShapeAnalysisShapeTolerance) {.
    importcpp: "InitTolerance", header: "ShapeAnalysis_ShapeTolerance.hxx".}
proc addTolerance*(this: var ShapeAnalysisShapeTolerance; shape: TopoDS_Shape;
                  `type`: TopAbsShapeEnum = topAbsSHAPE) {.
    importcpp: "AddTolerance", header: "ShapeAnalysis_ShapeTolerance.hxx".}
proc globalTolerance*(this: ShapeAnalysisShapeTolerance; mode: int): float {.
    noSideEffect, importcpp: "GlobalTolerance",
    header: "ShapeAnalysis_ShapeTolerance.hxx".}
