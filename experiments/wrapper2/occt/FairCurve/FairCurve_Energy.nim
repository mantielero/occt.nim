##  Created on: 1996-03-06
##  Created by: Philippe MANGIN
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TColgp/TColgp_HArray1OfPnt2d,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../TColgp/TColgp_Array1OfXY, ../math/math_Vector,
  ../math/math_MultipleVarFunctionWithHessian, ../Standard/Standard_Real

discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt2d"
type
  FairCurve_Energy* {.importcpp: "FairCurve_Energy",
                     header: "FairCurve_Energy.hxx", bycopy.} = object of math_MultipleVarFunctionWithHessian ##
                                                                                                       ## !
                                                                                                       ## returns
                                                                                                       ## the
                                                                                                       ## number
                                                                                                       ## of
                                                                                                       ## variables
                                                                                                       ## of
                                                                                                       ## the
                                                                                                       ## energy.
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## Angles
                                                                                                       ## corresspond
                                                                                                       ## to
                                                                                                       ## the
                                                                                                       ## Ox
                                                                                                       ## axis
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## ConstrOrder1(2)
                                                                                                       ## can
                                                                                                       ## be
                                                                                                       ## equal
                                                                                                       ## to
                                                                                                       ## 0,
                                                                                                       ## 1
                                                                                                       ## or
                                                                                                       ## 2


proc NbVariables*(this: FairCurve_Energy): Standard_Integer {.noSideEffect,
    importcpp: "NbVariables", header: "FairCurve_Energy.hxx".}
proc Value*(this: var FairCurve_Energy; X: math_Vector; E: var Standard_Real): Standard_Boolean {.
    importcpp: "Value", header: "FairCurve_Energy.hxx".}
proc Gradient*(this: var FairCurve_Energy; X: math_Vector; G: var math_Vector): Standard_Boolean {.
    importcpp: "Gradient", header: "FairCurve_Energy.hxx".}
proc Values*(this: var FairCurve_Energy; X: math_Vector; E: var Standard_Real;
            G: var math_Vector): Standard_Boolean {.importcpp: "Values",
    header: "FairCurve_Energy.hxx".}
proc Values*(this: var FairCurve_Energy; X: math_Vector; E: var Standard_Real;
            G: var math_Vector; H: var math_Matrix): Standard_Boolean {.
    importcpp: "Values", header: "FairCurve_Energy.hxx".}
proc Variable*(this: FairCurve_Energy; X: var math_Vector): Standard_Boolean {.
    noSideEffect, importcpp: "Variable", header: "FairCurve_Energy.hxx".}
proc Poles*(this: FairCurve_Energy): handle[TColgp_HArray1OfPnt2d] {.noSideEffect,
    importcpp: "Poles", header: "FairCurve_Energy.hxx".}