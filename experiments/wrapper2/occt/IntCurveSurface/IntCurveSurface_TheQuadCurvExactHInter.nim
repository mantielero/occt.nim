##  Created on: 1993-04-07
##  Created by: Laurent BUCHARD
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

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HSurfaceTool"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of IntCurveSurface_TheHCurveTool"
discard "forward decl of IntCurveSurface_TheQuadCurvFuncOfTheQuadCurvExactHInter"
type
  IntCurveSurfaceTheQuadCurvExactHInter* {.
      importcpp: "IntCurveSurface_TheQuadCurvExactHInter",
      header: "IntCurveSurface_TheQuadCurvExactHInter.hxx", bycopy.} = object ## !
                                                                         ## Provides the signed
                                                                         ## distance
                                                                         ## function : Q(w)
                                                                         ## ! and its first
                                                                         ## derivative
                                                                         ## dQ(w)/dw


proc constructIntCurveSurfaceTheQuadCurvExactHInter*(
    s: Handle[Adaptor3dHSurface]; c: Handle[Adaptor3dHCurve]): IntCurveSurfaceTheQuadCurvExactHInter {.
    constructor, importcpp: "IntCurveSurface_TheQuadCurvExactHInter(@)",
    header: "IntCurveSurface_TheQuadCurvExactHInter.hxx".}
proc isDone*(this: IntCurveSurfaceTheQuadCurvExactHInter): bool {.noSideEffect,
    importcpp: "IsDone", header: "IntCurveSurface_TheQuadCurvExactHInter.hxx".}
proc nbRoots*(this: IntCurveSurfaceTheQuadCurvExactHInter): int {.noSideEffect,
    importcpp: "NbRoots", header: "IntCurveSurface_TheQuadCurvExactHInter.hxx".}
proc root*(this: IntCurveSurfaceTheQuadCurvExactHInter; index: int): float {.
    noSideEffect, importcpp: "Root",
    header: "IntCurveSurface_TheQuadCurvExactHInter.hxx".}
proc nbIntervals*(this: IntCurveSurfaceTheQuadCurvExactHInter): int {.noSideEffect,
    importcpp: "NbIntervals", header: "IntCurveSurface_TheQuadCurvExactHInter.hxx".}
proc intervals*(this: IntCurveSurfaceTheQuadCurvExactHInter; index: int;
               u1: var float; u2: var float) {.noSideEffect, importcpp: "Intervals",
    header: "IntCurveSurface_TheQuadCurvExactHInter.hxx".}
