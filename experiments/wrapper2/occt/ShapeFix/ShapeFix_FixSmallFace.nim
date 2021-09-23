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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../TopoDS/TopoDS_Shape,
  ../Standard/Standard_Integer, ../ShapeAnalysis/ShapeAnalysis_CheckSmallFace,
  ShapeFix_Root, ../Standard/Standard_Boolean, ../Standard/Standard_Real

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Compound"
discard "forward decl of ShapeFix_FixSmallFace"
discard "forward decl of ShapeFix_FixSmallFace"
type
  Handle_ShapeFix_FixSmallFace* = handle[ShapeFix_FixSmallFace]

## ! Fixing face with small size

type
  ShapeFix_FixSmallFace* {.importcpp: "ShapeFix_FixSmallFace",
                          header: "ShapeFix_FixSmallFace.hxx", bycopy.} = object of ShapeFix_Root


proc constructShapeFix_FixSmallFace*(): ShapeFix_FixSmallFace {.constructor,
    importcpp: "ShapeFix_FixSmallFace(@)", header: "ShapeFix_FixSmallFace.hxx".}
proc Init*(this: var ShapeFix_FixSmallFace; S: TopoDS_Shape) {.importcpp: "Init",
    header: "ShapeFix_FixSmallFace.hxx".}
proc Perform*(this: var ShapeFix_FixSmallFace) {.importcpp: "Perform",
    header: "ShapeFix_FixSmallFace.hxx".}
proc FixSpotFace*(this: var ShapeFix_FixSmallFace): TopoDS_Shape {.
    importcpp: "FixSpotFace", header: "ShapeFix_FixSmallFace.hxx".}
proc ReplaceVerticesInCaseOfSpot*(this: ShapeFix_FixSmallFace; F: var TopoDS_Face;
                                 tol: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "ReplaceVerticesInCaseOfSpot",
    header: "ShapeFix_FixSmallFace.hxx".}
proc RemoveFacesInCaseOfSpot*(this: ShapeFix_FixSmallFace; F: TopoDS_Face): Standard_Boolean {.
    noSideEffect, importcpp: "RemoveFacesInCaseOfSpot",
    header: "ShapeFix_FixSmallFace.hxx".}
proc FixStripFace*(this: var ShapeFix_FixSmallFace;
                  wasdone: Standard_Boolean = Standard_False): TopoDS_Shape {.
    importcpp: "FixStripFace", header: "ShapeFix_FixSmallFace.hxx".}
proc ReplaceInCaseOfStrip*(this: ShapeFix_FixSmallFace; F: var TopoDS_Face;
                          E1: var TopoDS_Edge; E2: var TopoDS_Edge; tol: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "ReplaceInCaseOfStrip",
    header: "ShapeFix_FixSmallFace.hxx".}
proc RemoveFacesInCaseOfStrip*(this: ShapeFix_FixSmallFace; F: TopoDS_Face): Standard_Boolean {.
    noSideEffect, importcpp: "RemoveFacesInCaseOfStrip",
    header: "ShapeFix_FixSmallFace.hxx".}
proc ComputeSharedEdgeForStripFace*(this: ShapeFix_FixSmallFace; F: TopoDS_Face;
                                   E1: TopoDS_Edge; E2: TopoDS_Edge;
                                   F1: TopoDS_Face; tol: Standard_Real): TopoDS_Edge {.
    noSideEffect, importcpp: "ComputeSharedEdgeForStripFace",
    header: "ShapeFix_FixSmallFace.hxx".}
proc FixSplitFace*(this: var ShapeFix_FixSmallFace; S: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "FixSplitFace", header: "ShapeFix_FixSmallFace.hxx".}
proc SplitOneFace*(this: var ShapeFix_FixSmallFace; F: var TopoDS_Face;
                  theSplittedFaces: var TopoDS_Compound): Standard_Boolean {.
    importcpp: "SplitOneFace", header: "ShapeFix_FixSmallFace.hxx".}
proc FixFace*(this: var ShapeFix_FixSmallFace; F: TopoDS_Face): TopoDS_Face {.
    importcpp: "FixFace", header: "ShapeFix_FixSmallFace.hxx".}
proc FixShape*(this: var ShapeFix_FixSmallFace): TopoDS_Shape {.
    importcpp: "FixShape", header: "ShapeFix_FixSmallFace.hxx".}
proc Shape*(this: var ShapeFix_FixSmallFace): TopoDS_Shape {.importcpp: "Shape",
    header: "ShapeFix_FixSmallFace.hxx".}
proc FixPinFace*(this: var ShapeFix_FixSmallFace; F: var TopoDS_Face): Standard_Boolean {.
    importcpp: "FixPinFace", header: "ShapeFix_FixSmallFace.hxx".}
type
  ShapeFix_FixSmallFacebase_type* = ShapeFix_Root

proc get_type_name*(): cstring {.importcpp: "ShapeFix_FixSmallFace::get_type_name(@)",
                              header: "ShapeFix_FixSmallFace.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeFix_FixSmallFace::get_type_descriptor(@)",
    header: "ShapeFix_FixSmallFace.hxx".}
proc DynamicType*(this: ShapeFix_FixSmallFace): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "ShapeFix_FixSmallFace.hxx".}