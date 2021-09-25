##  Created on: 1999-09-13
##  Created by: data exchange team
##  Copyright (c) 1999 Matra Datavision
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
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Compound"
discard "forward decl of ShapeFix_FixSmallFace"
discard "forward decl of ShapeFix_FixSmallFace"
type
  HandleShapeFixFixSmallFace* = Handle[ShapeFixFixSmallFace]

## ! Fixing face with small size

type
  ShapeFixFixSmallFace* {.importcpp: "ShapeFix_FixSmallFace",
                         header: "ShapeFix_FixSmallFace.hxx", bycopy.} = object of ShapeFixRoot


proc constructShapeFixFixSmallFace*(): ShapeFixFixSmallFace {.constructor,
    importcpp: "ShapeFix_FixSmallFace(@)", header: "ShapeFix_FixSmallFace.hxx".}
proc init*(this: var ShapeFixFixSmallFace; s: TopoDS_Shape) {.importcpp: "Init",
    header: "ShapeFix_FixSmallFace.hxx".}
proc perform*(this: var ShapeFixFixSmallFace) {.importcpp: "Perform",
    header: "ShapeFix_FixSmallFace.hxx".}
proc fixSpotFace*(this: var ShapeFixFixSmallFace): TopoDS_Shape {.
    importcpp: "FixSpotFace", header: "ShapeFix_FixSmallFace.hxx".}
proc replaceVerticesInCaseOfSpot*(this: ShapeFixFixSmallFace; f: var TopoDS_Face;
                                 tol: float): bool {.noSideEffect,
    importcpp: "ReplaceVerticesInCaseOfSpot", header: "ShapeFix_FixSmallFace.hxx".}
proc removeFacesInCaseOfSpot*(this: ShapeFixFixSmallFace; f: TopoDS_Face): bool {.
    noSideEffect, importcpp: "RemoveFacesInCaseOfSpot",
    header: "ShapeFix_FixSmallFace.hxx".}
proc fixStripFace*(this: var ShapeFixFixSmallFace; wasdone: bool = false): TopoDS_Shape {.
    importcpp: "FixStripFace", header: "ShapeFix_FixSmallFace.hxx".}
proc replaceInCaseOfStrip*(this: ShapeFixFixSmallFace; f: var TopoDS_Face;
                          e1: var TopoDS_Edge; e2: var TopoDS_Edge; tol: float): bool {.
    noSideEffect, importcpp: "ReplaceInCaseOfStrip",
    header: "ShapeFix_FixSmallFace.hxx".}
proc removeFacesInCaseOfStrip*(this: ShapeFixFixSmallFace; f: TopoDS_Face): bool {.
    noSideEffect, importcpp: "RemoveFacesInCaseOfStrip",
    header: "ShapeFix_FixSmallFace.hxx".}
proc computeSharedEdgeForStripFace*(this: ShapeFixFixSmallFace; f: TopoDS_Face;
                                   e1: TopoDS_Edge; e2: TopoDS_Edge;
                                   f1: TopoDS_Face; tol: float): TopoDS_Edge {.
    noSideEffect, importcpp: "ComputeSharedEdgeForStripFace",
    header: "ShapeFix_FixSmallFace.hxx".}
proc fixSplitFace*(this: var ShapeFixFixSmallFace; s: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "FixSplitFace", header: "ShapeFix_FixSmallFace.hxx".}
proc splitOneFace*(this: var ShapeFixFixSmallFace; f: var TopoDS_Face;
                  theSplittedFaces: var TopoDS_Compound): bool {.
    importcpp: "SplitOneFace", header: "ShapeFix_FixSmallFace.hxx".}
proc fixFace*(this: var ShapeFixFixSmallFace; f: TopoDS_Face): TopoDS_Face {.
    importcpp: "FixFace", header: "ShapeFix_FixSmallFace.hxx".}
proc fixShape*(this: var ShapeFixFixSmallFace): TopoDS_Shape {.importcpp: "FixShape",
    header: "ShapeFix_FixSmallFace.hxx".}
proc shape*(this: var ShapeFixFixSmallFace): TopoDS_Shape {.importcpp: "Shape",
    header: "ShapeFix_FixSmallFace.hxx".}
proc fixPinFace*(this: var ShapeFixFixSmallFace; f: var TopoDS_Face): bool {.
    importcpp: "FixPinFace", header: "ShapeFix_FixSmallFace.hxx".}
type
  ShapeFixFixSmallFacebaseType* = ShapeFixRoot

proc getTypeName*(): cstring {.importcpp: "ShapeFix_FixSmallFace::get_type_name(@)",
                            header: "ShapeFix_FixSmallFace.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeFix_FixSmallFace::get_type_descriptor(@)",
    header: "ShapeFix_FixSmallFace.hxx".}
proc dynamicType*(this: ShapeFixFixSmallFace): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "ShapeFix_FixSmallFace.hxx".}
