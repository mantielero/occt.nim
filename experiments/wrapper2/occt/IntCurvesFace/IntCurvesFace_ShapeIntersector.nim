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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../Standard/Standard_Address,
  ../BRepTopAdaptor/BRepTopAdaptor_SeqOfPtr,
  ../TColStd/TColStd_SequenceOfInteger, ../TColStd/TColStd_SequenceOfReal,
  ../Standard/Standard_Real,
  ../IntCurveSurface/IntCurveSurface_TransitionOnCurve, ../TopAbs/TopAbs_State

discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Lin"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Face"
type
  IntCurvesFace_ShapeIntersector* {.importcpp: "IntCurvesFace_ShapeIntersector", header: "IntCurvesFace_ShapeIntersector.hxx",
                                   bycopy.} = object


proc constructIntCurvesFace_ShapeIntersector*(): IntCurvesFace_ShapeIntersector {.
    constructor, importcpp: "IntCurvesFace_ShapeIntersector(@)",
    header: "IntCurvesFace_ShapeIntersector.hxx".}
proc Load*(this: var IntCurvesFace_ShapeIntersector; Sh: TopoDS_Shape;
          Tol: Standard_Real) {.importcpp: "Load",
                              header: "IntCurvesFace_ShapeIntersector.hxx".}
proc Perform*(this: var IntCurvesFace_ShapeIntersector; L: gp_Lin;
             PInf: Standard_Real; PSup: Standard_Real) {.importcpp: "Perform",
    header: "IntCurvesFace_ShapeIntersector.hxx".}
proc PerformNearest*(this: var IntCurvesFace_ShapeIntersector; L: gp_Lin;
                    PInf: Standard_Real; PSup: Standard_Real) {.
    importcpp: "PerformNearest", header: "IntCurvesFace_ShapeIntersector.hxx".}
proc Perform*(this: var IntCurvesFace_ShapeIntersector;
             HCu: handle[Adaptor3d_HCurve]; PInf: Standard_Real; PSup: Standard_Real) {.
    importcpp: "Perform", header: "IntCurvesFace_ShapeIntersector.hxx".}
proc IsDone*(this: IntCurvesFace_ShapeIntersector): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "IntCurvesFace_ShapeIntersector.hxx".}
proc NbPnt*(this: IntCurvesFace_ShapeIntersector): Standard_Integer {.noSideEffect,
    importcpp: "NbPnt", header: "IntCurvesFace_ShapeIntersector.hxx".}
proc UParameter*(this: IntCurvesFace_ShapeIntersector; I: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "UParameter",
    header: "IntCurvesFace_ShapeIntersector.hxx".}
proc VParameter*(this: IntCurvesFace_ShapeIntersector; I: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "VParameter",
    header: "IntCurvesFace_ShapeIntersector.hxx".}
proc WParameter*(this: IntCurvesFace_ShapeIntersector; I: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "WParameter",
    header: "IntCurvesFace_ShapeIntersector.hxx".}
proc Pnt*(this: IntCurvesFace_ShapeIntersector; I: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "Pnt", header: "IntCurvesFace_ShapeIntersector.hxx".}
proc Transition*(this: IntCurvesFace_ShapeIntersector; I: Standard_Integer): IntCurveSurface_TransitionOnCurve {.
    noSideEffect, importcpp: "Transition",
    header: "IntCurvesFace_ShapeIntersector.hxx".}
proc State*(this: IntCurvesFace_ShapeIntersector; I: Standard_Integer): TopAbs_State {.
    noSideEffect, importcpp: "State", header: "IntCurvesFace_ShapeIntersector.hxx".}
proc Face*(this: IntCurvesFace_ShapeIntersector; I: Standard_Integer): TopoDS_Face {.
    noSideEffect, importcpp: "Face", header: "IntCurvesFace_ShapeIntersector.hxx".}
proc SortResult*(this: var IntCurvesFace_ShapeIntersector) {.
    importcpp: "SortResult", header: "IntCurvesFace_ShapeIntersector.hxx".}
proc Destroy*(this: var IntCurvesFace_ShapeIntersector) {.importcpp: "Destroy",
    header: "IntCurvesFace_ShapeIntersector.hxx".}
proc destroyIntCurvesFace_ShapeIntersector*(
    this: var IntCurvesFace_ShapeIntersector) {.
    importcpp: "#.~IntCurvesFace_ShapeIntersector()",
    header: "IntCurvesFace_ShapeIntersector.hxx".}