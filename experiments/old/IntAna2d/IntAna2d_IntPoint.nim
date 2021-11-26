##  Created on: 1991-02-20
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1991-1999 Matra Datavision
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

discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Pnt2d"
type
  IntAna2dIntPoint* {.importcpp: "IntAna2d_IntPoint",
                     header: "IntAna2d_IntPoint.hxx", bycopy.} = object ## ! Create an intersection point between 2 parametric 2d lines.
                                                                   ## ! X,Y are the coordinate of the point. U1 is the parameter
                                                                   ## ! on the first element, U2 the parameter on the second one.


proc constructIntAna2dIntPoint*(x: cfloat; y: cfloat; u1: cfloat; u2: cfloat): IntAna2dIntPoint {.
    constructor, importcpp: "IntAna2d_IntPoint(@)", header: "IntAna2d_IntPoint.hxx".}
proc constructIntAna2dIntPoint*(x: cfloat; y: cfloat; u1: cfloat): IntAna2dIntPoint {.
    constructor, importcpp: "IntAna2d_IntPoint(@)", header: "IntAna2d_IntPoint.hxx".}
proc constructIntAna2dIntPoint*(): IntAna2dIntPoint {.constructor,
    importcpp: "IntAna2d_IntPoint(@)", header: "IntAna2d_IntPoint.hxx".}
proc setValue*(this: var IntAna2dIntPoint; x: cfloat; y: cfloat; u1: cfloat; u2: cfloat) {.
    importcpp: "SetValue", header: "IntAna2d_IntPoint.hxx".}
proc setValue*(this: var IntAna2dIntPoint; x: cfloat; y: cfloat; u1: cfloat) {.
    importcpp: "SetValue", header: "IntAna2d_IntPoint.hxx".}
proc value*(this: IntAna2dIntPoint): Pnt2d {.noSideEffect, importcpp: "Value",
    header: "IntAna2d_IntPoint.hxx".}
proc secondIsImplicit*(this: IntAna2dIntPoint): bool {.noSideEffect,
    importcpp: "SecondIsImplicit", header: "IntAna2d_IntPoint.hxx".}
proc paramOnFirst*(this: IntAna2dIntPoint): cfloat {.noSideEffect,
    importcpp: "ParamOnFirst", header: "IntAna2d_IntPoint.hxx".}
proc paramOnSecond*(this: IntAna2dIntPoint): cfloat {.noSideEffect,
    importcpp: "ParamOnSecond", header: "IntAna2d_IntPoint.hxx".}

























