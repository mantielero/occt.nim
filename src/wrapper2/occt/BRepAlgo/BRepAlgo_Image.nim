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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of TopoDS_Shape"
type
  BRepAlgoImage* {.importcpp: "BRepAlgo_Image", header: "BRepAlgo_Image.hxx", bycopy.} = object


proc constructBRepAlgoImage*(): BRepAlgoImage {.constructor,
    importcpp: "BRepAlgo_Image(@)", header: "BRepAlgo_Image.hxx".}
proc setRoot*(this: var BRepAlgoImage; s: TopoDS_Shape) {.importcpp: "SetRoot",
    header: "BRepAlgo_Image.hxx".}
proc `bind`*(this: var BRepAlgoImage; oldS: TopoDS_Shape; newS: TopoDS_Shape) {.
    importcpp: "Bind", header: "BRepAlgo_Image.hxx".}
proc `bind`*(this: var BRepAlgoImage; oldS: TopoDS_Shape; newS: TopToolsListOfShape) {.
    importcpp: "Bind", header: "BRepAlgo_Image.hxx".}
proc add*(this: var BRepAlgoImage; oldS: TopoDS_Shape; newS: TopoDS_Shape) {.
    importcpp: "Add", header: "BRepAlgo_Image.hxx".}
proc add*(this: var BRepAlgoImage; oldS: TopoDS_Shape; newS: TopToolsListOfShape) {.
    importcpp: "Add", header: "BRepAlgo_Image.hxx".}
proc clear*(this: var BRepAlgoImage) {.importcpp: "Clear",
                                   header: "BRepAlgo_Image.hxx".}
proc remove*(this: var BRepAlgoImage; s: TopoDS_Shape) {.importcpp: "Remove",
    header: "BRepAlgo_Image.hxx".}
proc removeRoot*(this: var BRepAlgoImage; root: TopoDS_Shape) {.
    importcpp: "RemoveRoot", header: "BRepAlgo_Image.hxx".}
proc replaceRoot*(this: var BRepAlgoImage; oldRoot: TopoDS_Shape;
                 newRoot: TopoDS_Shape) {.importcpp: "ReplaceRoot",
                                        header: "BRepAlgo_Image.hxx".}
proc roots*(this: BRepAlgoImage): TopToolsListOfShape {.noSideEffect,
    importcpp: "Roots", header: "BRepAlgo_Image.hxx".}
proc isImage*(this: BRepAlgoImage; s: TopoDS_Shape): StandardBoolean {.noSideEffect,
    importcpp: "IsImage", header: "BRepAlgo_Image.hxx".}
proc imageFrom*(this: BRepAlgoImage; s: TopoDS_Shape): TopoDS_Shape {.noSideEffect,
    importcpp: "ImageFrom", header: "BRepAlgo_Image.hxx".}
proc root*(this: BRepAlgoImage; s: TopoDS_Shape): TopoDS_Shape {.noSideEffect,
    importcpp: "Root", header: "BRepAlgo_Image.hxx".}
proc hasImage*(this: BRepAlgoImage; s: TopoDS_Shape): StandardBoolean {.noSideEffect,
    importcpp: "HasImage", header: "BRepAlgo_Image.hxx".}
proc image*(this: BRepAlgoImage; s: TopoDS_Shape): TopToolsListOfShape {.noSideEffect,
    importcpp: "Image", header: "BRepAlgo_Image.hxx".}
proc lastImage*(this: BRepAlgoImage; s: TopoDS_Shape; L: var TopToolsListOfShape) {.
    noSideEffect, importcpp: "LastImage", header: "BRepAlgo_Image.hxx".}
proc compact*(this: var BRepAlgoImage) {.importcpp: "Compact",
                                     header: "BRepAlgo_Image.hxx".}
proc filter*(this: var BRepAlgoImage; s: TopoDS_Shape; shapeType: TopAbsShapeEnum) {.
    importcpp: "Filter", header: "BRepAlgo_Image.hxx".}

