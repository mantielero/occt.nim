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

## !!!Ignored construct:  # _BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox_HeaderFile [NewLine] # _BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Standard/Standard_Address.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../gp/gp_Pnt.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../gp/gp_Vec.hxx [NewLine] # ../gp/gp_Dir2d.hxx [NewLine] # ../math/math_FunctionSetWithDerivatives.hxx [NewLine] # ../Standard/Standard_Integer.hxx [NewLine] # ../math/math_Vector.hxx [NewLine] class StdFail_UndefinedDerivative ;
## Error: did not expect <!!!

discard "forward decl of BRepAdaptor_Surface"
discard "forward decl of BRepApprox_SurfaceTool"
discard "forward decl of IntSurf_Quadric"
discard "forward decl of IntSurf_QuadricTool"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Dir2d"
type
  BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox* {.
      importcpp: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox",
      header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx", bycopy.} = object of math_FunctionSetWithDerivatives


proc constructBRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox*(): BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox {.
    constructor,
    importcpp: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox(@)",
    header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx".}
proc constructBRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox*(
    PS: BRepAdaptor_Surface; IS: IntSurf_Quadric): BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox {.
    constructor,
    importcpp: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox(@)",
    header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx".}
proc constructBRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox*(
    IS: IntSurf_Quadric): BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox {.
    constructor,
    importcpp: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox(@)",
    header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx".}
proc Set*(this: var BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox;
         PS: BRepAdaptor_Surface) {.importcpp: "Set", header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx".}
proc SetImplicitSurface*(this: var BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox;
                        IS: IntSurf_Quadric) {.importcpp: "SetImplicitSurface",
    header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx".}
proc Set*(this: var BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox;
         Tolerance: Standard_Real) {.importcpp: "Set", header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx".}
proc NbVariables*(this: BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox): Standard_Integer {.
    noSideEffect, importcpp: "NbVariables",
    header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx".}
proc NbEquations*(this: BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox): Standard_Integer {.
    noSideEffect, importcpp: "NbEquations",
    header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx".}
proc Value*(this: var BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox;
           X: math_Vector; F: var math_Vector): Standard_Boolean {.importcpp: "Value",
    header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx".}
proc Derivatives*(this: var BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox;
                 X: math_Vector; D: var math_Matrix): Standard_Boolean {.
    importcpp: "Derivatives",
    header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx".}
proc Values*(this: var BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox;
            X: math_Vector; F: var math_Vector; D: var math_Matrix): Standard_Boolean {.
    importcpp: "Values",
    header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx".}
proc Root*(this: BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox): Standard_Real {.
    noSideEffect, importcpp: "Root",
    header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx".}
proc Tolerance*(this: BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox): Standard_Real {.
    noSideEffect, importcpp: "Tolerance",
    header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx".}
proc Point*(this: BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox): gp_Pnt {.
    noSideEffect, importcpp: "Point",
    header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx".}
proc IsTangent*(this: var BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox): Standard_Boolean {.
    importcpp: "IsTangent",
    header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx".}
proc Direction3d*(this: var BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox): gp_Vec {.
    importcpp: "Direction3d",
    header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx".}
proc Direction2d*(this: var BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox): gp_Dir2d {.
    importcpp: "Direction2d",
    header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx".}
proc PSurface*(this: BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox): BRepAdaptor_Surface {.
    noSideEffect, importcpp: "PSurface",
    header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx".}
proc ISurface*(this: BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox): IntSurf_Quadric {.
    noSideEffect, importcpp: "ISurface",
    header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx".}
## !!!Ignored construct:  # ThePSurface BRepAdaptor_Surface [NewLine] # ThePSurface_hxx < BRepAdaptor_Surface . hxx > [NewLine] # ThePSurfaceTool BRepApprox_SurfaceTool [NewLine] # ThePSurfaceTool_hxx < BRepApprox_SurfaceTool . hxx > [NewLine] # TheISurface IntSurf_Quadric [NewLine] # TheISurface_hxx < IntSurf_Quadric . hxx > [NewLine] # TheISurfaceTool IntSurf_QuadricTool [NewLine] # TheISurfaceTool_hxx < IntSurf_QuadricTool . hxx > [NewLine] # IntImp_ZerImpFunc BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox [NewLine] # IntImp_ZerImpFunc_hxx < BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox . hxx > [NewLine] # < IntImp_ZerImpFunc . lxx > [NewLine] # ThePSurface [NewLine] # ThePSurface_hxx [NewLine] # ThePSurfaceTool [NewLine] # ThePSurfaceTool_hxx [NewLine] # TheISurface [NewLine] # TheISurface_hxx [NewLine] # TheISurfaceTool [NewLine] # TheISurfaceTool_hxx [NewLine] # IntImp_ZerImpFunc [NewLine] # IntImp_ZerImpFunc_hxx [NewLine] #  _BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox_HeaderFile [NewLine]
## Error: did not expect <!!!
