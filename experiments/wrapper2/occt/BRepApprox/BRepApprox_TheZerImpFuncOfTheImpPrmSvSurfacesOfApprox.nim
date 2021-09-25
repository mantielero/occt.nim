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

## !!!Ignored construct:  # _BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox_HeaderFile [NewLine] # _BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_Address . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < gp_Pnt . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < gp_Vec . hxx > [NewLine] # < gp_Dir2d . hxx > [NewLine] # < math_FunctionSetWithDerivatives . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < math_Vector . hxx > [NewLine] class StdFail_UndefinedDerivative ;
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
  BRepApproxTheZerImpFuncOfTheImpPrmSvSurfacesOfApprox* {.
      importcpp: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox",
      header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx", bycopy.} = object of MathFunctionSetWithDerivatives


proc constructBRepApproxTheZerImpFuncOfTheImpPrmSvSurfacesOfApprox*(): BRepApproxTheZerImpFuncOfTheImpPrmSvSurfacesOfApprox {.
    constructor,
    importcpp: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox(@)",
    header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx".}
proc constructBRepApproxTheZerImpFuncOfTheImpPrmSvSurfacesOfApprox*(
    ps: BRepAdaptorSurface; `is`: IntSurfQuadric): BRepApproxTheZerImpFuncOfTheImpPrmSvSurfacesOfApprox {.
    constructor,
    importcpp: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox(@)",
    header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx".}
proc constructBRepApproxTheZerImpFuncOfTheImpPrmSvSurfacesOfApprox*(
    `is`: IntSurfQuadric): BRepApproxTheZerImpFuncOfTheImpPrmSvSurfacesOfApprox {.
    constructor,
    importcpp: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox(@)",
    header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx".}
proc set*(this: var BRepApproxTheZerImpFuncOfTheImpPrmSvSurfacesOfApprox;
         ps: BRepAdaptorSurface) {.importcpp: "Set", header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx".}
proc setImplicitSurface*(this: var BRepApproxTheZerImpFuncOfTheImpPrmSvSurfacesOfApprox;
                        `is`: IntSurfQuadric) {.importcpp: "SetImplicitSurface",
    header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx".}
proc set*(this: var BRepApproxTheZerImpFuncOfTheImpPrmSvSurfacesOfApprox;
         tolerance: float) {.importcpp: "Set", header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx".}
proc nbVariables*(this: BRepApproxTheZerImpFuncOfTheImpPrmSvSurfacesOfApprox): int {.
    noSideEffect, importcpp: "NbVariables",
    header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx".}
proc nbEquations*(this: BRepApproxTheZerImpFuncOfTheImpPrmSvSurfacesOfApprox): int {.
    noSideEffect, importcpp: "NbEquations",
    header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx".}
proc value*(this: var BRepApproxTheZerImpFuncOfTheImpPrmSvSurfacesOfApprox;
           x: MathVector; f: var MathVector): bool {.importcpp: "Value",
    header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx".}
proc derivatives*(this: var BRepApproxTheZerImpFuncOfTheImpPrmSvSurfacesOfApprox;
                 x: MathVector; d: var MathMatrix): bool {.importcpp: "Derivatives",
    header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx".}
proc values*(this: var BRepApproxTheZerImpFuncOfTheImpPrmSvSurfacesOfApprox;
            x: MathVector; f: var MathVector; d: var MathMatrix): bool {.
    importcpp: "Values",
    header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx".}
proc root*(this: BRepApproxTheZerImpFuncOfTheImpPrmSvSurfacesOfApprox): float {.
    noSideEffect, importcpp: "Root",
    header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx".}
proc tolerance*(this: BRepApproxTheZerImpFuncOfTheImpPrmSvSurfacesOfApprox): float {.
    noSideEffect, importcpp: "Tolerance",
    header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx".}
proc point*(this: BRepApproxTheZerImpFuncOfTheImpPrmSvSurfacesOfApprox): Pnt {.
    noSideEffect, importcpp: "Point",
    header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx".}
proc isTangent*(this: var BRepApproxTheZerImpFuncOfTheImpPrmSvSurfacesOfApprox): bool {.
    importcpp: "IsTangent",
    header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx".}
proc direction3d*(this: var BRepApproxTheZerImpFuncOfTheImpPrmSvSurfacesOfApprox): Vec {.
    importcpp: "Direction3d",
    header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx".}
proc direction2d*(this: var BRepApproxTheZerImpFuncOfTheImpPrmSvSurfacesOfApprox): Dir2d {.
    importcpp: "Direction2d",
    header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx".}
proc pSurface*(this: BRepApproxTheZerImpFuncOfTheImpPrmSvSurfacesOfApprox): BRepAdaptorSurface {.
    noSideEffect, importcpp: "PSurface",
    header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx".}
proc iSurface*(this: BRepApproxTheZerImpFuncOfTheImpPrmSvSurfacesOfApprox): IntSurfQuadric {.
    noSideEffect, importcpp: "ISurface",
    header: "BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx".}
## !!!Ignored construct:  # ThePSurface BRepAdaptor_Surface [NewLine] # ThePSurface_hxx < BRepAdaptor_Surface . hxx > [NewLine] # ThePSurfaceTool BRepApprox_SurfaceTool [NewLine] # ThePSurfaceTool_hxx < BRepApprox_SurfaceTool . hxx > [NewLine] # TheISurface IntSurf_Quadric [NewLine] # TheISurface_hxx < IntSurf_Quadric . hxx > [NewLine] # TheISurfaceTool IntSurf_QuadricTool [NewLine] # TheISurfaceTool_hxx < IntSurf_QuadricTool . hxx > [NewLine] # IntImp_ZerImpFunc BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox [NewLine] # IntImp_ZerImpFunc_hxx < BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox . hxx > [NewLine] # < IntImp_ZerImpFunc . lxx > [NewLine] # ThePSurface [NewLine] # ThePSurface_hxx [NewLine] # ThePSurfaceTool [NewLine] # ThePSurfaceTool_hxx [NewLine] # TheISurface [NewLine] # TheISurface_hxx [NewLine] # TheISurfaceTool [NewLine] # TheISurfaceTool_hxx [NewLine] # IntImp_ZerImpFunc [NewLine] # IntImp_ZerImpFunc_hxx [NewLine] #  _BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox_HeaderFile
## Error: did not expect <!!!

