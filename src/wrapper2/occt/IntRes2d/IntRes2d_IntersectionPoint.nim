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

discard "forward decl of gp_Pnt2d"
discard "forward decl of IntRes2d_Transition"
type
  IntRes2dIntersectionPoint* {.importcpp: "IntRes2d_IntersectionPoint",
                              header: "IntRes2d_IntersectionPoint.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Empty
                                                                                     ## constructor.


proc constructIntRes2dIntersectionPoint*(): IntRes2dIntersectionPoint {.
    constructor, importcpp: "IntRes2d_IntersectionPoint(@)",
    header: "IntRes2d_IntersectionPoint.hxx".}
proc constructIntRes2dIntersectionPoint*(p: GpPnt2d; uc1: StandardReal;
                                        uc2: StandardReal;
                                        trans1: IntRes2dTransition;
                                        trans2: IntRes2dTransition;
                                        reversedFlag: StandardBoolean): IntRes2dIntersectionPoint {.
    constructor, importcpp: "IntRes2d_IntersectionPoint(@)",
    header: "IntRes2d_IntersectionPoint.hxx".}
proc setValues*(this: var IntRes2dIntersectionPoint; p: GpPnt2d; uc1: StandardReal;
               uc2: StandardReal; trans1: IntRes2dTransition;
               trans2: IntRes2dTransition; reversedFlag: StandardBoolean) {.
    importcpp: "SetValues", header: "IntRes2d_IntersectionPoint.hxx".}
proc value*(this: IntRes2dIntersectionPoint): GpPnt2d {.noSideEffect,
    importcpp: "Value", header: "IntRes2d_IntersectionPoint.hxx".}
proc paramOnFirst*(this: IntRes2dIntersectionPoint): StandardReal {.noSideEffect,
    importcpp: "ParamOnFirst", header: "IntRes2d_IntersectionPoint.hxx".}
proc paramOnSecond*(this: IntRes2dIntersectionPoint): StandardReal {.noSideEffect,
    importcpp: "ParamOnSecond", header: "IntRes2d_IntersectionPoint.hxx".}
proc transitionOfFirst*(this: IntRes2dIntersectionPoint): IntRes2dTransition {.
    noSideEffect, importcpp: "TransitionOfFirst",
    header: "IntRes2d_IntersectionPoint.hxx".}
proc transitionOfSecond*(this: IntRes2dIntersectionPoint): IntRes2dTransition {.
    noSideEffect, importcpp: "TransitionOfSecond",
    header: "IntRes2d_IntersectionPoint.hxx".}

