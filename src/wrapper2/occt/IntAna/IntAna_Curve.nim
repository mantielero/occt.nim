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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../GeomAbs/GeomAbs_SurfaceType, ../gp/gp_Ax3,
  ../TColStd/TColStd_ListOfReal

## ! Definition of a parametric Curve which is the result
## ! of the intersection between two quadrics.

type
  IntAna_Curve* {.importcpp: "IntAna_Curve", header: "IntAna_Curve.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Empty
                                                                                   ## Constructor
                                                                                   ##
                                                                                   ## !
                                                                                   ## Protected
                                                                                   ## function.
    ## ! Internal fields defining the default domain
    ## ! Trim boundaries


proc constructIntAna_Curve*(): IntAna_Curve {.constructor,
    importcpp: "IntAna_Curve(@)", header: "IntAna_Curve.hxx".}
proc SetCylinderQuadValues*(this: var IntAna_Curve; Cylinder: gp_Cylinder;
                           Qxx: Standard_Real; Qyy: Standard_Real;
                           Qzz: Standard_Real; Qxy: Standard_Real;
                           Qxz: Standard_Real; Qyz: Standard_Real;
                           Qx: Standard_Real; Qy: Standard_Real; Qz: Standard_Real;
                           Q1: Standard_Real; Tol: Standard_Real;
                           DomInf: Standard_Real; DomSup: Standard_Real;
                           TwoZForATheta: Standard_Boolean;
                           ZIsPositive: Standard_Boolean) {.
    importcpp: "SetCylinderQuadValues", header: "IntAna_Curve.hxx".}
proc SetConeQuadValues*(this: var IntAna_Curve; Cone: gp_Cone; Qxx: Standard_Real;
                       Qyy: Standard_Real; Qzz: Standard_Real; Qxy: Standard_Real;
                       Qxz: Standard_Real; Qyz: Standard_Real; Qx: Standard_Real;
                       Qy: Standard_Real; Qz: Standard_Real; Q1: Standard_Real;
                       Tol: Standard_Real; DomInf: Standard_Real;
                       DomSup: Standard_Real; TwoZForATheta: Standard_Boolean;
                       ZIsPositive: Standard_Boolean) {.
    importcpp: "SetConeQuadValues", header: "IntAna_Curve.hxx".}
proc IsOpen*(this: IntAna_Curve): Standard_Boolean {.noSideEffect,
    importcpp: "IsOpen", header: "IntAna_Curve.hxx".}
proc Domain*(this: IntAna_Curve; theFirst: var Standard_Real;
            theLast: var Standard_Real) {.noSideEffect, importcpp: "Domain",
                                       header: "IntAna_Curve.hxx".}
proc IsConstant*(this: IntAna_Curve): Standard_Boolean {.noSideEffect,
    importcpp: "IsConstant", header: "IntAna_Curve.hxx".}
proc IsFirstOpen*(this: IntAna_Curve): Standard_Boolean {.noSideEffect,
    importcpp: "IsFirstOpen", header: "IntAna_Curve.hxx".}
proc IsLastOpen*(this: IntAna_Curve): Standard_Boolean {.noSideEffect,
    importcpp: "IsLastOpen", header: "IntAna_Curve.hxx".}
proc Value*(this: var IntAna_Curve; Theta: Standard_Real): gp_Pnt {.importcpp: "Value",
    header: "IntAna_Curve.hxx".}
proc D1u*(this: var IntAna_Curve; Theta: Standard_Real; P: var gp_Pnt; V: var gp_Vec): Standard_Boolean {.
    importcpp: "D1u", header: "IntAna_Curve.hxx".}
proc FindParameter*(this: IntAna_Curve; P: gp_Pnt; theParams: var TColStd_ListOfReal) {.
    noSideEffect, importcpp: "FindParameter", header: "IntAna_Curve.hxx".}
proc SetIsFirstOpen*(this: var IntAna_Curve; Flag: Standard_Boolean) {.
    importcpp: "SetIsFirstOpen", header: "IntAna_Curve.hxx".}
proc SetIsLastOpen*(this: var IntAna_Curve; Flag: Standard_Boolean) {.
    importcpp: "SetIsLastOpen", header: "IntAna_Curve.hxx".}
proc SetDomain*(this: var IntAna_Curve; theFirst: Standard_Real;
               theLast: Standard_Real) {.importcpp: "SetDomain",
                                       header: "IntAna_Curve.hxx".}