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

## !!!Ignored construct:  # _GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox_HeaderFile [NewLine] # _GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_Address . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < gp_Pnt . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < gp_Vec . hxx > [NewLine] # < gp_Dir2d . hxx > [NewLine] # < math_FunctionSetWithDerivatives . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < math_Vector . hxx > [NewLine] class StdFail_UndefinedDerivative ;
## Error: did not expect <!!!

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HSurfaceTool"
discard "forward decl of IntSurf_Quadric"
discard "forward decl of IntSurf_QuadricTool"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Dir2d"
type
  GeomIntTheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox* {.
      importcpp: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox",
      header: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx", bycopy.} = object of MathFunctionSetWithDerivatives
    adaptor3dHSurface* {.importc: "Adaptor3d_HSurface".}: Handle


proc constructGeomIntTheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox*(): GeomIntTheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox {.
    constructor,
    importcpp: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox(@)",
    header: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx".}
## !!!Ignored construct:  GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox ( const Handle ( Adaptor3d_HSurface ) & PS , const IntSurf_Quadric & IS ) ;
## Error: token expected: ) but got: &!!!

proc constructGeomIntTheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox*(
    `is`: IntSurfQuadric): GeomIntTheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox {.
    constructor,
    importcpp: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox(@)",
    header: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx".}
## !!!Ignored construct:  void Set ( const Handle ( Adaptor3d_HSurface ) & PS ) ;
## Error: token expected: ) but got: &!!!

proc setImplicitSurface*(this: var GeomIntTheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox;
                        `is`: IntSurfQuadric) {.importcpp: "SetImplicitSurface",
    header: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx".}
proc set*(this: var GeomIntTheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox;
         tolerance: float) {.importcpp: "Set", header: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx".}
proc nbVariables*(this: GeomIntTheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox): int {.
    noSideEffect, importcpp: "NbVariables",
    header: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx".}
proc nbEquations*(this: GeomIntTheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox): int {.
    noSideEffect, importcpp: "NbEquations",
    header: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx".}
proc value*(this: var GeomIntTheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox;
           x: MathVector; f: var MathVector): bool {.importcpp: "Value",
    header: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx".}
proc derivatives*(this: var GeomIntTheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox;
                 x: MathVector; d: var MathMatrix): bool {.importcpp: "Derivatives",
    header: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx".}
proc values*(this: var GeomIntTheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox;
            x: MathVector; f: var MathVector; d: var MathMatrix): bool {.
    importcpp: "Values",
    header: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx".}
proc root*(this: GeomIntTheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox): float {.
    noSideEffect, importcpp: "Root",
    header: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx".}
proc tolerance*(this: GeomIntTheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox): float {.
    noSideEffect, importcpp: "Tolerance",
    header: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx".}
proc point*(this: GeomIntTheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox): Pnt {.
    noSideEffect, importcpp: "Point",
    header: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx".}
proc isTangent*(this: var GeomIntTheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox): bool {.
    importcpp: "IsTangent",
    header: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx".}
proc direction3d*(this: var GeomIntTheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox): Vec {.
    importcpp: "Direction3d",
    header: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx".}
proc direction2d*(this: var GeomIntTheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox): Dir2d {.
    importcpp: "Direction2d",
    header: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx".}
## !!!Ignored construct:  & PSurface ( ) const ;
## Error: identifier expected, but got: &!!!

proc iSurface*(this: GeomIntTheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox): IntSurfQuadric {.
    noSideEffect, importcpp: "ISurface",
    header: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx".}
## !!!Ignored construct:  # ThePSurface Handle ( Adaptor3d_HSurface ) [NewLine] # ThePSurface_hxx < Adaptor3d_HSurface . hxx > [NewLine] # ThePSurfaceTool Adaptor3d_HSurfaceTool [NewLine] # ThePSurfaceTool_hxx < Adaptor3d_HSurfaceTool . hxx > [NewLine] # TheISurface IntSurf_Quadric [NewLine] # TheISurface_hxx < IntSurf_Quadric . hxx > [NewLine] # TheISurfaceTool IntSurf_QuadricTool [NewLine] # TheISurfaceTool_hxx < IntSurf_QuadricTool . hxx > [NewLine] # IntImp_ZerImpFunc GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox [NewLine] # IntImp_ZerImpFunc_hxx < GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox . hxx > [NewLine] # < IntImp_ZerImpFunc . lxx > [NewLine] # ThePSurface [NewLine] # ThePSurface_hxx [NewLine] # ThePSurfaceTool [NewLine] # ThePSurfaceTool_hxx [NewLine] # TheISurface [NewLine] # TheISurface_hxx [NewLine] # TheISurfaceTool [NewLine] # TheISurfaceTool_hxx [NewLine] # IntImp_ZerImpFunc [NewLine] # IntImp_ZerImpFunc_hxx [NewLine] #  _GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox_HeaderFile
## Error: did not expect <!!!














































