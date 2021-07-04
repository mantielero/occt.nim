##  Created on: 1995-10-26
##  Created by: Yves FRICAUD
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TopTools/TopTools_ListOfShape,
  ../TopTools/TopTools_DataMapOfShapeShape,
  ../TopTools/TopTools_DataMapOfShapeListOfShape, ../Standard/Standard_Boolean,
  ../TopAbs/TopAbs_ShapeEnum

discard "forward decl of Standard_ConstructionError"
discard "forward decl of TopoDS_Shape"
type
  BRepAlgo_Image* {.importcpp: "BRepAlgo_Image", header: "BRepAlgo_Image.hxx", bycopy.} = object


proc constructBRepAlgo_Image*(): BRepAlgo_Image {.constructor,
    importcpp: "BRepAlgo_Image(@)", header: "BRepAlgo_Image.hxx".}
proc SetRoot*(this: var BRepAlgo_Image; S: TopoDS_Shape) {.importcpp: "SetRoot",
    header: "BRepAlgo_Image.hxx".}
proc Bind*(this: var BRepAlgo_Image; OldS: TopoDS_Shape; NewS: TopoDS_Shape) {.
    importcpp: "Bind", header: "BRepAlgo_Image.hxx".}
proc Bind*(this: var BRepAlgo_Image; OldS: TopoDS_Shape; NewS: TopTools_ListOfShape) {.
    importcpp: "Bind", header: "BRepAlgo_Image.hxx".}
proc Add*(this: var BRepAlgo_Image; OldS: TopoDS_Shape; NewS: TopoDS_Shape) {.
    importcpp: "Add", header: "BRepAlgo_Image.hxx".}
proc Add*(this: var BRepAlgo_Image; OldS: TopoDS_Shape; NewS: TopTools_ListOfShape) {.
    importcpp: "Add", header: "BRepAlgo_Image.hxx".}
proc Clear*(this: var BRepAlgo_Image) {.importcpp: "Clear",
                                    header: "BRepAlgo_Image.hxx".}
proc Remove*(this: var BRepAlgo_Image; S: TopoDS_Shape) {.importcpp: "Remove",
    header: "BRepAlgo_Image.hxx".}
proc RemoveRoot*(this: var BRepAlgo_Image; Root: TopoDS_Shape) {.
    importcpp: "RemoveRoot", header: "BRepAlgo_Image.hxx".}
proc ReplaceRoot*(this: var BRepAlgo_Image; OldRoot: TopoDS_Shape;
                 NewRoot: TopoDS_Shape) {.importcpp: "ReplaceRoot",
                                        header: "BRepAlgo_Image.hxx".}
proc Roots*(this: BRepAlgo_Image): TopTools_ListOfShape {.noSideEffect,
    importcpp: "Roots", header: "BRepAlgo_Image.hxx".}
proc IsImage*(this: BRepAlgo_Image; S: TopoDS_Shape): Standard_Boolean {.noSideEffect,
    importcpp: "IsImage", header: "BRepAlgo_Image.hxx".}
proc ImageFrom*(this: BRepAlgo_Image; S: TopoDS_Shape): TopoDS_Shape {.noSideEffect,
    importcpp: "ImageFrom", header: "BRepAlgo_Image.hxx".}
proc Root*(this: BRepAlgo_Image; S: TopoDS_Shape): TopoDS_Shape {.noSideEffect,
    importcpp: "Root", header: "BRepAlgo_Image.hxx".}
proc HasImage*(this: BRepAlgo_Image; S: TopoDS_Shape): Standard_Boolean {.
    noSideEffect, importcpp: "HasImage", header: "BRepAlgo_Image.hxx".}
proc Image*(this: BRepAlgo_Image; S: TopoDS_Shape): TopTools_ListOfShape {.
    noSideEffect, importcpp: "Image", header: "BRepAlgo_Image.hxx".}
proc LastImage*(this: BRepAlgo_Image; S: TopoDS_Shape; L: var TopTools_ListOfShape) {.
    noSideEffect, importcpp: "LastImage", header: "BRepAlgo_Image.hxx".}
proc Compact*(this: var BRepAlgo_Image) {.importcpp: "Compact",
                                      header: "BRepAlgo_Image.hxx".}
proc Filter*(this: var BRepAlgo_Image; S: TopoDS_Shape; ShapeType: TopAbs_ShapeEnum) {.
    importcpp: "Filter", header: "BRepAlgo_Image.hxx".}