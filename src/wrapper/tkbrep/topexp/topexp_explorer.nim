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
                   bycopy.} = object of RootObj ## ! Creates an empty explorer, becomes usefull after Init.


proc newExplorer*(): TopExpExplorer {.cdecl, constructor,
    importcpp: "TopExp_Explorer(@)", dynlib: tkbrep.}
proc newExplorer*(s: TopoDS_Shape; toFind: TopAbsShapeEnum;
                       toAvoid: TopAbsShapeEnum = topAbsSHAPE): TopExpExplorer {.
    cdecl, constructor, importcpp: "TopExp_Explorer(@)", dynlib: tkbrep.}
proc init*(this: var TopExpExplorer; s: TopoDS_Shape; toFind: TopAbsShapeEnum;
          toAvoid: TopAbsShapeEnum = topAbsSHAPE) {.cdecl, importcpp: "Init",
    dynlib: tkbrep.}
proc more*(this: TopExpExplorer): bool {.noSideEffect, cdecl, importcpp: "More",
                                     dynlib: tkbrep.}
proc next*(this: var TopExpExplorer) {.cdecl, importcpp: "Next", dynlib: tkbrep.}
proc value*(this: TopExpExplorer): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkbrep.}
proc current*(this: TopExpExplorer): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Current", dynlib: tkbrep.}
proc reInit*(this: var TopExpExplorer) {.cdecl, importcpp: "ReInit", dynlib: tkbrep.}
proc depth*(this: TopExpExplorer): cint {.noSideEffect, cdecl, importcpp: "Depth",
                                      dynlib: tkbrep.}
proc clear*(this: var TopExpExplorer) {.cdecl, importcpp: "Clear", dynlib: tkbrep.}
proc destroy*(this: var TopExpExplorer) {.cdecl, importcpp: "Destroy", dynlib: tkbrep.}
proc destroyTopExpExplorer*(this: var TopExpExplorer) {.cdecl,
    importcpp: "#.~TopExp_Explorer()", dynlib: tkbrep.}