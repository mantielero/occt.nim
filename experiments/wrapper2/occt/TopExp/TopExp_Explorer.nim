##  Created on: 1993-01-14
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

discard "forward decl of Standard_NoMoreObject"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Shape"
type
  TopExpExplorer* {.importcpp: "TopExp_Explorer", header: "TopExp_Explorer.hxx",
                   bycopy.} = object


proc `new`*(this: var TopExpExplorer; theSize: csize_t): pointer {.
    importcpp: "TopExp_Explorer::operator new", header: "TopExp_Explorer.hxx".}
proc `delete`*(this: var TopExpExplorer; theAddress: pointer) {.
    importcpp: "TopExp_Explorer::operator delete", header: "TopExp_Explorer.hxx".}
proc `new[]`*(this: var TopExpExplorer; theSize: csize_t): pointer {.
    importcpp: "TopExp_Explorer::operator new[]", header: "TopExp_Explorer.hxx".}
proc `delete[]`*(this: var TopExpExplorer; theAddress: pointer) {.
    importcpp: "TopExp_Explorer::operator delete[]", header: "TopExp_Explorer.hxx".}
proc `new`*(this: var TopExpExplorer; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopExp_Explorer::operator new", header: "TopExp_Explorer.hxx".}
proc `delete`*(this: var TopExpExplorer; a2: pointer; a3: pointer) {.
    importcpp: "TopExp_Explorer::operator delete", header: "TopExp_Explorer.hxx".}
proc explorer*(): TopExpExplorer {.constructor,
    importcpp: "TopExp_Explorer(@)", header: "TopExp_Explorer.hxx".}
proc explorer*(s: TopoDS_Shape; toFind: TopAbsShapeEnum;
                             toAvoid: TopAbsShapeEnum = TopAbsSHAPE): TopExpExplorer {.
    constructor, importcpp: "TopExp_Explorer(@)", header: "TopExp_Explorer.hxx".}
proc init*(this: var TopExpExplorer; s: TopoDS_Shape; toFind: TopAbsShapeEnum;
          toAvoid: TopAbsShapeEnum = TopAbsSHAPE) {.importcpp: "Init",
    header: "TopExp_Explorer.hxx".}
proc more*(this: TopExpExplorer): bool {.noSideEffect, importcpp: "More",
    header: "TopExp_Explorer.hxx".}
proc next*(this: var TopExpExplorer) {.importcpp: "Next",
                                   header: "TopExp_Explorer.hxx".}
proc value*(this: TopExpExplorer): TopoDS_Shape {.noSideEffect, importcpp: "Value",
    header: "TopExp_Explorer.hxx".}
proc current*(this: TopExpExplorer): TopoDS_Shape {.noSideEffect,
    importcpp: "Current", header: "TopExp_Explorer.hxx".}
proc reInit*(this: var TopExpExplorer) {.importcpp: "ReInit",
                                     header: "TopExp_Explorer.hxx".}
proc depth*(this: TopExpExplorer): int {.noSideEffect, importcpp: "Depth",
                                     header: "TopExp_Explorer.hxx".}
proc clear*(this: var TopExpExplorer) {.importcpp: "Clear",
                                    header: "TopExp_Explorer.hxx".}
proc destroy*(this: var TopExpExplorer) {.importcpp: "Destroy",
                                      header: "TopExp_Explorer.hxx".}
proc destroyTopExpExplorer*(this: var TopExpExplorer) {.
    importcpp: "#.~TopExp_Explorer()", header: "TopExp_Explorer.hxx".}