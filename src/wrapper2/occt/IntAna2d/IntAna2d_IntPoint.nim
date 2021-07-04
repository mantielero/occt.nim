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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real, ../gp/gp_Pnt2d,
  ../Standard/Standard_Boolean

discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Pnt2d"
type
  IntAna2d_IntPoint* {.importcpp: "IntAna2d_IntPoint",
                      header: "IntAna2d_IntPoint.hxx", bycopy.} = object ## ! Create an intersection point between 2 parametric 2d lines.
                                                                    ## ! X,Y are the coordinate of the point. U1 is the parameter
                                                                    ## ! on the first element, U2 the parameter on the second one.


proc constructIntAna2d_IntPoint*(X: Standard_Real; Y: Standard_Real;
                                U1: Standard_Real; U2: Standard_Real): IntAna2d_IntPoint {.
    constructor, importcpp: "IntAna2d_IntPoint(@)", header: "IntAna2d_IntPoint.hxx".}
proc constructIntAna2d_IntPoint*(X: Standard_Real; Y: Standard_Real;
                                U1: Standard_Real): IntAna2d_IntPoint {.
    constructor, importcpp: "IntAna2d_IntPoint(@)", header: "IntAna2d_IntPoint.hxx".}
proc constructIntAna2d_IntPoint*(): IntAna2d_IntPoint {.constructor,
    importcpp: "IntAna2d_IntPoint(@)", header: "IntAna2d_IntPoint.hxx".}
proc SetValue*(this: var IntAna2d_IntPoint; X: Standard_Real; Y: Standard_Real;
              U1: Standard_Real; U2: Standard_Real) {.importcpp: "SetValue",
    header: "IntAna2d_IntPoint.hxx".}
proc SetValue*(this: var IntAna2d_IntPoint; X: Standard_Real; Y: Standard_Real;
              U1: Standard_Real) {.importcpp: "SetValue",
                                 header: "IntAna2d_IntPoint.hxx".}
proc Value*(this: IntAna2d_IntPoint): gp_Pnt2d {.noSideEffect, importcpp: "Value",
    header: "IntAna2d_IntPoint.hxx".}
proc SecondIsImplicit*(this: IntAna2d_IntPoint): Standard_Boolean {.noSideEffect,
    importcpp: "SecondIsImplicit", header: "IntAna2d_IntPoint.hxx".}
proc ParamOnFirst*(this: IntAna2d_IntPoint): Standard_Real {.noSideEffect,
    importcpp: "ParamOnFirst", header: "IntAna2d_IntPoint.hxx".}
proc ParamOnSecond*(this: IntAna2d_IntPoint): Standard_Real {.noSideEffect,
    importcpp: "ParamOnSecond", header: "IntAna2d_IntPoint.hxx".}