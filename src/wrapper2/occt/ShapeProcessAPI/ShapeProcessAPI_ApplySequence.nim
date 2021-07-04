##  Created on: 1999-06-22
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopTools/TopTools_DataMapOfShapeShape,
  ../TCollection/TCollection_AsciiString, ../Standard/Standard_CString,
  ../Standard/Standard_Boolean, ../TopAbs/TopAbs_ShapeEnum,
  ../Message/Message_ProgressRange

discard "forward decl of ShapeProcess_ShapeContext"
discard "forward decl of TopoDS_Shape"
type
  ShapeProcessAPI_ApplySequence* {.importcpp: "ShapeProcessAPI_ApplySequence",
                                  header: "ShapeProcessAPI_ApplySequence.hxx",
                                  bycopy.} = object ## ! Creates an object and loads resource file and sequence of
                                                 ## ! operators given by their names.


proc constructShapeProcessAPI_ApplySequence*(rscName: Standard_CString;
    seqName: Standard_CString = ""): ShapeProcessAPI_ApplySequence {.constructor,
    importcpp: "ShapeProcessAPI_ApplySequence(@)",
    header: "ShapeProcessAPI_ApplySequence.hxx".}
proc Context*(this: var ShapeProcessAPI_ApplySequence): var handle[
    ShapeProcess_ShapeContext] {.importcpp: "Context",
                                header: "ShapeProcessAPI_ApplySequence.hxx".}
proc PrepareShape*(this: var ShapeProcessAPI_ApplySequence; shape: TopoDS_Shape;
                  fillmap: Standard_Boolean = Standard_False;
                  until: TopAbs_ShapeEnum = TopAbs_SHAPE;
                  theProgress: Message_ProgressRange = Message_ProgressRange()): TopoDS_Shape {.
    importcpp: "PrepareShape", header: "ShapeProcessAPI_ApplySequence.hxx".}
proc ClearMap*(this: var ShapeProcessAPI_ApplySequence) {.importcpp: "ClearMap",
    header: "ShapeProcessAPI_ApplySequence.hxx".}
proc Map*(this: ShapeProcessAPI_ApplySequence): TopTools_DataMapOfShapeShape {.
    noSideEffect, importcpp: "Map", header: "ShapeProcessAPI_ApplySequence.hxx".}
proc PrintPreparationResult*(this: ShapeProcessAPI_ApplySequence) {.noSideEffect,
    importcpp: "PrintPreparationResult",
    header: "ShapeProcessAPI_ApplySequence.hxx".}