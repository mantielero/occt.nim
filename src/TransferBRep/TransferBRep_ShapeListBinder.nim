##  Created on: 1994-10-03
##  Created by: Christian CAILLET
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of Standard_TypeMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Solid"
discard "forward decl of TopoDS_CompSolid"
discard "forward decl of TopoDS_Compound"
discard "forward decl of TransferBRep_ShapeListBinder"
discard "forward decl of TransferBRep_ShapeListBinder"
type
  HandleC1C1* = Handle[TransferBRepShapeListBinder]

## ! This binder binds several (a list of) shapes with a starting
## ! entity, when this entity itself corresponds to a simple list
## ! of shapes. Each part is not seen as a sub-result of an
## ! independant componant, but as an item of a built-in list

type
  TransferBRepShapeListBinder* {.importcpp: "TransferBRep_ShapeListBinder",
                                header: "TransferBRep_ShapeListBinder.hxx", bycopy.} = object of TransferBinder


proc constructTransferBRepShapeListBinder*(): TransferBRepShapeListBinder {.
    constructor, importcpp: "TransferBRep_ShapeListBinder(@)",
    header: "TransferBRep_ShapeListBinder.hxx".}
proc constructTransferBRepShapeListBinder*(list: Handle[TopToolsHSequenceOfShape]): TransferBRepShapeListBinder {.
    constructor, importcpp: "TransferBRep_ShapeListBinder(@)",
    header: "TransferBRep_ShapeListBinder.hxx".}
proc isMultiple*(this: TransferBRepShapeListBinder): StandardBoolean {.noSideEffect,
    importcpp: "IsMultiple", header: "TransferBRep_ShapeListBinder.hxx".}
proc resultType*(this: TransferBRepShapeListBinder): Handle[StandardType] {.
    noSideEffect, importcpp: "ResultType",
    header: "TransferBRep_ShapeListBinder.hxx".}
proc resultTypeName*(this: TransferBRepShapeListBinder): StandardCString {.
    noSideEffect, importcpp: "ResultTypeName",
    header: "TransferBRep_ShapeListBinder.hxx".}
proc addResult*(this: var TransferBRepShapeListBinder; res: TopoDS_Shape) {.
    importcpp: "AddResult", header: "TransferBRep_ShapeListBinder.hxx".}
proc result*(this: TransferBRepShapeListBinder): Handle[TopToolsHSequenceOfShape] {.
    noSideEffect, importcpp: "Result", header: "TransferBRep_ShapeListBinder.hxx".}
proc setResult*(this: var TransferBRepShapeListBinder; num: int; res: TopoDS_Shape) {.
    importcpp: "SetResult", header: "TransferBRep_ShapeListBinder.hxx".}
proc nbShapes*(this: TransferBRepShapeListBinder): int {.noSideEffect,
    importcpp: "NbShapes", header: "TransferBRep_ShapeListBinder.hxx".}
proc shape*(this: TransferBRepShapeListBinder; num: int): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "TransferBRep_ShapeListBinder.hxx".}
proc shapeType*(this: TransferBRepShapeListBinder; num: int): TopAbsShapeEnum {.
    noSideEffect, importcpp: "ShapeType",
    header: "TransferBRep_ShapeListBinder.hxx".}
proc vertex*(this: TransferBRepShapeListBinder; num: int): TopoDS_Vertex {.
    noSideEffect, importcpp: "Vertex", header: "TransferBRep_ShapeListBinder.hxx".}
proc edge*(this: TransferBRepShapeListBinder; num: int): TopoDS_Edge {.noSideEffect,
    importcpp: "Edge", header: "TransferBRep_ShapeListBinder.hxx".}
proc wire*(this: TransferBRepShapeListBinder; num: int): TopoDS_Wire {.noSideEffect,
    importcpp: "Wire", header: "TransferBRep_ShapeListBinder.hxx".}
proc face*(this: TransferBRepShapeListBinder; num: int): TopoDS_Face {.noSideEffect,
    importcpp: "Face", header: "TransferBRep_ShapeListBinder.hxx".}
proc shell*(this: TransferBRepShapeListBinder; num: int): TopoDS_Shell {.noSideEffect,
    importcpp: "Shell", header: "TransferBRep_ShapeListBinder.hxx".}
proc solid*(this: TransferBRepShapeListBinder; num: int): TopoDS_Solid {.noSideEffect,
    importcpp: "Solid", header: "TransferBRep_ShapeListBinder.hxx".}
proc compSolid*(this: TransferBRepShapeListBinder; num: int): TopoDS_CompSolid {.
    noSideEffect, importcpp: "CompSolid",
    header: "TransferBRep_ShapeListBinder.hxx".}
proc compound*(this: TransferBRepShapeListBinder; num: int): TopoDS_Compound {.
    noSideEffect, importcpp: "Compound", header: "TransferBRep_ShapeListBinder.hxx".}
type
  TransferBRepShapeListBinderbaseType* = TransferBinder

proc getTypeName*(): cstring {.importcpp: "TransferBRep_ShapeListBinder::get_type_name(@)",
                            header: "TransferBRep_ShapeListBinder.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TransferBRep_ShapeListBinder::get_type_descriptor(@)",
    header: "TransferBRep_ShapeListBinder.hxx".}
proc dynamicType*(this: TransferBRepShapeListBinder): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "TransferBRep_ShapeListBinder.hxx".}