##  Created on: 1998-01-27
##  Created by: Laurent BUCHARD
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
discard "forward decl of gp_Lin"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Face"
type
  IntCurvesFaceShapeIntersector* {.importcpp: "IntCurvesFace_ShapeIntersector",
                                  header: "IntCurvesFace_ShapeIntersector.hxx",
                                  bycopy.} = object


proc constructIntCurvesFaceShapeIntersector*(): IntCurvesFaceShapeIntersector {.
    constructor, importcpp: "IntCurvesFace_ShapeIntersector(@)",
    header: "IntCurvesFace_ShapeIntersector.hxx".}
proc load*(this: var IntCurvesFaceShapeIntersector; sh: TopoDS_Shape;
          tol: StandardReal) {.importcpp: "Load",
                             header: "IntCurvesFace_ShapeIntersector.hxx".}
proc perform*(this: var IntCurvesFaceShapeIntersector; L: GpLin; pInf: StandardReal;
             pSup: StandardReal) {.importcpp: "Perform",
                                 header: "IntCurvesFace_ShapeIntersector.hxx".}
proc performNearest*(this: var IntCurvesFaceShapeIntersector; L: GpLin;
                    pInf: StandardReal; pSup: StandardReal) {.
    importcpp: "PerformNearest", header: "IntCurvesFace_ShapeIntersector.hxx".}
proc perform*(this: var IntCurvesFaceShapeIntersector; hCu: Handle[Adaptor3dHCurve];
             pInf: StandardReal; pSup: StandardReal) {.importcpp: "Perform",
    header: "IntCurvesFace_ShapeIntersector.hxx".}
proc isDone*(this: IntCurvesFaceShapeIntersector): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "IntCurvesFace_ShapeIntersector.hxx".}
proc nbPnt*(this: IntCurvesFaceShapeIntersector): StandardInteger {.noSideEffect,
    importcpp: "NbPnt", header: "IntCurvesFace_ShapeIntersector.hxx".}
proc uParameter*(this: IntCurvesFaceShapeIntersector; i: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "UParameter",
    header: "IntCurvesFace_ShapeIntersector.hxx".}
proc vParameter*(this: IntCurvesFaceShapeIntersector; i: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "VParameter",
    header: "IntCurvesFace_ShapeIntersector.hxx".}
proc wParameter*(this: IntCurvesFaceShapeIntersector; i: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "WParameter",
    header: "IntCurvesFace_ShapeIntersector.hxx".}
proc pnt*(this: IntCurvesFaceShapeIntersector; i: StandardInteger): GpPnt {.
    noSideEffect, importcpp: "Pnt", header: "IntCurvesFace_ShapeIntersector.hxx".}
proc transition*(this: IntCurvesFaceShapeIntersector; i: StandardInteger): IntCurveSurfaceTransitionOnCurve {.
    noSideEffect, importcpp: "Transition",
    header: "IntCurvesFace_ShapeIntersector.hxx".}
proc state*(this: IntCurvesFaceShapeIntersector; i: StandardInteger): TopAbsState {.
    noSideEffect, importcpp: "State", header: "IntCurvesFace_ShapeIntersector.hxx".}
proc face*(this: IntCurvesFaceShapeIntersector; i: StandardInteger): TopoDS_Face {.
    noSideEffect, importcpp: "Face", header: "IntCurvesFace_ShapeIntersector.hxx".}
proc sortResult*(this: var IntCurvesFaceShapeIntersector) {.importcpp: "SortResult",
    header: "IntCurvesFace_ShapeIntersector.hxx".}
proc destroy*(this: var IntCurvesFaceShapeIntersector) {.importcpp: "Destroy",
    header: "IntCurvesFace_ShapeIntersector.hxx".}
proc destroyIntCurvesFaceShapeIntersector*(
    this: var IntCurvesFaceShapeIntersector) {.
    importcpp: "#.~IntCurvesFace_ShapeIntersector()",
    header: "IntCurvesFace_ShapeIntersector.hxx".}

