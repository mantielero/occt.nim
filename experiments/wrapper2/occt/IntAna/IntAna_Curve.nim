##  Created on: 1992-06-30
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

## ! Definition of a parametric Curve which is the result
## ! of the intersection between two quadrics.

type
  IntAnaCurve* {.importcpp: "IntAna_Curve", header: "IntAna_Curve.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## Empty
                                                                                  ## Constructor
                                                                                  ##
                                                                                  ## !
                                                                                  ## Protected
                                                                                  ## function.
    ## ! Internal fields defining the default domain
    ## ! Trim boundaries


proc constructIntAnaCurve*(): IntAnaCurve {.constructor,
    importcpp: "IntAna_Curve(@)", header: "IntAna_Curve.hxx".}
proc setCylinderQuadValues*(this: var IntAnaCurve; cylinder: Cylinder; qxx: float;
                           qyy: float; qzz: float; qxy: float; qxz: float; qyz: float;
                           qx: float; qy: float; qz: float; q1: float; tol: float;
                           domInf: float; domSup: float; twoZForATheta: bool;
                           zIsPositive: bool) {.
    importcpp: "SetCylinderQuadValues", header: "IntAna_Curve.hxx".}
proc setConeQuadValues*(this: var IntAnaCurve; cone: Cone; qxx: float; qyy: float;
                       qzz: float; qxy: float; qxz: float; qyz: float; qx: float;
                       qy: float; qz: float; q1: float; tol: float; domInf: float;
                       domSup: float; twoZForATheta: bool; zIsPositive: bool) {.
    importcpp: "SetConeQuadValues", header: "IntAna_Curve.hxx".}
proc isOpen*(this: IntAnaCurve): bool {.noSideEffect, importcpp: "IsOpen",
                                    header: "IntAna_Curve.hxx".}
proc domain*(this: IntAnaCurve; theFirst: var float; theLast: var float) {.noSideEffect,
    importcpp: "Domain", header: "IntAna_Curve.hxx".}
proc isConstant*(this: IntAnaCurve): bool {.noSideEffect, importcpp: "IsConstant",
                                        header: "IntAna_Curve.hxx".}
proc isFirstOpen*(this: IntAnaCurve): bool {.noSideEffect, importcpp: "IsFirstOpen",
    header: "IntAna_Curve.hxx".}
proc isLastOpen*(this: IntAnaCurve): bool {.noSideEffect, importcpp: "IsLastOpen",
                                        header: "IntAna_Curve.hxx".}
proc value*(this: var IntAnaCurve; theta: float): Pnt {.importcpp: "Value",
    header: "IntAna_Curve.hxx".}
proc d1u*(this: var IntAnaCurve; theta: float; p: var Pnt; v: var Vec): bool {.
    importcpp: "D1u", header: "IntAna_Curve.hxx".}
proc findParameter*(this: IntAnaCurve; p: Pnt; theParams: var TColStdListOfReal) {.
    noSideEffect, importcpp: "FindParameter", header: "IntAna_Curve.hxx".}
proc setIsFirstOpen*(this: var IntAnaCurve; flag: bool) {.importcpp: "SetIsFirstOpen",
    header: "IntAna_Curve.hxx".}
proc setIsLastOpen*(this: var IntAnaCurve; flag: bool) {.importcpp: "SetIsLastOpen",
    header: "IntAna_Curve.hxx".}
proc setDomain*(this: var IntAnaCurve; theFirst: float; theLast: float) {.
    importcpp: "SetDomain", header: "IntAna_Curve.hxx".}
