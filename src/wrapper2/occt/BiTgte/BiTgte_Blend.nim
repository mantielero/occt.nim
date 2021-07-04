##  Created on: 1996-12-16
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../Standard/Standard_Boolean, ../TopoDS/TopoDS_Shape,
  ../TopTools/TopTools_IndexedDataMapOfShapeListOfShape,
  ../BRepFill/BRepFill_DataMapOfShapeDataMapOfShapeListOfShape,
  ../TopTools/TopTools_DataMapOfShapeListOfShape,
  ../TopTools/TopTools_IndexedMapOfShape, ../TopTools/TopTools_MapOfShape,
  ../BRepOffset/BRepOffset_Analyse,
  ../BRepOffset/BRepOffset_DataMapOfShapeOffset, ../BRepAlgo/BRepAlgo_Image,
  ../Standard/Standard_Integer, ../TColStd/TColStd_HArray1OfInteger,
  ../TopTools/TopTools_ListOfShape, BiTgte_ContactType,
  ../TopTools/TopTools_DataMapOfShapeBox

discard "forward decl of BRepAlgo_AsDes"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of Geom_Surface"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of BRepOffset_Offset"
discard "forward decl of BRepOffset_Inter3d"
type
  BiTgte_Blend* {.importcpp: "BiTgte_Blend", header: "BiTgte_Blend.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Perform
                                                                                   ## the
                                                                                   ## generated
                                                                                   ## surfaces.


proc constructBiTgte_Blend*(): BiTgte_Blend {.constructor,
    importcpp: "BiTgte_Blend(@)", header: "BiTgte_Blend.hxx".}
proc constructBiTgte_Blend*(S: TopoDS_Shape; Radius: Standard_Real;
                           Tol: Standard_Real; NUBS: Standard_Boolean): BiTgte_Blend {.
    constructor, importcpp: "BiTgte_Blend(@)", header: "BiTgte_Blend.hxx".}
proc Init*(this: var BiTgte_Blend; S: TopoDS_Shape; Radius: Standard_Real;
          Tol: Standard_Real; NUBS: Standard_Boolean) {.importcpp: "Init",
    header: "BiTgte_Blend.hxx".}
proc Clear*(this: var BiTgte_Blend) {.importcpp: "Clear", header: "BiTgte_Blend.hxx".}
proc SetFaces*(this: var BiTgte_Blend; F1: TopoDS_Face; F2: TopoDS_Face) {.
    importcpp: "SetFaces", header: "BiTgte_Blend.hxx".}
proc SetEdge*(this: var BiTgte_Blend; Edge: TopoDS_Edge) {.importcpp: "SetEdge",
    header: "BiTgte_Blend.hxx".}
proc SetStoppingFace*(this: var BiTgte_Blend; Face: TopoDS_Face) {.
    importcpp: "SetStoppingFace", header: "BiTgte_Blend.hxx".}
proc Perform*(this: var BiTgte_Blend; BuildShape: Standard_Boolean = Standard_True) {.
    importcpp: "Perform", header: "BiTgte_Blend.hxx".}
proc IsDone*(this: BiTgte_Blend): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BiTgte_Blend.hxx".}
proc Shape*(this: BiTgte_Blend): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "BiTgte_Blend.hxx".}
proc NbSurfaces*(this: BiTgte_Blend): Standard_Integer {.noSideEffect,
    importcpp: "NbSurfaces", header: "BiTgte_Blend.hxx".}
proc Surface*(this: BiTgte_Blend; Index: Standard_Integer): handle[Geom_Surface] {.
    noSideEffect, importcpp: "Surface", header: "BiTgte_Blend.hxx".}
proc Face*(this: BiTgte_Blend; Index: Standard_Integer): TopoDS_Face {.noSideEffect,
    importcpp: "Face", header: "BiTgte_Blend.hxx".}
proc CenterLines*(this: BiTgte_Blend; LC: var TopTools_ListOfShape) {.noSideEffect,
    importcpp: "CenterLines", header: "BiTgte_Blend.hxx".}
proc Surface*(this: BiTgte_Blend; CenterLine: TopoDS_Shape): handle[Geom_Surface] {.
    noSideEffect, importcpp: "Surface", header: "BiTgte_Blend.hxx".}
proc Face*(this: BiTgte_Blend; CenterLine: TopoDS_Shape): TopoDS_Face {.noSideEffect,
    importcpp: "Face", header: "BiTgte_Blend.hxx".}
proc ContactType*(this: BiTgte_Blend; Index: Standard_Integer): BiTgte_ContactType {.
    noSideEffect, importcpp: "ContactType", header: "BiTgte_Blend.hxx".}
proc SupportShape1*(this: BiTgte_Blend; Index: Standard_Integer): TopoDS_Shape {.
    noSideEffect, importcpp: "SupportShape1", header: "BiTgte_Blend.hxx".}
proc SupportShape2*(this: BiTgte_Blend; Index: Standard_Integer): TopoDS_Shape {.
    noSideEffect, importcpp: "SupportShape2", header: "BiTgte_Blend.hxx".}
proc CurveOnShape1*(this: BiTgte_Blend; Index: Standard_Integer): handle[Geom_Curve] {.
    noSideEffect, importcpp: "CurveOnShape1", header: "BiTgte_Blend.hxx".}
proc CurveOnShape2*(this: BiTgte_Blend; Index: Standard_Integer): handle[Geom_Curve] {.
    noSideEffect, importcpp: "CurveOnShape2", header: "BiTgte_Blend.hxx".}
proc PCurveOnFace1*(this: BiTgte_Blend; Index: Standard_Integer): handle[Geom2d_Curve] {.
    noSideEffect, importcpp: "PCurveOnFace1", header: "BiTgte_Blend.hxx".}
proc PCurve1OnFillet*(this: BiTgte_Blend; Index: Standard_Integer): handle[
    Geom2d_Curve] {.noSideEffect, importcpp: "PCurve1OnFillet",
                   header: "BiTgte_Blend.hxx".}
proc PCurveOnFace2*(this: BiTgte_Blend; Index: Standard_Integer): handle[Geom2d_Curve] {.
    noSideEffect, importcpp: "PCurveOnFace2", header: "BiTgte_Blend.hxx".}
proc PCurve2OnFillet*(this: BiTgte_Blend; Index: Standard_Integer): handle[
    Geom2d_Curve] {.noSideEffect, importcpp: "PCurve2OnFillet",
                   header: "BiTgte_Blend.hxx".}
proc NbBranches*(this: var BiTgte_Blend): Standard_Integer {.importcpp: "NbBranches",
    header: "BiTgte_Blend.hxx".}
proc IndicesOfBranche*(this: BiTgte_Blend; Index: Standard_Integer;
                      From: var Standard_Integer; To: var Standard_Integer) {.
    noSideEffect, importcpp: "IndicesOfBranche", header: "BiTgte_Blend.hxx".}
proc ComputeCenters*(this: var BiTgte_Blend) {.importcpp: "ComputeCenters",
    header: "BiTgte_Blend.hxx".}