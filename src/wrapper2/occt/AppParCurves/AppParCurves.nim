##  Created on: 1991-04-11
##  Created by: Laurent PAINNOT
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
  ../Standard/Standard_Handle, ../Standard/Standard_Integer, ../math/math_Vector,
  ../Standard/Standard_Real, ../math/math_IntegerVector

discard "forward decl of math_Matrix"
discard "forward decl of AppParCurves_MultiPoint"
discard "forward decl of AppParCurves_MultiCurve"
discard "forward decl of AppParCurves_MultiBSpCurve"
discard "forward decl of AppParCurves_ConstraintCouple"
discard "forward decl of AppParCurves_LeastSquare"
discard "forward decl of AppParCurves_ResolConstraint"
discard "forward decl of AppParCurves_Function"
discard "forward decl of AppParCurves_BSpFunction"
discard "forward decl of AppParCurves_Gradient"
discard "forward decl of AppParCurves_Gradient_BFGS"
discard "forward decl of AppParCurves_ParLeastSquare"
discard "forward decl of AppParCurves_ResConstraint"
discard "forward decl of AppParCurves_ParFunction"
discard "forward decl of AppParCurves_BSpGradient"
discard "forward decl of AppParCurves_BSpGradient_BFGS"
discard "forward decl of AppParCurves_BSpParLeastSquare"
discard "forward decl of AppParCurves_BSpParFunction"
type
  AppParCurves* {.importcpp: "AppParCurves", header: "AppParCurves.hxx", bycopy.} = object


proc BernsteinMatrix*(NbPoles: Standard_Integer; U: math_Vector; A: var math_Matrix) {.
    importcpp: "AppParCurves::BernsteinMatrix(@)", header: "AppParCurves.hxx".}
proc Bernstein*(NbPoles: Standard_Integer; U: math_Vector; A: var math_Matrix;
               DA: var math_Matrix) {.importcpp: "AppParCurves::Bernstein(@)",
                                   header: "AppParCurves.hxx".}
proc SecondDerivativeBernstein*(U: Standard_Real; DDA: var math_Vector) {.
    importcpp: "AppParCurves::SecondDerivativeBernstein(@)",
    header: "AppParCurves.hxx".}
proc SplineFunction*(NbPoles: Standard_Integer; Degree: Standard_Integer;
                    Parameters: math_Vector; FlatKnots: math_Vector;
                    A: var math_Matrix; DA: var math_Matrix;
                    Index: var math_IntegerVector) {.
    importcpp: "AppParCurves::SplineFunction(@)", header: "AppParCurves.hxx".}