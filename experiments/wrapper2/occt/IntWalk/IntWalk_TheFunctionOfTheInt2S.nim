##  Created on: 1991-03-28
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

## !!!Ignored construct:  # _IntWalk_TheFunctionOfTheInt2S_HeaderFile [NewLine] # _IntWalk_TheFunctionOfTheInt2S_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Standard/Standard_Address.hxx [NewLine] # ../gp/gp_Pnt.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../gp/gp_Vec.hxx [NewLine] # ../IntImp/IntImp_ConstIsoparametric.hxx [NewLine] # ../math/math_FunctionSetWithDerivatives.hxx [NewLine] # ../Standard/Standard_Integer.hxx [NewLine] # ../math/math_Vector.hxx [NewLine] # ../TColStd/TColStd_Array1OfReal.hxx [NewLine] # ../gp/gp_Dir.hxx [NewLine] # ../gp/gp_Dir2d.hxx [NewLine] class StdFail_UndefinedDerivative ;
## Error: did not expect <!!!

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HSurfaceTool"
discard "forward decl of math_Matrix"
type
  IntWalk_TheFunctionOfTheInt2S* {.importcpp: "IntWalk_TheFunctionOfTheInt2S",
                                  header: "IntWalk_TheFunctionOfTheInt2S.hxx",
                                  bycopy.} = object of math_FunctionSetWithDerivatives


proc constructIntWalk_TheFunctionOfTheInt2S*(S1: handle[Adaptor3d_HSurface];
    S2: handle[Adaptor3d_HSurface]): IntWalk_TheFunctionOfTheInt2S {.constructor,
    importcpp: "IntWalk_TheFunctionOfTheInt2S(@)",
    header: "IntWalk_TheFunctionOfTheInt2S.hxx".}
proc NbVariables*(this: IntWalk_TheFunctionOfTheInt2S): Standard_Integer {.
    noSideEffect, importcpp: "NbVariables",
    header: "IntWalk_TheFunctionOfTheInt2S.hxx".}
proc NbEquations*(this: IntWalk_TheFunctionOfTheInt2S): Standard_Integer {.
    noSideEffect, importcpp: "NbEquations",
    header: "IntWalk_TheFunctionOfTheInt2S.hxx".}
proc Value*(this: var IntWalk_TheFunctionOfTheInt2S; X: math_Vector;
           F: var math_Vector): Standard_Boolean {.importcpp: "Value",
    header: "IntWalk_TheFunctionOfTheInt2S.hxx".}
proc Derivatives*(this: var IntWalk_TheFunctionOfTheInt2S; X: math_Vector;
                 D: var math_Matrix): Standard_Boolean {.importcpp: "Derivatives",
    header: "IntWalk_TheFunctionOfTheInt2S.hxx".}
proc Values*(this: var IntWalk_TheFunctionOfTheInt2S; X: math_Vector;
            F: var math_Vector; D: var math_Matrix): Standard_Boolean {.
    importcpp: "Values", header: "IntWalk_TheFunctionOfTheInt2S.hxx".}
proc ComputeParameters*(this: var IntWalk_TheFunctionOfTheInt2S;
                       ChoixIso: IntImp_ConstIsoparametric;
                       Param: TColStd_Array1OfReal; UVap: var math_Vector;
                       BornInf: var math_Vector; BornSup: var math_Vector;
                       Tolerance: var math_Vector) {.
    importcpp: "ComputeParameters", header: "IntWalk_TheFunctionOfTheInt2S.hxx".}
proc Root*(this: IntWalk_TheFunctionOfTheInt2S): Standard_Real {.noSideEffect,
    importcpp: "Root", header: "IntWalk_TheFunctionOfTheInt2S.hxx".}
proc Point*(this: IntWalk_TheFunctionOfTheInt2S): gp_Pnt {.noSideEffect,
    importcpp: "Point", header: "IntWalk_TheFunctionOfTheInt2S.hxx".}
proc IsTangent*(this: var IntWalk_TheFunctionOfTheInt2S; UVap: math_Vector;
               Param: var TColStd_Array1OfReal;
               BestChoix: var IntImp_ConstIsoparametric): Standard_Boolean {.
    importcpp: "IsTangent", header: "IntWalk_TheFunctionOfTheInt2S.hxx".}
proc Direction*(this: IntWalk_TheFunctionOfTheInt2S): gp_Dir {.noSideEffect,
    importcpp: "Direction", header: "IntWalk_TheFunctionOfTheInt2S.hxx".}
proc DirectionOnS1*(this: IntWalk_TheFunctionOfTheInt2S): gp_Dir2d {.noSideEffect,
    importcpp: "DirectionOnS1", header: "IntWalk_TheFunctionOfTheInt2S.hxx".}
proc DirectionOnS2*(this: IntWalk_TheFunctionOfTheInt2S): gp_Dir2d {.noSideEffect,
    importcpp: "DirectionOnS2", header: "IntWalk_TheFunctionOfTheInt2S.hxx".}
proc AuxillarSurface1*(this: IntWalk_TheFunctionOfTheInt2S): handle[
    Adaptor3d_HSurface] {.noSideEffect, importcpp: "AuxillarSurface1",
                         header: "IntWalk_TheFunctionOfTheInt2S.hxx".}
proc AuxillarSurface2*(this: IntWalk_TheFunctionOfTheInt2S): handle[
    Adaptor3d_HSurface] {.noSideEffect, importcpp: "AuxillarSurface2",
                         header: "IntWalk_TheFunctionOfTheInt2S.hxx".}
## !!!Ignored construct:  # ThePSurface opencascade :: handle < Adaptor3d_HSurface > [end of template] [NewLine] # ThePSurface_hxx < Adaptor3d_HSurface . hxx > [NewLine] # ThePSurfaceTool Adaptor3d_HSurfaceTool [NewLine] # ThePSurfaceTool_hxx < Adaptor3d_HSurfaceTool . hxx > [NewLine] # IntImp_ZerParFunc IntWalk_TheFunctionOfTheInt2S [NewLine] # IntImp_ZerParFunc_hxx < IntWalk_TheFunctionOfTheInt2S . hxx > [NewLine] # < IntImp_ZerParFunc . lxx > [NewLine] # ThePSurface [NewLine] # ThePSurface_hxx [NewLine] # ThePSurfaceTool [NewLine] # ThePSurfaceTool_hxx [NewLine] # IntImp_ZerParFunc [NewLine] # IntImp_ZerParFunc_hxx [NewLine] #  _IntWalk_TheFunctionOfTheInt2S_HeaderFile [NewLine]
## Error: did not expect <!!!
