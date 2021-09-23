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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TopTools/TopTools_HSequenceOfShape, ../Transfer/Transfer_Binder,
  ../Standard/Standard_Boolean, ../Standard/Standard_Type,
  ../Standard/Standard_CString, ../Standard/Standard_Integer,
  ../TopAbs/TopAbs_ShapeEnum

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
  Handle_TransferBRep_ShapeListBinder* = handle[TransferBRep_ShapeListBinder]

## ! This binder binds several (a list of) shapes with a starting
## ! entity, when this entity itself corresponds to a simple list
## ! of shapes. Each part is not seen as a sub-result of an
## ! independant componant, but as an item of a built-in list

type
  TransferBRep_ShapeListBinder* {.importcpp: "TransferBRep_ShapeListBinder",
                                 header: "TransferBRep_ShapeListBinder.hxx",
                                 bycopy.} = object of Transfer_Binder


proc constructTransferBRep_ShapeListBinder*(): TransferBRep_ShapeListBinder {.
    constructor, importcpp: "TransferBRep_ShapeListBinder(@)",
    header: "TransferBRep_ShapeListBinder.hxx".}
proc constructTransferBRep_ShapeListBinder*(
    list: handle[TopTools_HSequenceOfShape]): TransferBRep_ShapeListBinder {.
    constructor, importcpp: "TransferBRep_ShapeListBinder(@)",
    header: "TransferBRep_ShapeListBinder.hxx".}
proc IsMultiple*(this: TransferBRep_ShapeListBinder): Standard_Boolean {.
    noSideEffect, importcpp: "IsMultiple",
    header: "TransferBRep_ShapeListBinder.hxx".}
proc ResultType*(this: TransferBRep_ShapeListBinder): handle[Standard_Type] {.
    noSideEffect, importcpp: "ResultType",
    header: "TransferBRep_ShapeListBinder.hxx".}
proc ResultTypeName*(this: TransferBRep_ShapeListBinder): Standard_CString {.
    noSideEffect, importcpp: "ResultTypeName",
    header: "TransferBRep_ShapeListBinder.hxx".}
proc AddResult*(this: var TransferBRep_ShapeListBinder; res: TopoDS_Shape) {.
    importcpp: "AddResult", header: "TransferBRep_ShapeListBinder.hxx".}
proc Result*(this: TransferBRep_ShapeListBinder): handle[TopTools_HSequenceOfShape] {.
    noSideEffect, importcpp: "Result", header: "TransferBRep_ShapeListBinder.hxx".}
proc SetResult*(this: var TransferBRep_ShapeListBinder; num: Standard_Integer;
               res: TopoDS_Shape) {.importcpp: "SetResult",
                                  header: "TransferBRep_ShapeListBinder.hxx".}
proc NbShapes*(this: TransferBRep_ShapeListBinder): Standard_Integer {.noSideEffect,
    importcpp: "NbShapes", header: "TransferBRep_ShapeListBinder.hxx".}
proc Shape*(this: TransferBRep_ShapeListBinder; num: Standard_Integer): TopoDS_Shape {.
    noSideEffect, importcpp: "Shape", header: "TransferBRep_ShapeListBinder.hxx".}
proc ShapeType*(this: TransferBRep_ShapeListBinder; num: Standard_Integer): TopAbs_ShapeEnum {.
    noSideEffect, importcpp: "ShapeType",
    header: "TransferBRep_ShapeListBinder.hxx".}
proc Vertex*(this: TransferBRep_ShapeListBinder; num: Standard_Integer): TopoDS_Vertex {.
    noSideEffect, importcpp: "Vertex", header: "TransferBRep_ShapeListBinder.hxx".}
proc Edge*(this: TransferBRep_ShapeListBinder; num: Standard_Integer): TopoDS_Edge {.
    noSideEffect, importcpp: "Edge", header: "TransferBRep_ShapeListBinder.hxx".}
proc Wire*(this: TransferBRep_ShapeListBinder; num: Standard_Integer): TopoDS_Wire {.
    noSideEffect, importcpp: "Wire", header: "TransferBRep_ShapeListBinder.hxx".}
proc Face*(this: TransferBRep_ShapeListBinder; num: Standard_Integer): TopoDS_Face {.
    noSideEffect, importcpp: "Face", header: "TransferBRep_ShapeListBinder.hxx".}
proc Shell*(this: TransferBRep_ShapeListBinder; num: Standard_Integer): TopoDS_Shell {.
    noSideEffect, importcpp: "Shell", header: "TransferBRep_ShapeListBinder.hxx".}
proc Solid*(this: TransferBRep_ShapeListBinder; num: Standard_Integer): TopoDS_Solid {.
    noSideEffect, importcpp: "Solid", header: "TransferBRep_ShapeListBinder.hxx".}
proc CompSolid*(this: TransferBRep_ShapeListBinder; num: Standard_Integer): TopoDS_CompSolid {.
    noSideEffect, importcpp: "CompSolid",
    header: "TransferBRep_ShapeListBinder.hxx".}
proc Compound*(this: TransferBRep_ShapeListBinder; num: Standard_Integer): TopoDS_Compound {.
    noSideEffect, importcpp: "Compound", header: "TransferBRep_ShapeListBinder.hxx".}
type
  TransferBRep_ShapeListBinderbase_type* = Transfer_Binder

proc get_type_name*(): cstring {.importcpp: "TransferBRep_ShapeListBinder::get_type_name(@)",
                              header: "TransferBRep_ShapeListBinder.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TransferBRep_ShapeListBinder::get_type_descriptor(@)",
    header: "TransferBRep_ShapeListBinder.hxx".}
proc DynamicType*(this: TransferBRep_ShapeListBinder): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "TransferBRep_ShapeListBinder.hxx".}