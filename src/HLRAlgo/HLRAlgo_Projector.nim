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

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Lin"
type
  HLRAlgoProjector* {.importcpp: "HLRAlgo_Projector",
                     header: "HLRAlgo_Projector.hxx", bycopy.} = object


proc constructHLRAlgoProjector*(): HLRAlgoProjector {.constructor,
    importcpp: "HLRAlgo_Projector(@)", header: "HLRAlgo_Projector.hxx".}
proc constructHLRAlgoProjector*(cs: Ax2): HLRAlgoProjector {.constructor,
    importcpp: "HLRAlgo_Projector(@)", header: "HLRAlgo_Projector.hxx".}
proc constructHLRAlgoProjector*(cs: Ax2; focus: cfloat): HLRAlgoProjector {.
    constructor, importcpp: "HLRAlgo_Projector(@)", header: "HLRAlgo_Projector.hxx".}
proc constructHLRAlgoProjector*(t: Trsf; persp: bool; focus: cfloat): HLRAlgoProjector {.
    constructor, importcpp: "HLRAlgo_Projector(@)", header: "HLRAlgo_Projector.hxx".}
proc constructHLRAlgoProjector*(t: Trsf; persp: bool; focus: cfloat; v1: Vec2d;
                               v2: Vec2d; v3: Vec2d): HLRAlgoProjector {.constructor,
    importcpp: "HLRAlgo_Projector(@)", header: "HLRAlgo_Projector.hxx".}
proc set*(this: var HLRAlgoProjector; t: Trsf; persp: bool; focus: cfloat) {.
    importcpp: "Set", header: "HLRAlgo_Projector.hxx".}
proc directions*(this: HLRAlgoProjector; d1: var Vec2d; d2: var Vec2d; d3: var Vec2d) {.
    noSideEffect, importcpp: "Directions", header: "HLRAlgo_Projector.hxx".}
proc scaled*(this: var HLRAlgoProjector; on: bool = false) {.importcpp: "Scaled",
    header: "HLRAlgo_Projector.hxx".}
proc perspective*(this: HLRAlgoProjector): bool {.noSideEffect,
    importcpp: "Perspective", header: "HLRAlgo_Projector.hxx".}
proc transformation*(this: HLRAlgoProjector): Trsf {.noSideEffect,
    importcpp: "Transformation", header: "HLRAlgo_Projector.hxx".}
proc invertedTransformation*(this: HLRAlgoProjector): Trsf {.noSideEffect,
    importcpp: "InvertedTransformation", header: "HLRAlgo_Projector.hxx".}
proc fullTransformation*(this: HLRAlgoProjector): Trsf {.noSideEffect,
    importcpp: "FullTransformation", header: "HLRAlgo_Projector.hxx".}
proc focus*(this: HLRAlgoProjector): cfloat {.noSideEffect, importcpp: "Focus",
    header: "HLRAlgo_Projector.hxx".}
proc transform*(this: HLRAlgoProjector; d: var Vec) {.noSideEffect,
    importcpp: "Transform", header: "HLRAlgo_Projector.hxx".}
proc transform*(this: HLRAlgoProjector; pnt: var Pnt) {.noSideEffect,
    importcpp: "Transform", header: "HLRAlgo_Projector.hxx".}
proc project*(this: HLRAlgoProjector; p: Pnt; pout: var Pnt2d) {.noSideEffect,
    importcpp: "Project", header: "HLRAlgo_Projector.hxx".}
proc project*(this: HLRAlgoProjector; p: Pnt; x: var cfloat; y: var cfloat; z: var cfloat) {.
    noSideEffect, importcpp: "Project", header: "HLRAlgo_Projector.hxx".}
proc project*(this: HLRAlgoProjector; p: Pnt; d1: Vec; pout: var Pnt2d; d1out: var Vec2d) {.
    noSideEffect, importcpp: "Project", header: "HLRAlgo_Projector.hxx".}
proc shoot*(this: HLRAlgoProjector; x: cfloat; y: cfloat): Lin {.noSideEffect,
    importcpp: "Shoot", header: "HLRAlgo_Projector.hxx".}

























