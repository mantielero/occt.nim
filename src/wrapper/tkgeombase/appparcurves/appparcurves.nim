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


proc bernsteinMatrix*(nbPoles: cint; u: MathVector; a: var MathMatrix) {.cdecl,
    importcpp: "AppParCurves::BernsteinMatrix(@)", dynlib: tkgeombase.}
proc bernstein*(nbPoles: cint; u: MathVector; a: var MathMatrix; da: var MathMatrix) {.
    cdecl, importcpp: "AppParCurves::Bernstein(@)", dynlib: tkgeombase.}
proc secondDerivativeBernstein*(u: cfloat; dda: var MathVector) {.cdecl,
    importcpp: "AppParCurves::SecondDerivativeBernstein(@)", dynlib: tkgeombase.}
proc splineFunction*(nbPoles: cint; degree: cint; parameters: MathVector;
                    flatKnots: MathVector; a: var MathMatrix; da: var MathMatrix;
                    index: var MathIntegerVector) {.cdecl,
    importcpp: "AppParCurves::SplineFunction(@)", dynlib: tkgeombase.}