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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../TColStd/TColStd_SequenceOfReal, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HSurfaceTool"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of IntCurveSurface_TheHCurveTool"
discard "forward decl of IntCurveSurface_TheQuadCurvFuncOfTheQuadCurvExactHInter"
type
  IntCurveSurface_TheQuadCurvExactHInter* {.
      importcpp: "IntCurveSurface_TheQuadCurvExactHInter",
      header: "IntCurveSurface_TheQuadCurvExactHInter.hxx", bycopy.} = object ## !
                                                                         ## Provides the signed
                                                                         ## distance
                                                                         ## function : Q(w)
                                                                         ## ! and its first
                                                                         ## derivative
                                                                         ## dQ(w)/dw


proc constructIntCurveSurface_TheQuadCurvExactHInter*(
    S: handle[Adaptor3d_HSurface]; C: handle[Adaptor3d_HCurve]): IntCurveSurface_TheQuadCurvExactHInter {.
    constructor, importcpp: "IntCurveSurface_TheQuadCurvExactHInter(@)",
    header: "IntCurveSurface_TheQuadCurvExactHInter.hxx".}
proc IsDone*(this: IntCurveSurface_TheQuadCurvExactHInter): Standard_Boolean {.
    noSideEffect, importcpp: "IsDone",
    header: "IntCurveSurface_TheQuadCurvExactHInter.hxx".}
proc NbRoots*(this: IntCurveSurface_TheQuadCurvExactHInter): Standard_Integer {.
    noSideEffect, importcpp: "NbRoots",
    header: "IntCurveSurface_TheQuadCurvExactHInter.hxx".}
proc Root*(this: IntCurveSurface_TheQuadCurvExactHInter; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Root",
    header: "IntCurveSurface_TheQuadCurvExactHInter.hxx".}
proc NbIntervals*(this: IntCurveSurface_TheQuadCurvExactHInter): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals",
    header: "IntCurveSurface_TheQuadCurvExactHInter.hxx".}
proc Intervals*(this: IntCurveSurface_TheQuadCurvExactHInter;
               Index: Standard_Integer; U1: var Standard_Real; U2: var Standard_Real) {.
    noSideEffect, importcpp: "Intervals",
    header: "IntCurveSurface_TheQuadCurvExactHInter.hxx".}