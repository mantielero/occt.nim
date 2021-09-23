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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../BRepAdaptor/BRepAdaptor_Curve,
  ../BRepAdaptor/BRepAdaptor_Surface, ../Standard/Standard_Real,
  ../Extrema/Extrema_ExtCS, ../GeomAPI/GeomAPI_ProjectPointOnSurf,
  IntTools_MarkedRangeSet, IntTools_SequenceOfRanges,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  IntTools_ListOfCurveRangeSample, IntTools_ListOfSurfaceRangeSample

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
  IntTools_BeanFaceIntersector* {.importcpp: "IntTools_BeanFaceIntersector",
                                 header: "IntTools_BeanFaceIntersector.hxx",
                                 bycopy.} = object


proc constructIntTools_BeanFaceIntersector*(): IntTools_BeanFaceIntersector {.
    constructor, importcpp: "IntTools_BeanFaceIntersector(@)",
    header: "IntTools_BeanFaceIntersector.hxx".}
proc constructIntTools_BeanFaceIntersector*(theEdge: TopoDS_Edge;
    theFace: TopoDS_Face): IntTools_BeanFaceIntersector {.constructor,
    importcpp: "IntTools_BeanFaceIntersector(@)",
    header: "IntTools_BeanFaceIntersector.hxx".}
proc constructIntTools_BeanFaceIntersector*(theCurve: BRepAdaptor_Curve;
    theSurface: BRepAdaptor_Surface; theBeanTolerance: Standard_Real;
    theFaceTolerance: Standard_Real): IntTools_BeanFaceIntersector {.constructor,
    importcpp: "IntTools_BeanFaceIntersector(@)",
    header: "IntTools_BeanFaceIntersector.hxx".}
proc constructIntTools_BeanFaceIntersector*(theCurve: BRepAdaptor_Curve;
    theSurface: BRepAdaptor_Surface; theFirstParOnCurve: Standard_Real;
    theLastParOnCurve: Standard_Real; theUMinParameter: Standard_Real;
    theUMaxParameter: Standard_Real; theVMinParameter: Standard_Real;
    theVMaxParameter: Standard_Real; theBeanTolerance: Standard_Real;
    theFaceTolerance: Standard_Real): IntTools_BeanFaceIntersector {.constructor,
    importcpp: "IntTools_BeanFaceIntersector(@)",
    header: "IntTools_BeanFaceIntersector.hxx".}
proc Init*(this: var IntTools_BeanFaceIntersector; theEdge: TopoDS_Edge;
          theFace: TopoDS_Face) {.importcpp: "Init",
                                header: "IntTools_BeanFaceIntersector.hxx".}
proc Init*(this: var IntTools_BeanFaceIntersector; theCurve: BRepAdaptor_Curve;
          theSurface: BRepAdaptor_Surface; theBeanTolerance: Standard_Real;
          theFaceTolerance: Standard_Real) {.importcpp: "Init",
    header: "IntTools_BeanFaceIntersector.hxx".}
proc Init*(this: var IntTools_BeanFaceIntersector; theCurve: BRepAdaptor_Curve;
          theSurface: BRepAdaptor_Surface; theFirstParOnCurve: Standard_Real;
          theLastParOnCurve: Standard_Real; theUMinParameter: Standard_Real;
          theUMaxParameter: Standard_Real; theVMinParameter: Standard_Real;
          theVMaxParameter: Standard_Real; theBeanTolerance: Standard_Real;
          theFaceTolerance: Standard_Real) {.importcpp: "Init",
    header: "IntTools_BeanFaceIntersector.hxx".}
proc SetContext*(this: var IntTools_BeanFaceIntersector;
                theContext: handle[IntTools_Context]) {.importcpp: "SetContext",
    header: "IntTools_BeanFaceIntersector.hxx".}
proc Context*(this: IntTools_BeanFaceIntersector): handle[IntTools_Context] {.
    noSideEffect, importcpp: "Context", header: "IntTools_BeanFaceIntersector.hxx".}
proc SetBeanParameters*(this: var IntTools_BeanFaceIntersector;
                       theFirstParOnCurve: Standard_Real;
                       theLastParOnCurve: Standard_Real) {.
    importcpp: "SetBeanParameters", header: "IntTools_BeanFaceIntersector.hxx".}
proc SetSurfaceParameters*(this: var IntTools_BeanFaceIntersector;
                          theUMinParameter: Standard_Real;
                          theUMaxParameter: Standard_Real;
                          theVMinParameter: Standard_Real;
                          theVMaxParameter: Standard_Real) {.
    importcpp: "SetSurfaceParameters", header: "IntTools_BeanFaceIntersector.hxx".}
proc Perform*(this: var IntTools_BeanFaceIntersector) {.importcpp: "Perform",
    header: "IntTools_BeanFaceIntersector.hxx".}
proc IsDone*(this: IntTools_BeanFaceIntersector): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "IntTools_BeanFaceIntersector.hxx".}
proc Result*(this: IntTools_BeanFaceIntersector): IntTools_SequenceOfRanges {.
    noSideEffect, importcpp: "Result", header: "IntTools_BeanFaceIntersector.hxx".}
proc Result*(this: IntTools_BeanFaceIntersector;
            theResults: var IntTools_SequenceOfRanges) {.noSideEffect,
    importcpp: "Result", header: "IntTools_BeanFaceIntersector.hxx".}
proc MinimalSquareDistance*(this: IntTools_BeanFaceIntersector): Standard_Real {.
    noSideEffect, importcpp: "MinimalSquareDistance",
    header: "IntTools_BeanFaceIntersector.hxx".}