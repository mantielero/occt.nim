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

## !!!Ignored construct:  # _GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox_HeaderFile [NewLine] # _GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_Address . hxx > [NewLine] # < gp_Pnt . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < gp_Vec . hxx > [NewLine] # < IntImp_ConstIsoparametric . hxx > [NewLine] # < math_FunctionSetWithDerivatives . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < math_Vector . hxx > [NewLine] # < TColStd_Array1OfReal . hxx > [NewLine] # < gp_Dir . hxx > [NewLine] # < gp_Dir2d . hxx > [NewLine] class StdFail_UndefinedDerivative ;
## Error: did not expect <!!!

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HSurfaceTool"
discard "forward decl of math_Matrix"
type
  GeomIntTheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox* {.importcpp: "GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox", header: "GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx",
      bycopy.} = object of MathFunctionSetWithDerivatives
    adaptor3dHSurface* {.importc: "Adaptor3d_HSurface".}: Handle
    adaptor3dHSurface* {.importc: "Adaptor3d_HSurface".}: Handle


## !!!Ignored construct:  public : GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox ( const Handle ( Adaptor3d_HSurface ) & S1 , const Handle ( Adaptor3d_HSurface ) & S2 ) ;
## Error: token expected: ) but got: &!!!

proc nbVariables*(this: GeomIntTheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox): int {.
    noSideEffect, importcpp: "NbVariables",
    header: "GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc nbEquations*(this: GeomIntTheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox): int {.
    noSideEffect, importcpp: "NbEquations",
    header: "GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc value*(this: var GeomIntTheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox;
           x: MathVector; f: var MathVector): bool {.importcpp: "Value",
    header: "GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc derivatives*(this: var GeomIntTheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox;
                 x: MathVector; d: var MathMatrix): bool {.importcpp: "Derivatives",
    header: "GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc values*(this: var GeomIntTheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox;
            x: MathVector; f: var MathVector; d: var MathMatrix): bool {.
    importcpp: "Values",
    header: "GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc computeParameters*(this: var GeomIntTheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox;
                       choixIso: IntImpConstIsoparametric;
                       param: TColStdArray1OfReal; uVap: var MathVector;
                       bornInf: var MathVector; bornSup: var MathVector;
                       tolerance: var MathVector) {.importcpp: "ComputeParameters",
    header: "GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc root*(this: GeomIntTheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox): float {.
    noSideEffect, importcpp: "Root",
    header: "GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc point*(this: GeomIntTheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox): Pnt {.
    noSideEffect, importcpp: "Point",
    header: "GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc isTangent*(this: var GeomIntTheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox;
               uVap: MathVector; param: var TColStdArray1OfReal;
               bestChoix: var IntImpConstIsoparametric): bool {.
    importcpp: "IsTangent",
    header: "GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc direction*(this: GeomIntTheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox): Dir {.
    noSideEffect, importcpp: "Direction",
    header: "GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc directionOnS1*(this: GeomIntTheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox): Dir2d {.
    noSideEffect, importcpp: "DirectionOnS1",
    header: "GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc directionOnS2*(this: GeomIntTheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox): Dir2d {.
    noSideEffect, importcpp: "DirectionOnS2",
    header: "GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
## !!!Ignored construct:  & AuxillarSurface1 ( ) const ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  & AuxillarSurface2 ( ) const ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  # ThePSurface Handle ( Adaptor3d_HSurface ) [NewLine] # ThePSurface_hxx < Adaptor3d_HSurface . hxx > [NewLine] # ThePSurfaceTool Adaptor3d_HSurfaceTool [NewLine] # ThePSurfaceTool_hxx < Adaptor3d_HSurfaceTool . hxx > [NewLine] # IntImp_ZerParFunc GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox [NewLine] # IntImp_ZerParFunc_hxx < GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox . hxx > [NewLine] # < IntImp_ZerParFunc . lxx > [NewLine] # ThePSurface [NewLine] # ThePSurface_hxx [NewLine] # ThePSurfaceTool [NewLine] # ThePSurfaceTool_hxx [NewLine] # IntImp_ZerParFunc [NewLine] # IntImp_ZerParFunc_hxx [NewLine] #  _GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox_HeaderFile
## Error: did not expect <!!!














































