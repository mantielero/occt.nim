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
  ../Standard/Standard_Handle, ../gp/gp_Pnt, ../Standard/Standard_Real,
  IntCurveSurface_TransitionOnCurve

discard "forward decl of gp_Pnt"
type
  IntCurveSurface_IntersectionPoint* {.importcpp: "IntCurveSurface_IntersectionPoint", header: "IntCurveSurface_IntersectionPoint.hxx",
                                      bycopy.} = object ## ! Empty Constructor.


proc constructIntCurveSurface_IntersectionPoint*(): IntCurveSurface_IntersectionPoint {.
    constructor, importcpp: "IntCurveSurface_IntersectionPoint(@)",
    header: "IntCurveSurface_IntersectionPoint.hxx".}
proc constructIntCurveSurface_IntersectionPoint*(P: gp_Pnt; USurf: Standard_Real;
    VSurf: Standard_Real; UCurv: Standard_Real;
    TrCurv: IntCurveSurface_TransitionOnCurve): IntCurveSurface_IntersectionPoint {.
    constructor, importcpp: "IntCurveSurface_IntersectionPoint(@)",
    header: "IntCurveSurface_IntersectionPoint.hxx".}
proc SetValues*(this: var IntCurveSurface_IntersectionPoint; P: gp_Pnt;
               USurf: Standard_Real; VSurf: Standard_Real; UCurv: Standard_Real;
               TrCurv: IntCurveSurface_TransitionOnCurve) {.
    importcpp: "SetValues", header: "IntCurveSurface_IntersectionPoint.hxx".}
proc Values*(this: IntCurveSurface_IntersectionPoint; P: var gp_Pnt;
            USurf: var Standard_Real; VSurf: var Standard_Real;
            UCurv: var Standard_Real; TrCurv: var IntCurveSurface_TransitionOnCurve) {.
    noSideEffect, importcpp: "Values",
    header: "IntCurveSurface_IntersectionPoint.hxx".}
proc Pnt*(this: IntCurveSurface_IntersectionPoint): gp_Pnt {.noSideEffect,
    importcpp: "Pnt", header: "IntCurveSurface_IntersectionPoint.hxx".}
proc U*(this: IntCurveSurface_IntersectionPoint): Standard_Real {.noSideEffect,
    importcpp: "U", header: "IntCurveSurface_IntersectionPoint.hxx".}
proc V*(this: IntCurveSurface_IntersectionPoint): Standard_Real {.noSideEffect,
    importcpp: "V", header: "IntCurveSurface_IntersectionPoint.hxx".}
proc W*(this: IntCurveSurface_IntersectionPoint): Standard_Real {.noSideEffect,
    importcpp: "W", header: "IntCurveSurface_IntersectionPoint.hxx".}
proc Transition*(this: IntCurveSurface_IntersectionPoint): IntCurveSurface_TransitionOnCurve {.
    noSideEffect, importcpp: "Transition",
    header: "IntCurveSurface_IntersectionPoint.hxx".}
proc Dump*(this: IntCurveSurface_IntersectionPoint) {.noSideEffect,
    importcpp: "Dump", header: "IntCurveSurface_IntersectionPoint.hxx".}