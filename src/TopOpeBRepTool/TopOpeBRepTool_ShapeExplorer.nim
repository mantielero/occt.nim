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

## ! Extends TopExp_Explorer by counting index of current item
## ! (for tracing and debug)

type
  TopOpeBRepToolShapeExplorer* {.importcpp: "TopOpeBRepTool_ShapeExplorer",
                                header: "TopOpeBRepTool_ShapeExplorer.hxx", bycopy.} = object of TopExpExplorer ##
                                                                                                         ## !
                                                                                                         ## Creates
                                                                                                         ## an
                                                                                                         ## empty
                                                                                                         ## explorer,
                                                                                                         ## becomes
                                                                                                         ## usefull
                                                                                                         ## after
                                                                                                         ## Init.


proc constructTopOpeBRepToolShapeExplorer*(): TopOpeBRepToolShapeExplorer {.
    constructor, importcpp: "TopOpeBRepTool_ShapeExplorer(@)",
    header: "TopOpeBRepTool_ShapeExplorer.hxx".}
proc constructTopOpeBRepToolShapeExplorer*(s: TopoDS_Shape;
    toFind: TopAbsShapeEnum; toAvoid: TopAbsShapeEnum = topAbsSHAPE): TopOpeBRepToolShapeExplorer {.
    constructor, importcpp: "TopOpeBRepTool_ShapeExplorer(@)",
    header: "TopOpeBRepTool_ShapeExplorer.hxx".}
proc init*(this: var TopOpeBRepToolShapeExplorer; s: TopoDS_Shape;
          toFind: TopAbsShapeEnum; toAvoid: TopAbsShapeEnum = topAbsSHAPE) {.
    importcpp: "Init", header: "TopOpeBRepTool_ShapeExplorer.hxx".}
proc next*(this: var TopOpeBRepToolShapeExplorer) {.importcpp: "Next",
    header: "TopOpeBRepTool_ShapeExplorer.hxx".}
proc index*(this: TopOpeBRepToolShapeExplorer): int {.noSideEffect,
    importcpp: "Index", header: "TopOpeBRepTool_ShapeExplorer.hxx".}
proc dumpCurrent*(this: TopOpeBRepToolShapeExplorer; os: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "DumpCurrent",
    header: "TopOpeBRepTool_ShapeExplorer.hxx".}