##  Created on: 1992-05-06
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1992-1999 Matra Datavision
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

## !!!Ignored construct:  # _IntPatch_TheSurfFunction_HeaderFile [NewLine] # _IntPatch_TheSurfFunction_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_Address . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < gp_Pnt . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < gp_Vec . hxx > [NewLine] # < gp_Dir2d . hxx > [NewLine] # < math_FunctionSetWithDerivatives . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < math_Vector . hxx > [NewLine] class StdFail_UndefinedDerivative ;
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
  IntPatchTheSurfFunction* {.importcpp: "IntPatch_TheSurfFunction",
                            header: "IntPatch_TheSurfFunction.hxx", bycopy.} = object of MathFunctionSetWithDerivatives
    adaptor3dHSurface* {.importc: "Adaptor3d_HSurface".}: Handle


proc constructIntPatchTheSurfFunction*(): IntPatchTheSurfFunction {.constructor,
    importcpp: "IntPatch_TheSurfFunction(@)",
    header: "IntPatch_TheSurfFunction.hxx".}
## !!!Ignored construct:  IntPatch_TheSurfFunction ( const Handle ( Adaptor3d_HSurface ) & PS , const IntSurf_Quadric & IS ) ;
## Error: token expected: ) but got: &!!!

proc constructIntPatchTheSurfFunction*(`is`: IntSurfQuadric): IntPatchTheSurfFunction {.
    constructor, importcpp: "IntPatch_TheSurfFunction(@)",
    header: "IntPatch_TheSurfFunction.hxx".}
## !!!Ignored construct:  void Set ( const Handle ( Adaptor3d_HSurface ) & PS ) ;
## Error: token expected: ) but got: &!!!

proc setImplicitSurface*(this: var IntPatchTheSurfFunction; `is`: IntSurfQuadric) {.
    importcpp: "SetImplicitSurface", header: "IntPatch_TheSurfFunction.hxx".}
proc set*(this: var IntPatchTheSurfFunction; tolerance: float) {.importcpp: "Set",
    header: "IntPatch_TheSurfFunction.hxx".}
proc nbVariables*(this: IntPatchTheSurfFunction): int {.noSideEffect,
    importcpp: "NbVariables", header: "IntPatch_TheSurfFunction.hxx".}
proc nbEquations*(this: IntPatchTheSurfFunction): int {.noSideEffect,
    importcpp: "NbEquations", header: "IntPatch_TheSurfFunction.hxx".}
proc value*(this: var IntPatchTheSurfFunction; x: MathVector; f: var MathVector): bool {.
    importcpp: "Value", header: "IntPatch_TheSurfFunction.hxx".}
proc derivatives*(this: var IntPatchTheSurfFunction; x: MathVector; d: var MathMatrix): bool {.
    importcpp: "Derivatives", header: "IntPatch_TheSurfFunction.hxx".}
proc values*(this: var IntPatchTheSurfFunction; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.importcpp: "Values",
                                   header: "IntPatch_TheSurfFunction.hxx".}
proc root*(this: IntPatchTheSurfFunction): float {.noSideEffect, importcpp: "Root",
    header: "IntPatch_TheSurfFunction.hxx".}
proc tolerance*(this: IntPatchTheSurfFunction): float {.noSideEffect,
    importcpp: "Tolerance", header: "IntPatch_TheSurfFunction.hxx".}
proc point*(this: IntPatchTheSurfFunction): Pnt {.noSideEffect, importcpp: "Point",
    header: "IntPatch_TheSurfFunction.hxx".}
proc isTangent*(this: var IntPatchTheSurfFunction): bool {.importcpp: "IsTangent",
    header: "IntPatch_TheSurfFunction.hxx".}
proc direction3d*(this: var IntPatchTheSurfFunction): Vec {.importcpp: "Direction3d",
    header: "IntPatch_TheSurfFunction.hxx".}
proc direction2d*(this: var IntPatchTheSurfFunction): Dir2d {.
    importcpp: "Direction2d", header: "IntPatch_TheSurfFunction.hxx".}
## !!!Ignored construct:  & PSurface ( ) const ;
## Error: identifier expected, but got: &!!!

proc iSurface*(this: IntPatchTheSurfFunction): IntSurfQuadric {.noSideEffect,
    importcpp: "ISurface", header: "IntPatch_TheSurfFunction.hxx".}
## !!!Ignored construct:  # ThePSurface Handle ( Adaptor3d_HSurface ) [NewLine] # ThePSurface_hxx < Adaptor3d_HSurface . hxx > [NewLine] # ThePSurfaceTool Adaptor3d_HSurfaceTool [NewLine] # ThePSurfaceTool_hxx < Adaptor3d_HSurfaceTool . hxx > [NewLine] # TheISurface IntSurf_Quadric [NewLine] # TheISurface_hxx < IntSurf_Quadric . hxx > [NewLine] # TheISurfaceTool IntSurf_QuadricTool [NewLine] # TheISurfaceTool_hxx < IntSurf_QuadricTool . hxx > [NewLine] # IntImp_ZerImpFunc IntPatch_TheSurfFunction [NewLine] # IntImp_ZerImpFunc_hxx < IntPatch_TheSurfFunction . hxx > [NewLine] # < IntImp_ZerImpFunc . lxx > [NewLine] # ThePSurface [NewLine] # ThePSurface_hxx [NewLine] # ThePSurfaceTool [NewLine] # ThePSurfaceTool_hxx [NewLine] # TheISurface [NewLine] # TheISurface_hxx [NewLine] # TheISurfaceTool [NewLine] # TheISurfaceTool_hxx [NewLine] # IntImp_ZerImpFunc [NewLine] # IntImp_ZerImpFunc_hxx [NewLine] #  _IntPatch_TheSurfFunction_HeaderFile
## Error: did not expect <!!!














































