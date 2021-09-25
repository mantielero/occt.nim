##  Created on: 1994-09-06
##  Created by: Yves FRICAUD
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of Geom2d_Curve"
type
  Geom2dLPropCurAndInf2d* {.importcpp: "Geom2dLProp_CurAndInf2d",
                           header: "Geom2dLProp_CurAndInf2d.hxx", bycopy.} = object of LPropCurAndInf ##
                                                                                               ## !
                                                                                               ## Initializes
                                                                                               ## the
                                                                                               ## framework.
                                                                                               ##
                                                                                               ## !
                                                                                               ## Note:
                                                                                               ## The
                                                                                               ## curve
                                                                                               ## on
                                                                                               ## which
                                                                                               ## the
                                                                                               ## local
                                                                                               ## properties
                                                                                               ## are
                                                                                               ##
                                                                                               ## !
                                                                                               ## computed
                                                                                               ## is
                                                                                               ## defined
                                                                                               ## using
                                                                                               ## one
                                                                                               ## of
                                                                                               ## the
                                                                                               ## following
                                                                                               ##
                                                                                               ## !
                                                                                               ## functions:
                                                                                               ## Perform,
                                                                                               ## PerformCurExt
                                                                                               ## or
                                                                                               ## PerformInf.


proc constructGeom2dLPropCurAndInf2d*(): Geom2dLPropCurAndInf2d {.constructor,
    importcpp: "Geom2dLProp_CurAndInf2d(@)", header: "Geom2dLProp_CurAndInf2d.hxx".}
proc perform*(this: var Geom2dLPropCurAndInf2d; c: Handle[Geom2dCurve]) {.
    importcpp: "Perform", header: "Geom2dLProp_CurAndInf2d.hxx".}
proc performCurExt*(this: var Geom2dLPropCurAndInf2d; c: Handle[Geom2dCurve]) {.
    importcpp: "PerformCurExt", header: "Geom2dLProp_CurAndInf2d.hxx".}
proc performInf*(this: var Geom2dLPropCurAndInf2d; c: Handle[Geom2dCurve]) {.
    importcpp: "PerformInf", header: "Geom2dLProp_CurAndInf2d.hxx".}
proc isDone*(this: Geom2dLPropCurAndInf2d): bool {.noSideEffect, importcpp: "IsDone",
    header: "Geom2dLProp_CurAndInf2d.hxx".}
