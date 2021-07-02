##  Created on: 1995-06-06
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1995-1999 Matra Datavision
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

## !!!Ignored construct:  # _BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox_HeaderFile [NewLine] # _BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_Address . hxx > [NewLine] # < gp_Pnt . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < gp_Vec . hxx > [NewLine] # < IntImp_ConstIsoparametric . hxx > [NewLine] # < math_FunctionSetWithDerivatives . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < math_Vector . hxx > [NewLine] # < TColStd_Array1OfReal . hxx > [NewLine] # < gp_Dir . hxx > [NewLine] # < gp_Dir2d . hxx > [NewLine] class StdFail_UndefinedDerivative ;
## Error: did not expect <!!!

discard "forward decl of Standard_ConstructionError"
discard "forward decl of BRepAdaptor_Surface"
discard "forward decl of BRepApprox_SurfaceTool"
discard "forward decl of math_Matrix"
type
  BRepApproxTheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox* {.importcpp: "BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox", header: "BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx",
      bycopy.} = object of MathFunctionSetWithDerivatives


proc constructBRepApproxTheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox*(
    s1: BRepAdaptorSurface; s2: BRepAdaptorSurface): BRepApproxTheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox {.
    constructor, importcpp: "BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox(@)",
    header: "BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc nbVariables*(this: BRepApproxTheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox): StandardInteger {.
    noSideEffect, importcpp: "NbVariables",
    header: "BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc nbEquations*(this: BRepApproxTheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox): StandardInteger {.
    noSideEffect, importcpp: "NbEquations",
    header: "BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc value*(this: var BRepApproxTheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox;
           x: MathVector; f: var MathVector): StandardBoolean {.importcpp: "Value",
    header: "BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc derivatives*(this: var BRepApproxTheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox;
                 x: MathVector; d: var MathMatrix): StandardBoolean {.
    importcpp: "Derivatives",
    header: "BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc values*(this: var BRepApproxTheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox;
            x: MathVector; f: var MathVector; d: var MathMatrix): StandardBoolean {.
    importcpp: "Values",
    header: "BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc computeParameters*(this: var BRepApproxTheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox;
                       choixIso: IntImpConstIsoparametric;
                       param: TColStdArray1OfReal; uVap: var MathVector;
                       bornInf: var MathVector; bornSup: var MathVector;
                       tolerance: var MathVector) {.importcpp: "ComputeParameters",
    header: "BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc root*(this: BRepApproxTheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox): StandardReal {.
    noSideEffect, importcpp: "Root",
    header: "BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc point*(this: BRepApproxTheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox): GpPnt {.
    noSideEffect, importcpp: "Point",
    header: "BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc isTangent*(this: var BRepApproxTheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox;
               uVap: MathVector; param: var TColStdArray1OfReal;
               bestChoix: var IntImpConstIsoparametric): StandardBoolean {.
    importcpp: "IsTangent",
    header: "BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc direction*(this: BRepApproxTheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox): GpDir {.
    noSideEffect, importcpp: "Direction",
    header: "BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc directionOnS1*(this: BRepApproxTheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox): GpDir2d {.
    noSideEffect, importcpp: "DirectionOnS1",
    header: "BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc directionOnS2*(this: BRepApproxTheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox): GpDir2d {.
    noSideEffect, importcpp: "DirectionOnS2",
    header: "BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc auxillarSurface1*(this: BRepApproxTheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox): BRepAdaptorSurface {.
    noSideEffect, importcpp: "AuxillarSurface1",
    header: "BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc auxillarSurface2*(this: BRepApproxTheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox): BRepAdaptorSurface {.
    noSideEffect, importcpp: "AuxillarSurface2",
    header: "BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
## !!!Ignored construct:  # ThePSurface BRepAdaptor_Surface [NewLine] # ThePSurface_hxx < BRepAdaptor_Surface . hxx > [NewLine] # ThePSurfaceTool BRepApprox_SurfaceTool [NewLine] # ThePSurfaceTool_hxx < BRepApprox_SurfaceTool . hxx > [NewLine] # IntImp_ZerParFunc BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox [NewLine] # IntImp_ZerParFunc_hxx < BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox . hxx > [NewLine] # < IntImp_ZerParFunc . lxx > [NewLine] # ThePSurface [NewLine] # ThePSurface_hxx [NewLine] # ThePSurfaceTool [NewLine] # ThePSurfaceTool_hxx [NewLine] # IntImp_ZerParFunc [NewLine] # IntImp_ZerParFunc_hxx [NewLine] #  _BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox_HeaderFile
## Error: did not expect <!!!


