##  Created on: 1992-04-03
##  Created by: Laurent BUCHARD
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
  ../Standard/Standard_Handle, ../gp/gp_Pnt2d, ../Standard/Standard_Real,
  IntRes2d_Transition, ../Standard/Standard_Boolean

discard "forward decl of gp_Pnt2d"
discard "forward decl of IntRes2d_Transition"
type
  IntRes2d_IntersectionPoint* {.importcpp: "IntRes2d_IntersectionPoint",
                               header: "IntRes2d_IntersectionPoint.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Empty
                                                                                      ## constructor.


proc constructIntRes2d_IntersectionPoint*(): IntRes2d_IntersectionPoint {.
    constructor, importcpp: "IntRes2d_IntersectionPoint(@)",
    header: "IntRes2d_IntersectionPoint.hxx".}
proc constructIntRes2d_IntersectionPoint*(P: gp_Pnt2d; Uc1: Standard_Real;
    Uc2: Standard_Real; Trans1: IntRes2d_Transition; Trans2: IntRes2d_Transition;
    ReversedFlag: Standard_Boolean): IntRes2d_IntersectionPoint {.constructor,
    importcpp: "IntRes2d_IntersectionPoint(@)",
    header: "IntRes2d_IntersectionPoint.hxx".}
proc SetValues*(this: var IntRes2d_IntersectionPoint; P: gp_Pnt2d; Uc1: Standard_Real;
               Uc2: Standard_Real; Trans1: IntRes2d_Transition;
               Trans2: IntRes2d_Transition; ReversedFlag: Standard_Boolean) {.
    importcpp: "SetValues", header: "IntRes2d_IntersectionPoint.hxx".}
proc Value*(this: IntRes2d_IntersectionPoint): gp_Pnt2d {.noSideEffect,
    importcpp: "Value", header: "IntRes2d_IntersectionPoint.hxx".}
proc ParamOnFirst*(this: IntRes2d_IntersectionPoint): Standard_Real {.noSideEffect,
    importcpp: "ParamOnFirst", header: "IntRes2d_IntersectionPoint.hxx".}
proc ParamOnSecond*(this: IntRes2d_IntersectionPoint): Standard_Real {.noSideEffect,
    importcpp: "ParamOnSecond", header: "IntRes2d_IntersectionPoint.hxx".}
proc TransitionOfFirst*(this: IntRes2d_IntersectionPoint): IntRes2d_Transition {.
    noSideEffect, importcpp: "TransitionOfFirst",
    header: "IntRes2d_IntersectionPoint.hxx".}
proc TransitionOfSecond*(this: IntRes2d_IntersectionPoint): IntRes2d_Transition {.
    noSideEffect, importcpp: "TransitionOfSecond",
    header: "IntRes2d_IntersectionPoint.hxx".}