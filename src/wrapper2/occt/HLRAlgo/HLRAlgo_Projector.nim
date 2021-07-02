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
proc constructHLRAlgoProjector*(cs: GpAx2): HLRAlgoProjector {.constructor,
    importcpp: "HLRAlgo_Projector(@)", header: "HLRAlgo_Projector.hxx".}
proc constructHLRAlgoProjector*(cs: GpAx2; focus: StandardReal): HLRAlgoProjector {.
    constructor, importcpp: "HLRAlgo_Projector(@)", header: "HLRAlgo_Projector.hxx".}
proc constructHLRAlgoProjector*(t: GpTrsf; persp: StandardBoolean;
                               focus: StandardReal): HLRAlgoProjector {.
    constructor, importcpp: "HLRAlgo_Projector(@)", header: "HLRAlgo_Projector.hxx".}
proc constructHLRAlgoProjector*(t: GpTrsf; persp: StandardBoolean;
                               focus: StandardReal; v1: GpVec2d; v2: GpVec2d;
                               v3: GpVec2d): HLRAlgoProjector {.constructor,
    importcpp: "HLRAlgo_Projector(@)", header: "HLRAlgo_Projector.hxx".}
proc set*(this: var HLRAlgoProjector; t: GpTrsf; persp: StandardBoolean;
         focus: StandardReal) {.importcpp: "Set", header: "HLRAlgo_Projector.hxx".}
proc directions*(this: HLRAlgoProjector; d1: var GpVec2d; d2: var GpVec2d;
                d3: var GpVec2d) {.noSideEffect, importcpp: "Directions",
                                header: "HLRAlgo_Projector.hxx".}
proc scaled*(this: var HLRAlgoProjector; on: StandardBoolean = standardFalse) {.
    importcpp: "Scaled", header: "HLRAlgo_Projector.hxx".}
proc perspective*(this: HLRAlgoProjector): StandardBoolean {.noSideEffect,
    importcpp: "Perspective", header: "HLRAlgo_Projector.hxx".}
proc transformation*(this: HLRAlgoProjector): GpTrsf {.noSideEffect,
    importcpp: "Transformation", header: "HLRAlgo_Projector.hxx".}
proc invertedTransformation*(this: HLRAlgoProjector): GpTrsf {.noSideEffect,
    importcpp: "InvertedTransformation", header: "HLRAlgo_Projector.hxx".}
proc fullTransformation*(this: HLRAlgoProjector): GpTrsf {.noSideEffect,
    importcpp: "FullTransformation", header: "HLRAlgo_Projector.hxx".}
proc focus*(this: HLRAlgoProjector): StandardReal {.noSideEffect, importcpp: "Focus",
    header: "HLRAlgo_Projector.hxx".}
proc transform*(this: HLRAlgoProjector; d: var GpVec) {.noSideEffect,
    importcpp: "Transform", header: "HLRAlgo_Projector.hxx".}
proc transform*(this: HLRAlgoProjector; pnt: var GpPnt) {.noSideEffect,
    importcpp: "Transform", header: "HLRAlgo_Projector.hxx".}
proc project*(this: HLRAlgoProjector; p: GpPnt; pout: var GpPnt2d) {.noSideEffect,
    importcpp: "Project", header: "HLRAlgo_Projector.hxx".}
proc project*(this: HLRAlgoProjector; p: GpPnt; x: var StandardReal;
             y: var StandardReal; z: var StandardReal) {.noSideEffect,
    importcpp: "Project", header: "HLRAlgo_Projector.hxx".}
proc project*(this: HLRAlgoProjector; p: GpPnt; d1: GpVec; pout: var GpPnt2d;
             d1out: var GpVec2d) {.noSideEffect, importcpp: "Project",
                                header: "HLRAlgo_Projector.hxx".}
proc shoot*(this: HLRAlgoProjector; x: StandardReal; y: StandardReal): GpLin {.
    noSideEffect, importcpp: "Shoot", header: "HLRAlgo_Projector.hxx".}

