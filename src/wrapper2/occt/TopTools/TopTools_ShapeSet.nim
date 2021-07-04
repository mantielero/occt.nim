##  Created on: 1993-07-01
##  Created by: Remi LEQUETTE
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard_Handle, TopTools_IndexedMapOfShape, TopTools_LocationSet,
  ../Standard/Standard_Integer, ../Standard/Standard_OStream,
  ../Standard/Standard_IStream, ../TopAbs/TopAbs_ShapeEnum

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopTools_LocationSet"
discard "forward decl of TCollection_AsciiString"
type
  TopTools_ShapeSet* {.importcpp: "TopTools_ShapeSet",
                      header: "TopTools_ShapeSet.hxx", bycopy.} = object ## ! Builds an empty ShapeSet.
                                                                    ## ! Reads  from <IS>  a shape  and  returns  it in  S.
                                                                    ## ! <NbShapes> is the number of tshapes in the set.


proc constructTopTools_ShapeSet*(): TopTools_ShapeSet {.constructor,
    importcpp: "TopTools_ShapeSet(@)", header: "TopTools_ShapeSet.hxx".}
proc destroyTopTools_ShapeSet*(this: var TopTools_ShapeSet) {.
    importcpp: "#.~TopTools_ShapeSet()", header: "TopTools_ShapeSet.hxx".}
proc SetFormatNb*(this: var TopTools_ShapeSet; theFormatNb: Standard_Integer) {.
    importcpp: "SetFormatNb", header: "TopTools_ShapeSet.hxx".}
proc FormatNb*(this: TopTools_ShapeSet): Standard_Integer {.noSideEffect,
    importcpp: "FormatNb", header: "TopTools_ShapeSet.hxx".}
proc Clear*(this: var TopTools_ShapeSet) {.importcpp: "Clear",
                                       header: "TopTools_ShapeSet.hxx".}
proc Add*(this: var TopTools_ShapeSet; S: TopoDS_Shape): Standard_Integer {.
    importcpp: "Add", header: "TopTools_ShapeSet.hxx".}
proc Shape*(this: TopTools_ShapeSet; I: Standard_Integer): TopoDS_Shape {.
    noSideEffect, importcpp: "Shape", header: "TopTools_ShapeSet.hxx".}
proc Index*(this: TopTools_ShapeSet; S: TopoDS_Shape): Standard_Integer {.
    noSideEffect, importcpp: "Index", header: "TopTools_ShapeSet.hxx".}
proc Locations*(this: TopTools_ShapeSet): TopTools_LocationSet {.noSideEffect,
    importcpp: "Locations", header: "TopTools_ShapeSet.hxx".}
proc ChangeLocations*(this: var TopTools_ShapeSet): var TopTools_LocationSet {.
    importcpp: "ChangeLocations", header: "TopTools_ShapeSet.hxx".}
proc DumpExtent*(this: TopTools_ShapeSet; OS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "DumpExtent", header: "TopTools_ShapeSet.hxx".}
proc DumpExtent*(this: TopTools_ShapeSet; S: var TCollection_AsciiString) {.
    noSideEffect, importcpp: "DumpExtent", header: "TopTools_ShapeSet.hxx".}
proc Dump*(this: TopTools_ShapeSet; OS: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "TopTools_ShapeSet.hxx".}
proc Write*(this: var TopTools_ShapeSet; OS: var Standard_OStream;
           theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "Write", header: "TopTools_ShapeSet.hxx".}
proc Read*(this: var TopTools_ShapeSet; IS: var Standard_IStream;
          theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "Read", header: "TopTools_ShapeSet.hxx".}
proc Dump*(this: TopTools_ShapeSet; S: TopoDS_Shape; OS: var Standard_OStream) {.
    noSideEffect, importcpp: "Dump", header: "TopTools_ShapeSet.hxx".}
proc Write*(this: TopTools_ShapeSet; S: TopoDS_Shape; OS: var Standard_OStream) {.
    noSideEffect, importcpp: "Write", header: "TopTools_ShapeSet.hxx".}
proc Read*(this: TopTools_ShapeSet; S: var TopoDS_Shape; IS: var Standard_IStream) {.
    noSideEffect, importcpp: "Read", header: "TopTools_ShapeSet.hxx".}
proc AddGeometry*(this: var TopTools_ShapeSet; S: TopoDS_Shape) {.
    importcpp: "AddGeometry", header: "TopTools_ShapeSet.hxx".}
proc DumpGeometry*(this: TopTools_ShapeSet; OS: var Standard_OStream) {.noSideEffect,
    importcpp: "DumpGeometry", header: "TopTools_ShapeSet.hxx".}
proc WriteGeometry*(this: var TopTools_ShapeSet; OS: var Standard_OStream;
                   theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "WriteGeometry", header: "TopTools_ShapeSet.hxx".}
proc ReadGeometry*(this: var TopTools_ShapeSet; IS: var Standard_IStream;
                  theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "ReadGeometry", header: "TopTools_ShapeSet.hxx".}
proc DumpGeometry*(this: TopTools_ShapeSet; S: TopoDS_Shape; OS: var Standard_OStream) {.
    noSideEffect, importcpp: "DumpGeometry", header: "TopTools_ShapeSet.hxx".}
proc WriteGeometry*(this: TopTools_ShapeSet; S: TopoDS_Shape;
                   OS: var Standard_OStream) {.noSideEffect,
    importcpp: "WriteGeometry", header: "TopTools_ShapeSet.hxx".}
proc ReadGeometry*(this: var TopTools_ShapeSet; T: TopAbs_ShapeEnum;
                  IS: var Standard_IStream; S: var TopoDS_Shape) {.
    importcpp: "ReadGeometry", header: "TopTools_ShapeSet.hxx".}
proc AddShapes*(this: var TopTools_ShapeSet; S1: var TopoDS_Shape; S2: TopoDS_Shape) {.
    importcpp: "AddShapes", header: "TopTools_ShapeSet.hxx".}
proc Check*(this: var TopTools_ShapeSet; T: TopAbs_ShapeEnum; S: var TopoDS_Shape) {.
    importcpp: "Check", header: "TopTools_ShapeSet.hxx".}
proc NbShapes*(this: TopTools_ShapeSet): Standard_Integer {.noSideEffect,
    importcpp: "NbShapes", header: "TopTools_ShapeSet.hxx".}