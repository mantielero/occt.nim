##  Created on: 1992-03-12
##  Created by: Christophe MARION
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real, ../gp/gp_Trsf,
  ../gp/gp_Vec2d

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Lin"
type
  HLRAlgo_Projector* {.importcpp: "HLRAlgo_Projector",
                      header: "HLRAlgo_Projector.hxx", bycopy.} = object


proc constructHLRAlgo_Projector*(): HLRAlgo_Projector {.constructor,
    importcpp: "HLRAlgo_Projector(@)", header: "HLRAlgo_Projector.hxx".}
proc constructHLRAlgo_Projector*(CS: gp_Ax2): HLRAlgo_Projector {.constructor,
    importcpp: "HLRAlgo_Projector(@)", header: "HLRAlgo_Projector.hxx".}
proc constructHLRAlgo_Projector*(CS: gp_Ax2; Focus: Standard_Real): HLRAlgo_Projector {.
    constructor, importcpp: "HLRAlgo_Projector(@)", header: "HLRAlgo_Projector.hxx".}
proc constructHLRAlgo_Projector*(T: gp_Trsf; Persp: Standard_Boolean;
                                Focus: Standard_Real): HLRAlgo_Projector {.
    constructor, importcpp: "HLRAlgo_Projector(@)", header: "HLRAlgo_Projector.hxx".}
proc constructHLRAlgo_Projector*(T: gp_Trsf; Persp: Standard_Boolean;
                                Focus: Standard_Real; v1: gp_Vec2d; v2: gp_Vec2d;
                                v3: gp_Vec2d): HLRAlgo_Projector {.constructor,
    importcpp: "HLRAlgo_Projector(@)", header: "HLRAlgo_Projector.hxx".}
proc Set*(this: var HLRAlgo_Projector; T: gp_Trsf; Persp: Standard_Boolean;
         Focus: Standard_Real) {.importcpp: "Set", header: "HLRAlgo_Projector.hxx".}
proc Directions*(this: HLRAlgo_Projector; D1: var gp_Vec2d; D2: var gp_Vec2d;
                D3: var gp_Vec2d) {.noSideEffect, importcpp: "Directions",
                                 header: "HLRAlgo_Projector.hxx".}
proc Scaled*(this: var HLRAlgo_Projector; On: Standard_Boolean = Standard_False) {.
    importcpp: "Scaled", header: "HLRAlgo_Projector.hxx".}
proc Perspective*(this: HLRAlgo_Projector): Standard_Boolean {.noSideEffect,
    importcpp: "Perspective", header: "HLRAlgo_Projector.hxx".}
proc Transformation*(this: HLRAlgo_Projector): gp_Trsf {.noSideEffect,
    importcpp: "Transformation", header: "HLRAlgo_Projector.hxx".}
proc InvertedTransformation*(this: HLRAlgo_Projector): gp_Trsf {.noSideEffect,
    importcpp: "InvertedTransformation", header: "HLRAlgo_Projector.hxx".}
proc FullTransformation*(this: HLRAlgo_Projector): gp_Trsf {.noSideEffect,
    importcpp: "FullTransformation", header: "HLRAlgo_Projector.hxx".}
proc Focus*(this: HLRAlgo_Projector): Standard_Real {.noSideEffect,
    importcpp: "Focus", header: "HLRAlgo_Projector.hxx".}
proc Transform*(this: HLRAlgo_Projector; D: var gp_Vec) {.noSideEffect,
    importcpp: "Transform", header: "HLRAlgo_Projector.hxx".}
proc Transform*(this: HLRAlgo_Projector; Pnt: var gp_Pnt) {.noSideEffect,
    importcpp: "Transform", header: "HLRAlgo_Projector.hxx".}
proc Project*(this: HLRAlgo_Projector; P: gp_Pnt; Pout: var gp_Pnt2d) {.noSideEffect,
    importcpp: "Project", header: "HLRAlgo_Projector.hxx".}
proc Project*(this: HLRAlgo_Projector; P: gp_Pnt; X: var Standard_Real;
             Y: var Standard_Real; Z: var Standard_Real) {.noSideEffect,
    importcpp: "Project", header: "HLRAlgo_Projector.hxx".}
proc Project*(this: HLRAlgo_Projector; P: gp_Pnt; D1: gp_Vec; Pout: var gp_Pnt2d;
             D1out: var gp_Vec2d) {.noSideEffect, importcpp: "Project",
                                 header: "HLRAlgo_Projector.hxx".}
proc Shoot*(this: HLRAlgo_Projector; X: Standard_Real; Y: Standard_Real): gp_Lin {.
    noSideEffect, importcpp: "Shoot", header: "HLRAlgo_Projector.hxx".}