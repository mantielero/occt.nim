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

## !!!Ignored construct:  # _BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox_HeaderFile [NewLine] # _BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Standard/Standard_Address.hxx [NewLine] # ../gp/gp_Pnt.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../gp/gp_Vec.hxx [NewLine] # ../IntImp/IntImp_ConstIsoparametric.hxx [NewLine] # ../math/math_FunctionSetWithDerivatives.hxx [NewLine] # ../Standard/Standard_Integer.hxx [NewLine] # ../math/math_Vector.hxx [NewLine] # ../TColStd/TColStd_Array1OfReal.hxx [NewLine] # ../gp/gp_Dir.hxx [NewLine] # ../gp/gp_Dir2d.hxx [NewLine] class StdFail_UndefinedDerivative ;
## Error: did not expect <!!!

discard "forward decl of Standard_ConstructionError"
discard "forward decl of BRepAdaptor_Surface"
discard "forward decl of BRepApprox_SurfaceTool"
discard "forward decl of math_Matrix"
type
  BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox* {.importcpp: "BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox", header: "BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx",
      bycopy.} = object of math_FunctionSetWithDerivatives


proc constructBRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox*(
    S1: BRepAdaptor_Surface; S2: BRepAdaptor_Surface): BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox {.
    constructor, importcpp: "BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox(@)",
    header: "BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc NbVariables*(this: BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox): Standard_Integer {.
    noSideEffect, importcpp: "NbVariables",
    header: "BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc NbEquations*(this: BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox): Standard_Integer {.
    noSideEffect, importcpp: "NbEquations",
    header: "BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc Value*(this: var BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox;
           X: math_Vector; F: var math_Vector): Standard_Boolean {.importcpp: "Value",
    header: "BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc Derivatives*(this: var BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox;
                 X: math_Vector; D: var math_Matrix): Standard_Boolean {.
    importcpp: "Derivatives",
    header: "BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc Values*(this: var BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox;
            X: math_Vector; F: var math_Vector; D: var math_Matrix): Standard_Boolean {.
    importcpp: "Values",
    header: "BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc ComputeParameters*(this: var BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox;
                       ChoixIso: IntImp_ConstIsoparametric;
                       Param: TColStd_Array1OfReal; UVap: var math_Vector;
                       BornInf: var math_Vector; BornSup: var math_Vector;
                       Tolerance: var math_Vector) {.
    importcpp: "ComputeParameters",
    header: "BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc Root*(this: BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox): Standard_Real {.
    noSideEffect, importcpp: "Root",
    header: "BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc Point*(this: BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox): gp_Pnt {.
    noSideEffect, importcpp: "Point",
    header: "BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc IsTangent*(this: var BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox;
               UVap: math_Vector; Param: var TColStd_Array1OfReal;
               BestChoix: var IntImp_ConstIsoparametric): Standard_Boolean {.
    importcpp: "IsTangent",
    header: "BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc Direction*(this: BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox): gp_Dir {.
    noSideEffect, importcpp: "Direction",
    header: "BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc DirectionOnS1*(this: BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox): gp_Dir2d {.
    noSideEffect, importcpp: "DirectionOnS1",
    header: "BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc DirectionOnS2*(this: BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox): gp_Dir2d {.
    noSideEffect, importcpp: "DirectionOnS2",
    header: "BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc AuxillarSurface1*(this: BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox): BRepAdaptor_Surface {.
    noSideEffect, importcpp: "AuxillarSurface1",
    header: "BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc AuxillarSurface2*(this: BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox): BRepAdaptor_Surface {.
    noSideEffect, importcpp: "AuxillarSurface2",
    header: "BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
## !!!Ignored construct:  # ThePSurface BRepAdaptor_Surface [NewLine] # ThePSurface_hxx < BRepAdaptor_Surface . hxx > [NewLine] # ThePSurfaceTool BRepApprox_SurfaceTool [NewLine] # ThePSurfaceTool_hxx < BRepApprox_SurfaceTool . hxx > [NewLine] # IntImp_ZerParFunc BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox [NewLine] # IntImp_ZerParFunc_hxx < BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox . hxx > [NewLine] # < IntImp_ZerParFunc . lxx > [NewLine] # ThePSurface [NewLine] # ThePSurface_hxx [NewLine] # ThePSurfaceTool [NewLine] # ThePSurfaceTool_hxx [NewLine] # IntImp_ZerParFunc [NewLine] # IntImp_ZerParFunc_hxx [NewLine] #  _BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox_HeaderFile [NewLine]
## Error: did not expect <!!!
