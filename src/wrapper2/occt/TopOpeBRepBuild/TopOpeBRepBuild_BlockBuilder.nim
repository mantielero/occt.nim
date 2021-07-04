##  Created on: 1993-02-25
##  Created by: Jean Yves LEBEY
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
  ../Standard/Standard_Handle, ../TColStd/TColStd_DataMapOfIntegerInteger,
  ../TopTools/TopTools_IndexedMapOfOrientedShape,
  ../TColStd/TColStd_SequenceOfInteger, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean

discard "forward decl of TopOpeBRepBuild_ShapeSet"
discard "forward decl of TopOpeBRepBuild_BlockIterator"
discard "forward decl of TopoDS_Shape"
type
  TopOpeBRepBuild_BlockBuilder* {.importcpp: "TopOpeBRepBuild_BlockBuilder",
                                 header: "TopOpeBRepBuild_BlockBuilder.hxx",
                                 bycopy.} = object


proc constructTopOpeBRepBuild_BlockBuilder*(): TopOpeBRepBuild_BlockBuilder {.
    constructor, importcpp: "TopOpeBRepBuild_BlockBuilder(@)",
    header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc constructTopOpeBRepBuild_BlockBuilder*(SS: var TopOpeBRepBuild_ShapeSet): TopOpeBRepBuild_BlockBuilder {.
    constructor, importcpp: "TopOpeBRepBuild_BlockBuilder(@)",
    header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc MakeBlock*(this: var TopOpeBRepBuild_BlockBuilder;
               SS: var TopOpeBRepBuild_ShapeSet) {.importcpp: "MakeBlock",
    header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc InitBlock*(this: var TopOpeBRepBuild_BlockBuilder) {.importcpp: "InitBlock",
    header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc MoreBlock*(this: TopOpeBRepBuild_BlockBuilder): Standard_Boolean {.
    noSideEffect, importcpp: "MoreBlock",
    header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc NextBlock*(this: var TopOpeBRepBuild_BlockBuilder) {.importcpp: "NextBlock",
    header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc BlockIterator*(this: TopOpeBRepBuild_BlockBuilder): TopOpeBRepBuild_BlockIterator {.
    noSideEffect, importcpp: "BlockIterator",
    header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc Element*(this: TopOpeBRepBuild_BlockBuilder; BI: TopOpeBRepBuild_BlockIterator): TopoDS_Shape {.
    noSideEffect, importcpp: "Element", header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc Element*(this: TopOpeBRepBuild_BlockBuilder; I: Standard_Integer): TopoDS_Shape {.
    noSideEffect, importcpp: "Element", header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc Element*(this: TopOpeBRepBuild_BlockBuilder; S: TopoDS_Shape): Standard_Integer {.
    noSideEffect, importcpp: "Element", header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc ElementIsValid*(this: TopOpeBRepBuild_BlockBuilder;
                    BI: TopOpeBRepBuild_BlockIterator): Standard_Boolean {.
    noSideEffect, importcpp: "ElementIsValid",
    header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc ElementIsValid*(this: TopOpeBRepBuild_BlockBuilder; I: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "ElementIsValid",
    header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc AddElement*(this: var TopOpeBRepBuild_BlockBuilder; S: TopoDS_Shape): Standard_Integer {.
    importcpp: "AddElement", header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc SetValid*(this: var TopOpeBRepBuild_BlockBuilder;
              BI: TopOpeBRepBuild_BlockIterator; isvalid: Standard_Boolean) {.
    importcpp: "SetValid", header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc SetValid*(this: var TopOpeBRepBuild_BlockBuilder; I: Standard_Integer;
              isvalid: Standard_Boolean) {.importcpp: "SetValid",
    header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc CurrentBlockIsRegular*(this: var TopOpeBRepBuild_BlockBuilder): Standard_Boolean {.
    importcpp: "CurrentBlockIsRegular", header: "TopOpeBRepBuild_BlockBuilder.hxx".}