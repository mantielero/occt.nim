##  Created on: 1998-06-03
##  Created by: data exchange team
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TopTools/TopTools_HSequenceOfShape,
  ../Standard/Standard_Boolean, ../TopTools/TopTools_ListOfShape,
  ../TopAbs/TopAbs_ShapeEnum

discard "forward decl of Standard_TypeMismatch"
discard "forward decl of TopoDS_Shape"
type
  ShapeExtend_Explorer* {.importcpp: "ShapeExtend_Explorer",
                         header: "ShapeExtend_Explorer.hxx", bycopy.} = object ## !
                                                                          ## Creates an object
                                                                          ## Explorer


proc constructShapeExtend_Explorer*(): ShapeExtend_Explorer {.constructor,
    importcpp: "ShapeExtend_Explorer(@)", header: "ShapeExtend_Explorer.hxx".}
proc CompoundFromSeq*(this: ShapeExtend_Explorer;
                     seqval: handle[TopTools_HSequenceOfShape]): TopoDS_Shape {.
    noSideEffect, importcpp: "CompoundFromSeq", header: "ShapeExtend_Explorer.hxx".}
proc SeqFromCompound*(this: ShapeExtend_Explorer; comp: TopoDS_Shape;
                     expcomp: Standard_Boolean): handle[TopTools_HSequenceOfShape] {.
    noSideEffect, importcpp: "SeqFromCompound", header: "ShapeExtend_Explorer.hxx".}
proc ListFromSeq*(this: ShapeExtend_Explorer;
                 seqval: handle[TopTools_HSequenceOfShape];
                 lisval: var TopTools_ListOfShape;
                 clear: Standard_Boolean = Standard_True) {.noSideEffect,
    importcpp: "ListFromSeq", header: "ShapeExtend_Explorer.hxx".}
proc SeqFromList*(this: ShapeExtend_Explorer; lisval: TopTools_ListOfShape): handle[
    TopTools_HSequenceOfShape] {.noSideEffect, importcpp: "SeqFromList",
                                header: "ShapeExtend_Explorer.hxx".}
proc ShapeType*(this: ShapeExtend_Explorer; shape: TopoDS_Shape;
               compound: Standard_Boolean): TopAbs_ShapeEnum {.noSideEffect,
    importcpp: "ShapeType", header: "ShapeExtend_Explorer.hxx".}
proc SortedCompound*(this: ShapeExtend_Explorer; shape: TopoDS_Shape;
                    `type`: TopAbs_ShapeEnum; explore: Standard_Boolean;
                    compound: Standard_Boolean): TopoDS_Shape {.noSideEffect,
    importcpp: "SortedCompound", header: "ShapeExtend_Explorer.hxx".}
proc DispatchList*(this: ShapeExtend_Explorer;
                  list: handle[TopTools_HSequenceOfShape];
                  vertices: var handle[TopTools_HSequenceOfShape];
                  edges: var handle[TopTools_HSequenceOfShape];
                  wires: var handle[TopTools_HSequenceOfShape];
                  faces: var handle[TopTools_HSequenceOfShape];
                  shells: var handle[TopTools_HSequenceOfShape];
                  solids: var handle[TopTools_HSequenceOfShape];
                  compsols: var handle[TopTools_HSequenceOfShape];
                  compounds: var handle[TopTools_HSequenceOfShape]) {.noSideEffect,
    importcpp: "DispatchList", header: "ShapeExtend_Explorer.hxx".}