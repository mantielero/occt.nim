##  Created on: 2001-06-29
##  Created by: Michael KLOKOV
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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

discard "forward decl of Geom_Surface"
discard "forward decl of IntTools_Context"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
discard "forward decl of BRepAdaptor_Curve"
discard "forward decl of BRepAdaptor_Surface"
discard "forward decl of IntTools_CurveRangeSample"
discard "forward decl of Bnd_Box"
discard "forward decl of IntTools_SurfaceRangeSample"
discard "forward decl of IntTools_CurveRangeLocalizeData"
discard "forward decl of IntTools_SurfaceRangeLocalizeData"
type
  IntToolsBeanFaceIntersector* {.importcpp: "IntTools_BeanFaceIntersector",
                                header: "IntTools_BeanFaceIntersector.hxx", bycopy.} = object


proc constructIntToolsBeanFaceIntersector*(): IntToolsBeanFaceIntersector {.
    constructor, importcpp: "IntTools_BeanFaceIntersector(@)",
    header: "IntTools_BeanFaceIntersector.hxx".}
proc constructIntToolsBeanFaceIntersector*(theEdge: TopoDS_Edge;
    theFace: TopoDS_Face): IntToolsBeanFaceIntersector {.constructor,
    importcpp: "IntTools_BeanFaceIntersector(@)",
    header: "IntTools_BeanFaceIntersector.hxx".}
proc constructIntToolsBeanFaceIntersector*(theCurve: BRepAdaptorCurve;
    theSurface: BRepAdaptorSurface; theBeanTolerance: cfloat;
    theFaceTolerance: cfloat): IntToolsBeanFaceIntersector {.constructor,
    importcpp: "IntTools_BeanFaceIntersector(@)",
    header: "IntTools_BeanFaceIntersector.hxx".}
proc constructIntToolsBeanFaceIntersector*(theCurve: BRepAdaptorCurve;
    theSurface: BRepAdaptorSurface; theFirstParOnCurve: cfloat;
    theLastParOnCurve: cfloat; theUMinParameter: cfloat; theUMaxParameter: cfloat;
    theVMinParameter: cfloat; theVMaxParameter: cfloat; theBeanTolerance: cfloat;
    theFaceTolerance: cfloat): IntToolsBeanFaceIntersector {.constructor,
    importcpp: "IntTools_BeanFaceIntersector(@)",
    header: "IntTools_BeanFaceIntersector.hxx".}
proc init*(this: var IntToolsBeanFaceIntersector; theEdge: TopoDS_Edge;
          theFace: TopoDS_Face) {.importcpp: "Init",
                                header: "IntTools_BeanFaceIntersector.hxx".}
proc init*(this: var IntToolsBeanFaceIntersector; theCurve: BRepAdaptorCurve;
          theSurface: BRepAdaptorSurface; theBeanTolerance: cfloat;
          theFaceTolerance: cfloat) {.importcpp: "Init",
                                    header: "IntTools_BeanFaceIntersector.hxx".}
proc init*(this: var IntToolsBeanFaceIntersector; theCurve: BRepAdaptorCurve;
          theSurface: BRepAdaptorSurface; theFirstParOnCurve: cfloat;
          theLastParOnCurve: cfloat; theUMinParameter: cfloat;
          theUMaxParameter: cfloat; theVMinParameter: cfloat;
          theVMaxParameter: cfloat; theBeanTolerance: cfloat;
          theFaceTolerance: cfloat) {.importcpp: "Init",
                                    header: "IntTools_BeanFaceIntersector.hxx".}
proc setContext*(this: var IntToolsBeanFaceIntersector;
                theContext: Handle[IntToolsContext]) {.importcpp: "SetContext",
    header: "IntTools_BeanFaceIntersector.hxx".}
proc context*(this: IntToolsBeanFaceIntersector): Handle[IntToolsContext] {.
    noSideEffect, importcpp: "Context", header: "IntTools_BeanFaceIntersector.hxx".}
proc setBeanParameters*(this: var IntToolsBeanFaceIntersector;
                       theFirstParOnCurve: cfloat; theLastParOnCurve: cfloat) {.
    importcpp: "SetBeanParameters", header: "IntTools_BeanFaceIntersector.hxx".}
proc setSurfaceParameters*(this: var IntToolsBeanFaceIntersector;
                          theUMinParameter: cfloat; theUMaxParameter: cfloat;
                          theVMinParameter: cfloat; theVMaxParameter: cfloat) {.
    importcpp: "SetSurfaceParameters", header: "IntTools_BeanFaceIntersector.hxx".}
proc perform*(this: var IntToolsBeanFaceIntersector) {.importcpp: "Perform",
    header: "IntTools_BeanFaceIntersector.hxx".}
proc isDone*(this: IntToolsBeanFaceIntersector): bool {.noSideEffect,
    importcpp: "IsDone", header: "IntTools_BeanFaceIntersector.hxx".}
proc result*(this: IntToolsBeanFaceIntersector): IntToolsSequenceOfRanges {.
    noSideEffect, importcpp: "Result", header: "IntTools_BeanFaceIntersector.hxx".}
proc result*(this: IntToolsBeanFaceIntersector;
            theResults: var IntToolsSequenceOfRanges) {.noSideEffect,
    importcpp: "Result", header: "IntTools_BeanFaceIntersector.hxx".}
proc minimalSquareDistance*(this: IntToolsBeanFaceIntersector): cfloat {.
    noSideEffect, importcpp: "MinimalSquareDistance",
    header: "IntTools_BeanFaceIntersector.hxx".}

























