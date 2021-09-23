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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, TopExp_Stack, ../Standard/Standard_Integer,
  ../TopoDS/TopoDS_Shape, ../Standard/Standard_Boolean, ../TopAbs/TopAbs_ShapeEnum

discard "forward decl of Standard_NoMoreObject"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Shape"
type
  TopExp_Explorer* {.importcpp: "TopExp_Explorer", header: "TopExp_Explorer.hxx",
                    bycopy.} = object ## ! Creates an empty explorer, becomes usefull after Init.


proc constructTopExp_Explorer*(): TopExp_Explorer {.constructor,
    importcpp: "TopExp_Explorer(@)", header: "TopExp_Explorer.hxx".}
proc constructTopExp_Explorer*(S: TopoDS_Shape; ToFind: TopAbs_ShapeEnum;
                              ToAvoid: TopAbs_ShapeEnum = TopAbs_SHAPE): TopExp_Explorer {.
    constructor, importcpp: "TopExp_Explorer(@)", header: "TopExp_Explorer.hxx".}
proc Init*(this: var TopExp_Explorer; S: TopoDS_Shape; ToFind: TopAbs_ShapeEnum;
          ToAvoid: TopAbs_ShapeEnum = TopAbs_SHAPE) {.importcpp: "Init",
    header: "TopExp_Explorer.hxx".}
proc More*(this: TopExp_Explorer): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "TopExp_Explorer.hxx".}
proc Next*(this: var TopExp_Explorer) {.importcpp: "Next",
                                    header: "TopExp_Explorer.hxx".}
proc Value*(this: TopExp_Explorer): TopoDS_Shape {.noSideEffect, importcpp: "Value",
    header: "TopExp_Explorer.hxx".}
proc Current*(this: TopExp_Explorer): TopoDS_Shape {.noSideEffect,
    importcpp: "Current", header: "TopExp_Explorer.hxx".}
proc ReInit*(this: var TopExp_Explorer) {.importcpp: "ReInit",
                                      header: "TopExp_Explorer.hxx".}
proc Depth*(this: TopExp_Explorer): Standard_Integer {.noSideEffect,
    importcpp: "Depth", header: "TopExp_Explorer.hxx".}
proc Clear*(this: var TopExp_Explorer) {.importcpp: "Clear",
                                     header: "TopExp_Explorer.hxx".}
proc Destroy*(this: var TopExp_Explorer) {.importcpp: "Destroy",
                                       header: "TopExp_Explorer.hxx".}
proc destroyTopExp_Explorer*(this: var TopExp_Explorer) {.
    importcpp: "#.~TopExp_Explorer()", header: "TopExp_Explorer.hxx".}