##  Created on: 1995-07-13
##  Created by: Jean Yves LEBEY
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
  ../TopExp/TopExp_Explorer, ../TopAbs/TopAbs

## ! Extends TopExp_Explorer by counting index of current item
## ! (for tracing and debug)

type
  TopOpeBRepTool_ShapeExplorer* {.importcpp: "TopOpeBRepTool_ShapeExplorer",
                                 header: "TopOpeBRepTool_ShapeExplorer.hxx",
                                 bycopy.} = object of TopExp_Explorer ## ! Creates an empty explorer, becomes usefull after Init.


proc constructTopOpeBRepTool_ShapeExplorer*(): TopOpeBRepTool_ShapeExplorer {.
    constructor, importcpp: "TopOpeBRepTool_ShapeExplorer(@)",
    header: "TopOpeBRepTool_ShapeExplorer.hxx".}
proc constructTopOpeBRepTool_ShapeExplorer*(S: TopoDS_Shape;
    ToFind: TopAbs_ShapeEnum; ToAvoid: TopAbs_ShapeEnum = TopAbs_SHAPE): TopOpeBRepTool_ShapeExplorer {.
    constructor, importcpp: "TopOpeBRepTool_ShapeExplorer(@)",
    header: "TopOpeBRepTool_ShapeExplorer.hxx".}
proc Init*(this: var TopOpeBRepTool_ShapeExplorer; S: TopoDS_Shape;
          ToFind: TopAbs_ShapeEnum; ToAvoid: TopAbs_ShapeEnum = TopAbs_SHAPE) {.
    importcpp: "Init", header: "TopOpeBRepTool_ShapeExplorer.hxx".}
proc Next*(this: var TopOpeBRepTool_ShapeExplorer) {.importcpp: "Next",
    header: "TopOpeBRepTool_ShapeExplorer.hxx".}
proc Index*(this: TopOpeBRepTool_ShapeExplorer): Standard_Integer {.noSideEffect,
    importcpp: "Index", header: "TopOpeBRepTool_ShapeExplorer.hxx".}
proc DumpCurrent*(this: TopOpeBRepTool_ShapeExplorer; OS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "DumpCurrent",
    header: "TopOpeBRepTool_ShapeExplorer.hxx".}