##  Created on: 1995-01-27
##  Created by: Jacques GOUSSARD
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

## !!!Ignored construct:  # _GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox_HeaderFile [NewLine] # _GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Standard/Standard_Address.hxx [NewLine] # ../gp/gp_Pnt.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../gp/gp_Vec.hxx [NewLine] # ../IntImp/IntImp_ConstIsoparametric.hxx [NewLine] # ../math/math_FunctionSetWithDerivatives.hxx [NewLine] # ../Standard/Standard_Integer.hxx [NewLine] # ../math/math_Vector.hxx [NewLine] # ../TColStd/TColStd_Array1OfReal.hxx [NewLine] # ../gp/gp_Dir.hxx [NewLine] # ../gp/gp_Dir2d.hxx [NewLine] class StdFail_UndefinedDerivative ;
## Error: did not expect <!!!

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HSurfaceTool"
discard "forward decl of math_Matrix"
type
  GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox* {.importcpp: "GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox", header: "GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx",
      bycopy.} = object of math_FunctionSetWithDerivatives


proc constructGeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox*(
    S1: handle[Adaptor3d_HSurface]; S2: handle[Adaptor3d_HSurface]): GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox {.
    constructor, importcpp: "GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox(@)",
    header: "GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc NbVariables*(this: GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox): Standard_Integer {.
    noSideEffect, importcpp: "NbVariables",
    header: "GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc NbEquations*(this: GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox): Standard_Integer {.
    noSideEffect, importcpp: "NbEquations",
    header: "GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc Value*(this: var GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox;
           X: math_Vector; F: var math_Vector): Standard_Boolean {.importcpp: "Value",
    header: "GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc Derivatives*(this: var GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox;
                 X: math_Vector; D: var math_Matrix): Standard_Boolean {.
    importcpp: "Derivatives",
    header: "GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc Values*(this: var GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox;
            X: math_Vector; F: var math_Vector; D: var math_Matrix): Standard_Boolean {.
    importcpp: "Values",
    header: "GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc ComputeParameters*(this: var GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox;
                       ChoixIso: IntImp_ConstIsoparametric;
                       Param: TColStd_Array1OfReal; UVap: var math_Vector;
                       BornInf: var math_Vector; BornSup: var math_Vector;
                       Tolerance: var math_Vector) {.
    importcpp: "ComputeParameters",
    header: "GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc Root*(this: GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox): Standard_Real {.
    noSideEffect, importcpp: "Root",
    header: "GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc Point*(this: GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox): gp_Pnt {.
    noSideEffect, importcpp: "Point",
    header: "GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc IsTangent*(this: var GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox;
               UVap: math_Vector; Param: var TColStd_Array1OfReal;
               BestChoix: var IntImp_ConstIsoparametric): Standard_Boolean {.
    importcpp: "IsTangent",
    header: "GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc Direction*(this: GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox): gp_Dir {.
    noSideEffect, importcpp: "Direction",
    header: "GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc DirectionOnS1*(this: GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox): gp_Dir2d {.
    noSideEffect, importcpp: "DirectionOnS1",
    header: "GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc DirectionOnS2*(this: GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox): gp_Dir2d {.
    noSideEffect, importcpp: "DirectionOnS2",
    header: "GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc AuxillarSurface1*(this: GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox): handle[
    Adaptor3d_HSurface] {.noSideEffect, importcpp: "AuxillarSurface1", header: "GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc AuxillarSurface2*(this: GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox): handle[
    Adaptor3d_HSurface] {.noSideEffect, importcpp: "AuxillarSurface2", header: "GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
## !!!Ignored construct:  # ThePSurface opencascade :: handle < Adaptor3d_HSurface > [end of template] [NewLine] # ThePSurface_hxx < Adaptor3d_HSurface . hxx > [NewLine] # ThePSurfaceTool Adaptor3d_HSurfaceTool [NewLine] # ThePSurfaceTool_hxx < Adaptor3d_HSurfaceTool . hxx > [NewLine] # IntImp_ZerParFunc GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox [NewLine] # IntImp_ZerParFunc_hxx < GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox . hxx > [NewLine] # < IntImp_ZerParFunc . lxx > [NewLine] # ThePSurface [NewLine] # ThePSurface_hxx [NewLine] # ThePSurfaceTool [NewLine] # ThePSurfaceTool_hxx [NewLine] # IntImp_ZerParFunc [NewLine] # IntImp_ZerParFunc_hxx [NewLine] #  _GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox_HeaderFile [NewLine]
## Error: did not expect <!!!
